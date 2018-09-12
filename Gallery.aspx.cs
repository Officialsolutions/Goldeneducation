using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Gallery : System.Web.UI.Page
{
    SQLHelper objsql = new SQLHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGallery();
    }
    public void BindGallery()
    {
        DataSet dsa = new DataSet();
        dsa = objsql.GetDataset("select * from tblGallery where Status='1' and Album_Code='" + Cache["gid"].ToString() + "'");
        if (dsa.Tables[0].Rows.Count > 0)
        {
            ListGallery.DataSource = dsa;
            ListGallery.DataBind();
        }
        dsa.Clear();
    }
}