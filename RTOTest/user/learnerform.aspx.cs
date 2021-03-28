using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class learnerform : System.Web.UI.Page
{
    ConnectionClass con = new ConnectionClass();
   
    string temp;
    string temp1;
    string photo;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Document1/" + FileUpload1.FileName));
            temp = FileUpload1.FileName + "";
        }



        if (FileUpload2.HasFile)
        {
            FileUpload2.SaveAs(Server.MapPath("~/Document2/" + FileUpload2.FileName));
            temp1 = FileUpload2.FileName + "";
        }

        if (FileUpload3.HasFile)
        {
            FileUpload3.SaveAs(Server.MapPath("~/photo/" + FileUpload3.FileName));
            photo = FileUpload3.FileName + "";
        }



        int i = con.ExceuteCommand("insert into learner values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList1.SelectedValue + "'," + TextBox5.Text + "," + TextBox6.Text + ",'" + DropDownList2.SelectedValue + "','" + temp + "','" + temp1 + "','" + photo + "','" + DropDownList3.Text + "','" + TextBox7.Text + "'," + TextBox8.Text + ",'" + TextBox9.Text + "')");


        if (i > 0)
        {
            Response.Write("<script>alert('Successfully Submitted')</script>");
            Response.Redirect("~/content.aspx");
        }

        else
        {
            Response.Write("<script>alert('Something is Wrong')</script>");
        }
        
     
    }

    protected void Reset_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        DropDownList1.SelectedValue = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        DropDownList2.SelectedValue = "";
        temp = "";
        temp1 = "";
        photo = "";
        DropDownList3.SelectedValue = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        //Response.Write("<script>alert('Reset Successfully');</script>");
    }
}

   