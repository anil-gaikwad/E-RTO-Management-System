using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class ShowAdmin : System.Web.UI.Page
{
    string sql;
    ConnectionClass con = new ConnectionClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }

    }
    protected void BindGrid()
    {

        GridView1.DataSource = con.connect("select * from newadmin", "cont");
        GridView1.DataBind();

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        sql = "select * from newadmin";
        DataTable dt = con.connect(sql, " mahesh");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lcid = (Label)GridView1.Rows[e.RowIndex].FindControl("uname");
        String sql = "delete from newadmin where uname=" + lcid.Text;
        if (con.ExceuteCommand(sql) >= 1)
        {
            Response.Redirect("<script>alert(' RECORD DELETED SUCCESSFULLY............');</script>");
            GridView1.EditIndex = -1;
            BindGrid();
        }
    }
    protected void GridView1_PageIndexChanging(Object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();
    }


    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox uuname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tuname");
        TextBox upassword = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tpassword");
        TextBox urepassword = (TextBox)GridView1.Rows[e.RowIndex].FindControl("trepassword");
        TextBox ufname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tfname");
        TextBox ulname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tlname");
        TextBox ugender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tgender");
        TextBox umob = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tmob");
        TextBox uemail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("temail");

        string sql = "update newadmin set uname='" + uuname.Text + "',password='" + upassword.Text + "',repassword='" + urepassword.Text + "',fname='" + ufname.Text + "',lname='" + ulname.Text + "',gender='" + ugender.Text + "',mob='" + umob.Text + "',email='" + uemail.Text + "' where  uname='" + uuname.Text+"'";
        if (con.ExceuteCommand(sql) >= 1)
        {
            Response.Write("<script>alert('CURRENT RECORD UPDATED SUCCESSFULLY............');</script>");
            GridView1.EditIndex = -1;
            BindGrid();
        }


    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("luname");
        string sql = "delete from newadmin where uname='" + lbl.Text+"'";
        con.ExceuteCommand(sql);
        {
            Response.Write("<sript>alert('CURRENT RECORD delted successfully...');</script>");
            GridView1.EditIndex = -1;
            BindGrid();

        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGrid();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Insert")
        {

            TextBox uuname = (TextBox)GridView1.FooterRow.FindControl("tnuname");
            TextBox upassword = (TextBox)GridView1.FooterRow.FindControl("tnpassword");
            TextBox urepassword = (TextBox)GridView1.FooterRow.FindControl("tnrepassword");
            TextBox ufname = (TextBox)GridView1.FooterRow.FindControl("tnfname");
            TextBox ulname = (TextBox)GridView1.FooterRow.FindControl("tnlname");
            TextBox ugender = (TextBox)GridView1.FooterRow.FindControl("tngender");
            TextBox umob = (TextBox)GridView1.FooterRow.FindControl("tnmob");
            TextBox uemail = (TextBox)GridView1.FooterRow.FindControl("tnemail");

            string sql = "insert into newadmin values('" + uuname.Text + "','" + upassword.Text + "','" + urepassword.Text + "','" + ufname.Text + "','" + ulname.Text + "','" + ugender.Text + "','" + umob.Text + "','" + uemail.Text + "')";
            if (con.ExceuteCommand(sql) >= 1)
            {
                Response.Write("<script>alert('CURRENT RECORD INSERTED SUCCESSFULLY............');</script>");
                GridView1.EditIndex = -1;
                BindGrid();
            }
            if (e.CommandName == "Sort")
            {
                GridView1.DataSource = con.connect("select * from newadmin order by " + e.CommandArgument, "DeptSerch");
                GridView1.DataBind();

            }
        }
    }
}