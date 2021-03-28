using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin1_NewAdmin : System.Web.UI.Page
{
    ConnectionClass con = new ConnectionClass();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void SignUp_Click(object sender, EventArgs e)
    {
        try
        {
          
            int n = con.ExceuteCommand("insert into newadmin  values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox6.Text + "','" + TextBox7.Text + "')");
            if (n > 0)
            {
                int p = con.ExceuteCommand("insert into login values('"+TextBox1.Text+"','"+TextBox2.Text+"')");
                Response.Write("<script>alert('Successfully Resgister');</script>");
                Response.Redirect("~/admin1/Admincontent.aspx");
            }
            else
            {
                Response.Write("<script>alert('Sorry Something is Wrong');</script>");
            }
           
            Response.Write("<script>alert('LOGIN ID PASSWORD IS REMEMBER PLEASE');</script>");

        }
        catch { Response.Write("<script>alert('Sorry Registerton failed..........');</script>"); }
    }
    protected void Cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/admin1/NewAdmin.aspx");
    }
   
}

