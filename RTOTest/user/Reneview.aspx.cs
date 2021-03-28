using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_Reneview : System.Web.UI.Page
{
    ConnectionClass con = new ConnectionClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        try
        {
           
            int n = con.ExceuteCommand("insert into renewall values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedValue + "')");
            if (n > 0)
            {
               // Response.Write("<script>alert('Successfully Submitted');</script>");
                Response.Redirect("~/RTOTest/Usercontent.aspx");
            }
            else
            {
                //Response.Write("<script>alert('Sorry Something is Wrong');</script>");
            }
        }
        catch
        {
            //Response.Write("<script>alert('Sorry data is wrong try agin.............');</script>");
        }
    }
    protected void Reset_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        DropDownList1.SelectedValue = "";
        Response.Write("<script>alert('Reset Successfully');</script>");
    }
}