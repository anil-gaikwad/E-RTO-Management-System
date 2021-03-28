using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
public partial class login_form_login : System.Web.UI.Page
{
    ConnectionClass con = new ConnectionClass();
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void SignIn_Click(object sender, EventArgs e)
    {
        String s1 = TextBox1.Text;
        String s2 = TextBox2.Text;
        if (s1 == "admin" && s2 == "admin@123")
        {
            Response.Write("<script>alert('Admin Log In Successfully')</script>");
            Response.Redirect("~/admin1/Admincontent.aspx");
        }
        else
        {
            System.Data.DataTable n;
            n = con.connect("select count (*) from login where uname='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", "tab");
            if (n.Rows.Count > 0)
            {
                if (Convert.ToInt32(n.Rows[0][0]) == 0)
                {
                    Response.Write("<script>alert('Wrong User Name & Password')</script>");
                }
                else if (Convert.ToInt32(n.Rows[0][0]) == 1)
                {
                    Response.Write("<script>alert('Log In Successfully')</script>");

                    Response.Redirect("~/RTOTest/Default.aspx");
                }
                else if (Convert.ToInt32(n.Rows[0][0]) == 2)
                {
                   Response.Write("<script>alert('Wrong Password & User Name')</script>");
                }
            }
        }
    }
    }
