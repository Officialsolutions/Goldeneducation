using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Full_News : System.Web.UI.Page
{
    SQLHelper objsql = new SQLHelper();
    public static string img, title, descr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            bind();
        }
    }
    protected void bind()
    {
        DataSet ds = new DataSet();
        ds = objsql.GetDataset("select * from tblNews where id='" + Request.QueryString["id"] + "'");
        if(ds.Tables[0].Rows.Count!=0)
        {
            img = ds.Tables[0].Rows[0]["Image"].ToString();
            title = ds.Tables[0].Rows[0]["Name"].ToString();
            descr = ds.Tables[0].Rows[0]["Description"].ToString();
        }

    }
}