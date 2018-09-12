using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Blog : System.Web.UI.Page
{
    SQLHelper objsql = new SQLHelper();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindBlog();
            BindRecent();
        }
    }
    public void BindBlog()
    {
        DataSet dsb = new DataSet();
        dsb = objsql.GetDataset("select * from tblOurDeals where Status='1' order by newid()");
        if (dsb.Tables[0].Rows.Count > 0)
        {
            ListBlog.DataSource = dsb;
            ListBlog.DataBind();
        }
        dsb.Clear();
    }
    protected void ListRecent_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "full")
        {
            Cache["fid"] = e.CommandArgument.ToString();
            Response.Redirect("Full-Blog.aspx");
        }
    }
    protected void ListBlog_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "read")
        {
            Cache["fid"] = e.CommandArgument.ToString();
            Response.Redirect("Full-Blog.aspx");
        }
    }
    protected void ListBlog_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        if (e.Item.ItemType == ListViewItemType.DataItem || e.Item.ItemType == ListViewItemType.DataItem)
        {
            Label content = (Label)e.Item.FindControl("lbldesc");
            if (content.Text.Length > 250)
            {
                content.Text = content.Text.Substring(0, 250);
            }
        }
    }
    public void BindRecent()
    {
        DataSet dsr = new DataSet();
        dsr = objsql.GetDataset("select top 8 * from tblOurDeals where Status='1' order by id desc");
        if (dsr.Tables[0].Rows.Count > 0)
        {
            ListRecent.DataSource = dsr;
            ListRecent.DataBind();
        }
        dsr.Clear();
    }
}