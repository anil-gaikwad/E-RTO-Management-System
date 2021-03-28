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
using System.Windows.Forms;

public partial class userregister : System.Web.UI.Page
{
   ConnectionClass con = new ConnectionClass();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

     
    protected void SignUp_Click(object sender, EventArgs e)
    {
       
            int n = con.ExceuteCommand("insert into newuser values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + DropDownList1.SelectedValue + "'," + TextBox6.Text + ",'" + TextBox7.Text + "')");
            if (n > 0)
            {
                int p = con.ExceuteCommand("insert into login values('" + TextBox1.Text + "','" + TextBox2.Text + "')");
                Response.Write("<script>alert('Successfully Resgister')</script>");
                Response.Redirect("~/form/signin.aspx");
               
            }
            else
            {
                Response.Write("<script>alert('Sorry Something is Wrong')</script>");
                
            }

            
        }


    protected void Cancel_Click(object sender, EventArgs e)
    {
        
        Response.Redirect("~/signin.aspx");
    }
}
   

