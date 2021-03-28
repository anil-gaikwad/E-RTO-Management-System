using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Windows.Forms;
using System.Data.OracleClient;
public class ConnectionClass
{
    public OracleConnection ocn;
    public OracleDataAdapter oda;
    public DataSet ds;
    public DataTable dt;
    public DataRow dr;
    public OracleCommand ocmd;
    public ConnectionClass()
    {

        string constr = "data source=; user id=system; password=password;";
        ocn = new OracleConnection(constr);
        ds = new DataSet();
        ocmd = new OracleCommand();

    }
   public DataTable connect(string sql, string tabname)
    {
       oda = new OracleDataAdapter(sql, ocn);
            oda.Fill(ds, tabname);
        dt = ds.Tables[tabname];
        return dt;
    }
    public int ExceuteCommand(string sql)
    {
        ocmd.CommandText = sql;
        ocmd.CommandType = CommandType.Text;
        ocmd.Connection = ocn;
        if (ocn.State == ConnectionState.Open)
        {
            ocn.Close();
        }
       
            ocn.Open();
       
        
        return ocmd.ExecuteNonQuery();

    }
    public int AutoIncr(string sql)
    {
        dt = connect(sql, "AutoIncr");
        dr = dt.Rows[0];
        return Convert.ToInt32(dr[0]);
    }

}
