using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class admin1_ShowTest : System.Web.UI.Page
{
    string sql;
    ConnectionClass con = new ConnectionClass();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
        protected void Button1_Click1(object sender, EventArgs e)
    {
        sql = "select * from " + DropDownList1.SelectedValue;
        DataTable dt = con.connect(sql, " mahesh");
        GridView2.DataSource = dt;
        GridView2.DataBind();
    
    }
}