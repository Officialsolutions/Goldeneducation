using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Auth_add_edit_countes : System.Web.UI.Page
{
    SqlConnection MyCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
    public static string cook = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == "" && Session["Admin"] == null)
            Response.Redirect("login.aspx");
        if (!IsPostBack)
        {
            if (Cache["Val"] != "" && Cache["Val"] != null)
            {
                cook = Cache["Val"].ToString();
                BindData();
            }
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (cook != null && cook != "")
        {
            SqlCommand cmd = new SqlCommand("UpdateBusiness", MyCon);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id", cook);

            cmd.Parameters.AddWithValue("@Name", txttitle.Text);

            cmd.Parameters.AddWithValue("@Description", txtdesc.Text);

            cmd.Parameters.AddWithValue("@StudyVisa", txtVisa.Text);

            cmd.Parameters.AddWithValue("@AirTicket", txtair.Text);

            cmd.Parameters.AddWithValue("@HappyClient", txtclient.Text);

            cmd.Parameters.AddWithValue("@PrVisa", txtpr.Text);

            MyCon.Open();

            cmd.ExecuteNonQuery();

            MyCon.Close();
        }
        else
        {
            SqlCommand cmd = new SqlCommand("insertBusiness", MyCon);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Name", txttitle.Text);

            cmd.Parameters.AddWithValue("@Description", txtdesc.Text);

            cmd.Parameters.AddWithValue("@StudyVisa", txtVisa.Text);

            cmd.Parameters.AddWithValue("@AirTicket", txtair.Text);

            cmd.Parameters.AddWithValue("@HappyClient", txtclient.Text);

            cmd.Parameters.AddWithValue("@PrVisa", txtpr.Text);

            MyCon.Open();

            cmd.ExecuteNonQuery();

            MyCon.Close();
        }
        cook = "";
        Cache.Remove("Val");
        Response.Redirect("View-countes.aspx");
    }
    #region Bind Data By Id
    public void BindData()
    {
        if (cook != "" && cook != null)
        {
            SqlCommand cmd = new SqlCommand("BusinessByid", MyCon);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id", cook);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
               txttitle.Text= ds.Tables[0].Rows[0]["Name"].ToString();
               txtdesc.Text = ds.Tables[0].Rows[0]["Description"].ToString();
               txtVisa.Text = ds.Tables[0].Rows[0]["StudyVisa"].ToString();
               txtair.Text = ds.Tables[0].Rows[0]["AirTicket"].ToString();
               txtclient.Text = ds.Tables[0].Rows[0]["HappyClient"].ToString();
               txtpr.Text = ds.Tables[0].Rows[0]["PrVisa"].ToString();
                ds.Clear();
            }
        }
    }
    #endregion
}