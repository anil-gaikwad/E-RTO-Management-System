using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_Default3 : System.Web.UI.Page
{
    ConnectionClass con = new ConnectionClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        try
        {
           
            int n = con.ExceuteCommand("insert into duplicate values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedValue + "')");
            if (n > 0)
            {

                Submit.OnClientClick = "javascript:aleart('Successfully Submitted')";
                Response.Redirect("~/RTOTest/Usercontent.aspx");
            }
            else
            {
                Submit.OnClientClick = "javascript:aleart('Sorry Something is Wrong')";
            }
            }
        catch
        {
            Submit.OnClientClick = "javascript:aleart('Sorry Something is Wrong')";
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
        Reset.OnClientClick = "javascript:alert('reset Successfully')";
    }
}