using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Full_Blog : System.Web.UI.Page
{
    SqlConnection MyCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SQLHelper objsql = new SQLHelper();
    public static string img = "", title = "", descr = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        BindBlog();
        BindRecent();
    }
    public void BindBlog()
    {
        SqlCommand cmd = new SqlCommand("OurDealByid", MyCon);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@Id", Cache["fid"]);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet dsf = new DataSet();

        da.Fill(dsf);
        if (dsf.Tables[0].Rows.Count > 0)
        {
            title = dsf.Tables[0].Rows[0]["Name"].ToString();
            img = dsf.Tables[0].Rows[0]["Image"].ToString();
            descr = dsf.Tables[0].Rows[0]["Description"].ToString();
            dsf.Clear();
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
    protected void ListRecent_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "full")
        {
            Cache["fid"] = e.CommandArgument.ToString();
            Response.Redirect("Full-Blog.aspx");
        }
    }
}