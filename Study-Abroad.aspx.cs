using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Study_Abroad : System.Web.UI.Page
{
    SQLHelper objsql = new SQLHelper();
    public static string title = "", desc = "", img = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }
    #region Bind Data
    public void BindData()
    {
        DataTable dt = new DataTable();
        dt = objsql.GetTable("select  * from tblService where Status='1' and type='Study Abroad' order by id");
        if (dt.Rows.Count > 0)
        {
            lvabroad.DataSource = dt;
            lvabroad.DataBind();
        }
    }
    #endregion
    protected void lvabroad_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "more")
        {
            Cache["sid"] = e.CommandArgument.ToString();
            Response.Redirect("Service.aspx");
        }
    }
}