using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class form_forgotpassword : System.Web.UI.Page
{
    ConnectionClass con = new ConnectionClass();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        System.Data.DataTable n;
        try
        {
            
            n = con.connect("update login  set  password='" + TextBox2.Text + "' where Uname='" + TextBox1.Text + "'", "tab");
            Response.Write("<script>alert('Password Reset Succesfully..');</script>");
            Response.Redirect("form/login.aspx");
        }
        catch
        {
            Response.Write("<script>alert('Sorry something is Wrong............');</script>");

        }

    }
}