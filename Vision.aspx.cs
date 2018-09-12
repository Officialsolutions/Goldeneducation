using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class Vision : System.Web.UI.Page
{
    SqlConnection MyCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
    public static string title = "", desc = "", img = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        BindData();
    }

    #region Bind Data
    public void BindData()
    {
        SqlCommand cmd = new SqlCommand("PageByid", MyCon);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@Id", 6);

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
}