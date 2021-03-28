using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RTOTEST : System.Web.UI.Page
{
    ConnectionClass con = new ConnectionClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int n = con.ExceuteCommand("insert into test4 values("+TextBox1.Text+",'"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"')");

        if (n > 0)
         Label1.Text = "RECORD INSERTED SUCCESSFULLY....."; 
    else
            Label1.Text = "RECORD INSERTED SUCCESSFULY....."; 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }
}