using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_Drivingl : System.Web.UI.Page
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

        GridView1.DataSource = con.connect("select * from driving", "cont");
        GridView1.DataBind();

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        sql = "select * from driving";
        DataTable dt = con.connect(sql, " mahesh");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lcid = (Label)GridView1.Rows[e.RowIndex].FindControl("lfname");
        try
        {
            String sql = "delete from driving where fname='" + lcid.Text + "'";
            if (con.ExceuteCommand(sql) >= 1)
            {
                Response.Redirect("<script>alert(' RECORD DELETED SUCCESSFULLY............');</script>");
                GridView1.EditIndex = -1;
                BindGrid();
            }
        }
        catch
        {
            Response.Write("<script>alert('CURRENT RECORD not DELETD SUCCESSFULLY............');</script>");

        }
    }
    protected void GridView1_PageIndexChanging(Object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();
    }


    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox uuname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tfname");
        TextBox upassword = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tlname");
        TextBox urepassword = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tlnumber");
        TextBox ufname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tdnumber");
        TextBox ulname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tidate");
        TextBox ugender = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tedate");
        TextBox umob = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tistate");
        try
        {
            string sql = "update driving set fname='" + uuname.Text + "',lname='" + upassword.Text + "',lnumber='" + urepassword.Text + "',dnumber='" + ufname.Text + "',idate='" + ulname.Text + "',edate='" + ugender.Text + "',istate='" + umob.Text + "'  where  fname='" + uuname.Text + "'";
            if (con.ExceuteCommand(sql) >= 1)
            {
                Response.Write("<script>alert('CURRENT RECORD UPDATED SUCCESSFULLY............');</script>");
                GridView1.EditIndex = -1;
                BindGrid();
            }
        }
        catch
        {
            Response.Write("<script>alert('CURRENT RECORD not UPDATED SUCCESSFULLY............');</script>");

        }

    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        
        
            Label lbl = (Label)GridView1.Rows[e.RowIndex].FindControl("lfname");
            try
            {
                string sql = "delete from driving where fname='" + lbl.Text + "'";
                con.ExceuteCommand(sql);
                Response.Write("<script>alert('CURRENT RECORD Deleted SUCCESSFULLY............');</script>");
                GridView1.EditIndex = -1;
                BindGrid();
            }
        
        catch
        {
            Response.Write("<script>alert('CURRENT RECORD not DELETED SUCCESSFULLY............');</script>");

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

            TextBox uuname = (TextBox)GridView1.FooterRow.FindControl("tnfname");
            TextBox upassword = (TextBox)GridView1.FooterRow.FindControl("tnlname");
            TextBox urepassword = (TextBox)GridView1.FooterRow.FindControl("tnlnumber");
            TextBox ufname = (TextBox)GridView1.FooterRow.FindControl("tndnumber");
            TextBox ulname = (TextBox)GridView1.FooterRow.FindControl("tnidate");
            TextBox ugender = (TextBox)GridView1.FooterRow.FindControl("tnedate");
            TextBox umob = (TextBox)GridView1.FooterRow.FindControl("tnistate");
            try
            {
                string sql = "insert into driving values('" + uuname.Text + "','" + upassword.Text + "','" + urepassword.Text + "','" + ufname.Text + "','" + ulname.Text + "','" + ugender.Text + "','" + umob.Text + "')";
                if (con.ExceuteCommand(sql) >= 1)
                {
                    Response.Write("<script>alert('CURRENT RECORD INSERTED SUCCESSFULLY............');</script>");
                    GridView1.EditIndex = -1;
                    BindGrid();
                }
            }
            catch
            {
                Response.Write("<script>alert('CURRENT RECORD not INSERTED SUCCESSFULLY............');</script>");

            }
            if (e.CommandName == "Sort")
            {
                GridView1.DataSource = con.connect("select * from driving order by " + e.CommandArgument, "DeptSerch");
                GridView1.DataBind();

            }
        }
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGrid();
 
    }
}