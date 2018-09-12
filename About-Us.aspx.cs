using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class About_Us : System.Web.UI.Page
{
    SqlConnection MyCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
    public static string title = "", desc = "", img = "", titlew = "", desw = "", titlem = "", desm = "", titlev = "", desv = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
        BindMission();
        BindVision();
        BindWhoWe();
    }

    #region Bind Data
    public void BindData()
    {
        SqlCommand cmd = new SqlCommand("PageByid", MyCon);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@Id", 2);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet ds = new DataSet();

        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            title = ds.Tables[0].Rows[0]["Name"].ToString();
            img = ds.Tables[0].Rows[0]["Image"].ToString();
            desc = ds.Tables[0].Rows[0]["Description"].ToString();
            ds.Clear();
        }
    } 
    #endregion
    #region Mission
    public void BindMission()
    {
        SqlCommand cmd = new SqlCommand("PageByid", MyCon);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@Id", 5);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet dsm = new DataSet();

        da.Fill(dsm);
        if (dsm.Tables[0].Rows.Count > 0)
        {
            titlem = dsm.Tables[0].Rows[0]["Name"].ToString();
            string mision= dsm.Tables[0].Rows[0]["Description"].ToString();
            desm=mision.Substring(0, 200);
            dsm.Clear();
        }
    } 
    #endregion
    #region Vision
    public void BindVision()
    {
        SqlCommand cmd = new SqlCommand("PageByid", MyCon);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@Id", 6);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet dsv = new DataSet();

        da.Fill(dsv);
        if (dsv.Tables[0].Rows.Count > 0)
        {
            titlev = dsv.Tables[0].Rows[0]["Name"].ToString();
            string visin = dsv.Tables[0].Rows[0]["Description"].ToString();
            desv = visin.Substring(0, 200);
            dsv.Clear();
        }
    } 
    #endregion
    #region Our Detail
    public void BindWhoWe()
    {
        SqlCommand cmd = new SqlCommand("PageByid", MyCon);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@Id", 7);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataSet dsw = new DataSet();

        da.Fill(dsw);
        if (dsw.Tables[0].Rows.Count > 0)
        {
            titlew = dsw.Tables[0].Rows[0]["Name"].ToString();
            string who = dsw.Tables[0].Rows[0]["Description"].ToString();
            desw = who.Substring(0, 200);
            dsw.Clear();
        }
    } 
    #endregion

}