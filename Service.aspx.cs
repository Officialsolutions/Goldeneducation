using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Service : System.Web.UI.Page
{
    SQLHelper objsql = new SQLHelper();
    public static string title = "", desc = "", img = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack==true)
        {
            BindData();
        }
       
    }
    public void BindData()
    {
        DataSet ds = new DataSet();
        ds = objsql.GetDataset("select * from tblService where id='" + Cache["sid"] + "'");
        if (ds.Tables[0].Rows.Count > 0)
        {
            title = ds.Tables[0].Rows[0]["Name"].ToString();
            desc = ds.Tables[0].Rows[0]["Description"].ToString();
            img = ds.Tables[0].Rows[0]["Image"].ToString();
        }
        ds.Clear();
    }
}