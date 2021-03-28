using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin1_feedback : System.Web.UI.Page
{
    string sql;
    ConnectionClass con = new ConnectionClass();
    protected void Page_Load(object sender, EventArgs e)
    {

        sql = "select * from feedback ";
        con.dt = con.connect(sql, "sql1");
        GridView2.DataSource = con.dt;
        GridView2.DataBind();


    }
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string fld = DropDownList1.SelectedValue.ToString();
        string txt = TextBox1.Text;
        sql = "select * from  feedback where " + fld + " like '" + txt + "%' ";
        DataTable dt = con.connect(sql, " conn");
        GridView2.DataSource = dt;
        GridView2.DataBind();
   
    }
}