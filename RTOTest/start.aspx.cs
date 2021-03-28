using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class start : System.Web.UI.Page
{
   //Boolean m = false;
    static int i = 1, cnt = 0,n,m;
    ConnectionClass con = new ConnectionClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDownList1.Visible = true;
            RadioButton1.Visible = false;
            RadioButton2.Visible = false;
            RadioButton3.Visible = false;
            Button1.Visible = false;
           Button4.Visible = false;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        m = 0;
       frecord();
       /*RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        RadioButton3.Checked = false;*/
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Button4.Visible = false;
        RadioButton1.Visible = false;
        RadioButton2.Visible = false;
        RadioButton3.Visible = false;
        Button2.Visible = false;
        if (cnt > 5)
            Label3.Text = "CONGREATES YOU ARE PASSED YOUR SCORE IS=" + Convert.ToString(cnt);
        else if (cnt < 5)
            Label3.Text = "PLESE TRY AGAIN FOR IMPROVE YOUR SCORE=" + Convert.ToString(cnt);
        cnt = 0; i = 1;
        HyperLink7.Visible = true;
        HyperLink8.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Button3.Visible = false;
        Button1.Visible = true;
        Button4.Visible = true;
        Button1.Visible = true;
        DropDownList1.Visible = false;
        Label4.Visible = false;
        show();
    }
 
   protected void Button4_Click(object sender, EventArgs e)
    {
if(n==1)
         {
        if (m == 0)
        {
            if (RadioButton1.Checked)
            {
                cnt++;
             m=1;  
            }
        }
    }        
        else if (n == 2)
        {
            if(m==0)
             {
            if (RadioButton2.Checked)
            {
                cnt++;
                m=1;
            }
        }
        }
        else if (n == 3)
             { 
            if(m==0)
             {
            if (RadioButton3.Checked)
               {
                cnt++;
                m++;
            }     }
        }  
        if (i>10)
        {
            Button1.Visible = false;
            Button2.Visible = true;
            Label3.Visible = true;
        }
    }
    void frecord()
    {
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
       RadioButton3.Checked = false;
        //n = 0;
        try
        {
            String sql = "select  qid,qname,qop1,qop2,qop3,qans from " + DropDownList1.SelectedValue + " where qid=" + i;
            DataTable dt = con.connect(sql, "tab");
            DataRow row = dt.Rows[0];
            if (dt.Rows.Count != 0)
            {
                Label1.Text = row["qid"].ToString();
                Label2.Text = row["qname"].ToString();
                RadioButton1.Text = row["qop1"].ToString();
                RadioButton2.Text = row["qop2"].ToString();
                RadioButton3.Text = row["Qop3"].ToString();
                String s = row["qans"].ToString();
                n = Convert.ToInt32(s);
                i++;}
            if (i > 10)
            {
                Button1.Visible = false;
                Button2.Visible = true;
            }
        }
        catch
        {

         //    Label1.Text = "plese cancle test and Start again";
        }
    }

    void show()
    {
        frecord();
        RadioButton1.Visible = true;
        RadioButton2.Visible = true;
        RadioButton3.Visible = true;
    }
 
}