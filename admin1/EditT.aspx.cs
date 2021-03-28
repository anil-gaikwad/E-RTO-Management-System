using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin1_EditT : System.Web.UI.Page
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

        GridView1.DataSource = con.connect("select * from " + DropDownList1.SelectedValue, "cont");
        GridView1.DataBind();

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        sql = "select * from " + DropDownList1.SelectedValue;
        DataTable dt = con.connect(sql, " mahesh");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        Label lcid = (Label)GridView1.Rows[e.RowIndex].FindControl("lqid");
        try
        {
            String sql = "delete from" + DropDownList1.SelectedValue + " where qid=" + lcid.Text;
            if (con.ExceuteCommand(sql) >= 1)
            {
                Response.Redirect("<script>alert(' RECORD DELETED SUCCESSFULLY............');</script>");
                GridView1.EditIndex = -1;
                BindGrid();
            }
        }

        catch
        {
            Response.Write("<script>alert('CURRENT RECORD not DELETED SUCCESSFULLY............');</script>");

        }
    }
    protected void GridView1_PageIndexChanging(Object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();
    }


    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox uqid = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tqid");
        TextBox uqname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tqname");
        TextBox uqop1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tqop1");
        TextBox uqop2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tqop2");
        TextBox uqop3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tqop3");
        TextBox uqans = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tqans");
        try{
        string sql = "update  " + DropDownList1.SelectedItem + " set qid="+uqid.Text+", qname='" + uqname.Text + "',qop1='" + uqop1.Text + "',qop2='" + uqop2.Text + "',qop3='" + uqop3.Text + "',qans='" + uqans.Text + "' where  qid=" + uqid.Text;
        if (con.ExceuteCommand(sql) >= 1)
        {
            Response.Write("<script>alert('CURRENT RECORD UPDATED SUCCESSFULLY............');</script>");
            GridView1.EditIndex = -1;
            BindGrid();
        }
        }
         catch
        {
            Response.Write("<script>alert('CURRENT RECORD not RECORD SUCCESSFULLY............');</script>");

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
            TextBox tnqid = (TextBox)GridView1.FooterRow.FindControl("tnqid");
            TextBox tnqname = (TextBox)GridView1.FooterRow.FindControl("tnqname");
            TextBox tnqop1 = (TextBox)GridView1.FooterRow.FindControl("tnqop1");
            TextBox tnqop2 = (TextBox)GridView1.FooterRow.FindControl("tnqop2");
            TextBox tnqop3 = (TextBox)GridView1.FooterRow.FindControl("tnqop3");
            TextBox tnqans = (TextBox)GridView1.FooterRow.FindControl("tnqans");
            try{
            string sql = "insert into  " + DropDownList1.SelectedItem + " values(" + tnqid.Text + ",'" + tnqname.Text + "','" + tnqop1.Text + "','" + tnqop2.Text + "','" + tnqop3.Text + "','" + tnqans.Text + "')";
            if (con.ExceuteCommand(sql) > 1)
            {
                Response.Write("<sript>alert('CURRENT RECORD INSERTED successfully...');</script>");
                BindGrid();
            }
            }
             catch
        {
            Response.Write("<script>alert('CURRENT RECORD not INSERTED SUCCESSFULLY............');</script>");

        }
        }
        if (e.CommandName == "Sort")
        {
            GridView1.DataSource = con.connect("select * from" + DropDownList1.SelectedItem + "order by " + e.CommandArgument, "DeptSerch");
            GridView1.DataBind();

        }
    }
}