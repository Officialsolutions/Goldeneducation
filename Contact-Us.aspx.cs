using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

public partial class Contact_Us : System.Web.UI.Page
{
    SQLHelper objsql = new SQLHelper();
    SqlConnection MyCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
    public static string place = "", email = "", address = "", mobno = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        BindContact();
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
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Mails objmail = new Mails();


        string tomail = System.Configuration.ConfigurationSettings.AppSettings["TO"];
        objmail.To = tomail;
        objmail.From = txtemail.Text;
        objmail.Subject = "Golden Education: Contact-Us";

        objmail.Body = GetBody();
        objmail.Send();
        this.txtname.Text = "";
        this.txtsubject.Text = "";
        this.txtphone.Text = "";
        this.txtmsz.Text = "";
        reply();
    }
    protected string GetBody()
    {
        string body = "";
        body += "<table>";

        body += "<tr><td>Name:</td><td>" + this.txtname.Text + "</td></tr>";
        body += "<tr><td>Subject:</td><td>" + this.txtsubject.Text + "</td></tr>";
        body += "<tr><td>E-mail:</td><td>" + this.txtemail.Text + "</td></tr>";
        body += "<tr><td>Phone Number:</td><td>" + this.txtphone.Text + "</td></tr>";


        body += "<tr><td>Message:</td><td>" + txtmsz.Text + "</td></tr>";
        body += "</table>";

        return body;
    }
    protected void reply()
    {
        Mails objmail = new Mails();


        string tomail = System.Configuration.ConfigurationSettings.AppSettings["TO"];
        objmail.To = txtemail.Text;
        objmail.From = tomail;
        objmail.Subject = "Golden Education: Contact-Us";

        objmail.Body = thnxbody();
        objmail.Send();
        Page.RegisterStartupScript("temp", "<script>alert('Thanks, Your Mail sent successfully. we will contact you as soon as possible.')</script>");


        this.txtname.Text = "";
        this.txtemail.Text = "";
        this.txtphone.Text = "";
        this.txtmsz.Text = "";
        this.txtsubject.Text = "";

    }
    protected string thnxbody()
    {
        string body2 = "";
        body2 += "<table>";


        body2 += "<tr><td></td><td>'Thanx for contact'</td></tr>";
        body2 += "</table>";

        return body2;
    }
}