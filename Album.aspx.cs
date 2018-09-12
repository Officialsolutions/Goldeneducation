using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Album : System.Web.UI.Page
{
    SQLHelper objsql = new SQLHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        BindAlbum();
    }
    public void BindAlbum()
    {
        DataSet dsa = new DataSet();
        dsa = objsql.GetDataset("select * from tblAlbum where Status='1'");
        if (dsa.Tables[0].Rows.Count > 0)
        {
            ListAlbum.DataSource = dsa;
            ListAlbum.DataBind();
        }
        dsa.Clear();
    }
    protected void ListAlbum_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "album")
        {
            Cache["gid"] = e.CommandArgument.ToString();
            Response.Redirect("Gallery.aspx");
        }
    }
}