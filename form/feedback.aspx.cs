using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    ConnectionClass con=new ConnectionClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
                {
        /*try{*/
        int n = con.ExceuteCommand("insert into feedback values('"+TextBox1.Text+"',"+TextBox2.Text+",'"+TextBox3.Text+"','"+TextBox4.Text+"')");
        if (n > 0)
        {
                           Response.Write("<script>alert(' FEEDBACK   IS RECORDED SUCCEFULY...')</script>");
   
          //  Response.Redirect("~/content.aspx");

        }
        else
            Response.Write("<script>alert(' FEEDBACK   IS NOT RECORDED SUCCEFULY...')</script>");
   


        /*}
        catch
        {
            Response.Write("<script>alert(' FEEDBACK   IS nots RECORDED SUCCEFULY...')</script>");

        }*/
            }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        Response.Write("<script>alert('  SUCCEFULY RESET...')</script>");
   

    }
   
}
