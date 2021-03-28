using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin1_lLearner : System.Web.UI.Page
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

        GridView1.DataSource = con.connect("select * from learner", "cont");
        GridView1.DataBind();

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        sql = "select * from learner";
        DataTable dt = con.connect(sql, " mahesh");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label lcid = (Label)GridView1.Rows[e.RowIndex].FindControl("lfname");
        try
        {
            String sql = "delete from learner where fname='" + lcid.Text + "'";
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
        TextBox ufname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tfname");
        TextBox ulname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tlname");
        TextBox uddate = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tddate");
        TextBox uaddress = (TextBox)GridView1.Rows[e.RowIndex].FindControl("taddress");
        TextBox uqualification = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tqualification");
        TextBox uadhaar = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tadhaar");
        TextBox umob = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tmob");
        TextBox uslic = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tslic");
        TextBox udocuments = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tdocuments");
        TextBox udocumentd = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tdocumentd");
        TextBox uphoto = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tphoto");
        TextBox ustate = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tstate");
        TextBox ucity = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tcity");
        TextBox upin = (TextBox)GridView1.Rows[e.RowIndex].FindControl("tpin");
        TextBox uemail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("temail");
        try
        {
            string sql = "update learner set fname='" + ufname.Text + "',lname='" + ulname.Text + "',ddate='" + uddate.Text + "',address='" + uaddress.Text + "',qualification='" + uqualification.Text + "',adhaar='" + uadhaar.Text + "',mob='" + umob.Text + "',slic='" + uslic.Text + "',documents='" + udocuments.Text + "',documentd='" + udocumentd.Text + "',photo='" + uphoto.Text + "',state='" + ustate.Text + "',city='" + ucity.Text + "',pin='" + upin.Text + "',email='" + uemail.Text + "'  where  fname='" + ufname.Text + "'";
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
            string sql = "delete from learner where fname='" + lbl.Text + "'";
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
            TextBox ufname = (TextBox)GridView1.FooterRow.FindControl("tnfname");
            TextBox ulname = (TextBox)GridView1.FooterRow.FindControl("tnlname");
            TextBox uddate = (TextBox)GridView1.FooterRow.FindControl("tnddate");
            TextBox uaddress = (TextBox)GridView1.FooterRow.FindControl("tnaddress");
            TextBox uqualification = (TextBox)GridView1.FooterRow.FindControl("tnqualification");
            TextBox uadhaar = (TextBox)GridView1.FooterRow.FindControl("tnadhaar");
            TextBox umob = (TextBox)GridView1.FooterRow.FindControl("tnmob");
            TextBox uslic = (TextBox)GridView1.FooterRow.FindControl("tnslic");
            TextBox udocuments = (TextBox)GridView1.FooterRow.FindControl("tndocuments");
            TextBox udocumentd = (TextBox)GridView1.FooterRow.FindControl("tndocumentd");
            TextBox uphoto = (TextBox)GridView1.FooterRow.FindControl("tnphoto");
            TextBox ustate = (TextBox)GridView1.FooterRow.FindControl("tnstate");
            TextBox ucity = (TextBox)GridView1.FooterRow.FindControl("tncity");
            TextBox upin = (TextBox)GridView1.FooterRow.FindControl("tnpin");
            TextBox uemail = (TextBox)GridView1.FooterRow.FindControl("tnemail");
            try
            {
                string sql = "insert into learner values('" + ufname.Text + "','" + ulname.Text + "','" + uddate.Text + "','" + uaddress.Text + "','" + uqualification.Text + "','" + uadhaar.Text + "','" + umob.Text + "','" + uslic.Text + "','" + udocumentd.Text + "','" + udocuments.Text + "','" + uphoto.Text + "','" + ustate.Text + "','" + ucity.Text + "','" + upin.Text + "','" + uemail.Text + "')";
                if (con.ExceuteCommand(sql) >= 1)
                {
                    Response.Write("<script>alert('CURRENT RECORD INSERTED SUCCESSFULLY............');</script>");
                    GridView1.EditIndex = -1;
                    BindGrid();
                }
            }
            catch
            {
                Response.Write("<script>alert('CURRENT RECORD not DELETED SUCCESSFULLY............');</script>");

            }
            if (e.CommandName == "Sort")
            {
                GridView1.DataSource = con.connect("select * from learner order by " + e.CommandArgument, "DeptSerch");
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