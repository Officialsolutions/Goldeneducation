using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Without_Sidebar : System.Web.UI.MasterPage
{
    SQLHelper objsql = new SQLHelper();
    SqlConnection MyCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
    public static string title = "", desc = "", img = "", place = "", email = "", address = "", mobno = "",about;
    protected void Page_Load(object sender, EventArgs e)
    {
        BindContact();
        Services();
        mastercat();
        Service2();
        page();
    }
    protected void page()
    {
        SqlCommand cmd = new SqlCommand("PageByid", MyCon);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@Id", 2);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();

        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            string aa = ds.Tables[0].Rows[0]["Description"].ToString();
            if (aa.Length > 200)
            {
                about = aa.Substring(0, 200);
            }
            else
            {
                about = aa;
            }

            ds.Clear();
        }
    }
    #region Bind Contact
    public void BindContact()
    {
        SqlCommand cmd = new SqlCommand("selectcontact", MyCon);

        cmd.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet dsc = new DataSet();

        da.Fill(dsc);
        if (dsc.Tables[0].Rows.Count > 0)
        {

            place = dsc.Tables[0].Rows[0]["place"].ToString();
            mobno = dsc.Tables[0].Rows[0]["phone"].ToString();
            address = dsc.Tables[0].Rows[0]["address"].ToString();
            email = dsc.Tables[0].Rows[0]["email"].ToString();
        }
        dsc.Clear();
    }
    #endregion
    protected void ListedService_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "main")
        {
            Cache["sid"] = e.CommandArgument.ToString();
            Response.Redirect("Service.aspx");
        }
    }
    public void Services()
    {
        DataSet ser = new DataSet();
        ser = objsql.GetDataset("select * from tblService where Status='1' and Type='Study Abroad'");
        if (ser.Tables[0].Rows.Count > 0)
        {
            ListedService.DataSource = ser;
            ListedService.DataBind();

            ServiceList.DataSource = ser;
            ServiceList.DataBind();
        }
        ser.Clear();
    }
    protected void ServiceList_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "main")
        {
            Cache["sid"] = e.CommandArgument.ToString();
            Response.Redirect("Service.aspx");
        }
    }
    protected void mastercat()
    {
        DataSet dsma = new DataSet();
        dsma = objsql.GetDataset("select distinct Country from tblService where Type='Migration'");
        if (dsma.Tables[0].Rows.Count > 0)
        {
            lvmastercat.DataSource = dsma;
            lvmastercat.DataBind();
            ListView1.DataSource = dsma;
            ListView1.DataBind();
        }
        DataSet dtnews = new DataSet();
        dtnews = objsql.GetDataset("select * from tblNews where Status='1'");
        if (dtnews.Tables[0].Rows.Count != 0)
        {
            lvnews.DataSource = dtnews;
            lvnews.DataBind();
        }
    }
    protected void lvmastercat_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        if (e.Item.ItemType == ListViewItemType.DataItem || e.Item.ItemType == ListViewItemType.DataItem)
        {
            LinkButton content = (LinkButton)e.Item.FindControl("lnkmigration");
            ListView lv = (ListView)e.Item.FindControl("lvsab");
            DataSet ds2 = new DataSet();
            ds2 = objsql.GetDataset("select id,Name from tblService where Country='" + content.Text + "' and Status='1'");
            if (ds2.Tables[0].Rows.Count > 0)
            {
                lv.DataSource = ds2;
                lv.DataBind();
            }
        }
    }
    protected void lvsab_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "main")
        {
            Cache.Remove("sid");
            Cache["sid"] = e.CommandArgument.ToString();
            Response.Redirect("Service.aspx");
        }
    }
    protected void Service2()
    {
        DataSet dsma2 = new DataSet();
        dsma2 = objsql.GetDataset("select * from tblService where Type='Service'");
        if (dsma2.Tables[0].Rows.Count > 0)
        {
            lvss.DataSource = dsma2;
            lvss.DataBind();
            lvss2.DataSource = dsma2;
            lvss2.DataBind();
          
        }
    }
    protected void lvss_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "main")
        {
            Cache.Remove("sid");
            Cache["sid"] = e.CommandArgument.ToString();
            Response.Redirect("Service.aspx");
        }
    }
}
