using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SQLHelper objsql = new SQLHelper();
    SqlConnection MyCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
    public static string title = "", desc = "", img = "", place = "", email = "", address = "", mobno = "", head = "", detail = "", visa = "", pr = "", air = "", Happy = "",about="",front="",frontimg="",frontdesc="";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
            BindContact();
            BindSlider();
            BindTestimonial();
            BindService();
            BindDeals();
            BindGallery();
            Services();
            BindCounter();
            BindMainService();
            mastercat();
            Service2();
            page();
            bindAchiever();
            SqlCommand cmd = new SqlCommand("selectLogo", MyCon);

            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            da.Fill(ds);
            lvlogo.DataSource = ds;
            lvlogo.DataBind();
            ds.Tables.Clear();
        }
 
    }
    #region Bind Data
    public void BindData()
    {
        SqlCommand cmd = new SqlCommand("PageByid", MyCon);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@Id", 1);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();

        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            title = ds.Tables[0].Rows[0]["Name"].ToString();
            img = ds.Tables[0].Rows[0]["Image"].ToString();
            desc = ds.Tables[0].Rows[0]["Description"].ToString();
        }
        ds.Clear();
    }
    #endregion
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
            front = dsc.Tables[0].Rows[0]["frontname"].ToString();
            frontdesc = dsc.Tables[0].Rows[0]["description"].ToString();
            frontimg = dsc.Tables[0].Rows[0]["frontimg"].ToString();
        }
        dsc.Clear();
    }
    #endregion
    #region Testimonial
    public void BindTestimonial()
    {
        SqlCommand cmd = new SqlCommand("selectTestimonialStatus", MyCon);

        cmd.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet dst = new DataSet();
        da.Fill(dst);
        if (dst.Tables[0].Rows.Count > 0)
        {
            ListTest.DataSource = dst;
            ListTest.DataBind();
        }
        dst.Clear();
    }
    #endregion
    #region Slider
    public void BindSlider()
    {
        SqlCommand cmd = new SqlCommand("selectSliderStatus", MyCon);

        cmd.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet dss = new DataSet();
        da.Fill(dss);
        if (dss.Tables[0].Rows.Count > 0)
        {
            ListSlider.DataSource = dss;
            ListSlider.DataBind();
        }
        dss.Clear();
    }
    #endregion
    #region Service
    public void BindService()
    {
        DataSet dse = new DataSet();
        dse=objsql.GetDataset("select top 3 * from tblService where Status='1' and type='Migration' order by Newid()");
        if (dse.Tables[0].Rows.Count > 0)
        {
            ListService.DataSource = dse;
            ListService.DataBind();          
        }
        dse.Clear();
        DataTable dt = new DataTable();
        dt = objsql.GetTable("select top 3 * from tblService where Status='1' and type='Study Abroad' order by Newid()");
        if (dt.Rows.Count > 0)
        {
            lvabroad.DataSource = dt;
            lvabroad.DataBind();
        }
    }
    #endregion
    protected void ListService_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "more")
        {
            Cache["sid"] = e.CommandArgument.ToString();
            Response.Redirect("Service.aspx");
        }
    }
    protected void ListService_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        if (e.Item.ItemType == ListViewItemType.DataItem || e.Item.ItemType == ListViewItemType.DataItem)
        {
            Label content = (Label)e.Item.FindControl("lblsdes");
            //if (content.Text.Length > 50)
            //{
            //    content.Text = content.Text.Substring(0, 50);
            //}
        }
    }
    #region OurDeals
    public void BindDeals()
    {
        DataSet dsd = new DataSet();
        dsd = objsql.GetDataset("select top 3 * from tblOurDeals where Status='1'");
        if (dsd.Tables[0].Rows.Count > 0)
        {
          //  ListDeals.DataSource = dsd;
           // ListDeals.DataBind();
        }
        dsd.Clear();
    }
    #endregion
    #region Gallery
    public void BindGallery()
    {
        DataSet dsg = new DataSet();
        dsg = objsql.GetDataset("select top 6 * from tblGallery where Status='1' order by newid()");
        if (dsg.Tables[0].Rows.Count > 0)
        {
            ListVisa.DataSource = dsg;
            ListVisa.DataBind();
        }
        dsg.Clear();
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
        DataSet dtnews = new DataSet();
        dtnews = objsql.GetDataset("select * from tblNews where Status='1'");
        if(dtnews.Tables[0].Rows.Count!=0)
        {
            lvnews.DataSource = dtnews;
            lvnews.DataBind();
        }
    }

    protected void ServiceList_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        //if (e.CommandName == "main")
        //{
        //    Cache["sid"] = e.CommandArgument.ToString();
        //    Response.Redirect("Service.aspx");
        //}
    }

    public void BindCounter()
    {
        SqlCommand cmd = new SqlCommand("selectBusiness", MyCon);

        cmd.CommandType = CommandType.StoredProcedure;

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet dsad = new DataSet();
        da.Fill(dsad);
        if (dsad.Tables[0].Rows.Count > 0)
        {
            head = dsad.Tables[0].Rows[0]["Name"].ToString();
            detail = dsad.Tables[0].Rows[0]["Description"].ToString();
            visa = dsad.Tables[0].Rows[0]["StudyVisa"].ToString();
            air = dsad.Tables[0].Rows[0]["AirTicket"].ToString();
            Happy = dsad.Tables[0].Rows[0]["HappyClient"].ToString();
            pr = dsad.Tables[0].Rows[0]["PrVisa"].ToString();
        }
        dsad.Clear();
    }
    public void BindMainService()
    {
        DataSet dsm = new DataSet();
        dsm = objsql.GetDataset("select top 4 * from tblService where Status='1' and Main='1'");
        if (dsm.Tables[0].Rows.Count > 0)
        {
            //Listmain.DataSource = dsm;
           // Listmain.DataBind();
        }
        dsm.Clear();
    }
    protected void Listmain_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "more")
        {
            Cache["sid"] = e.CommandArgument.ToString();
            Response.Redirect("Service.aspx");
        }
    }
    protected void Listmain_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        if (e.Item.ItemType == ListViewItemType.DataItem || e.Item.ItemType == ListViewItemType.DataItem)
        {
            Label content = (Label)e.Item.FindControl("lblmdesc");
            if (content.Text.Length > 95)
            {
                content.Text = content.Text.Substring(0,95);
            }
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
            
            string aa= ds.Tables[0].Rows[0]["Description"].ToString();
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

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Study-Abroad.aspx");
    }

    protected void lvabroad_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "more")
        {
            Cache["sid"] = e.CommandArgument.ToString();
            Response.Redirect("Service.aspx");
        }
    }
    public void bindAchiever()
    {
        DataTable dta = new DataTable();
        dta = objsql.GetTable("select * from tblAchiever where status='1'");
        if(dta.Rows.Count>0)
        {
            Listachiever.DataSource = dta;
            Listachiever.DataBind();
        }
    }
}