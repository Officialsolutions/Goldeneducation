﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Text;
using System.IO;
using System.Web.Caching;
public partial class Auth_add_edit_slider : System.Web.UI.Page
{

    SqlConnection MyCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["con"].ConnectionString);
    public static string imagename = "", img = "", cook = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["Admin"] == "" && Session["Admin"] == null)
        //        Response.Redirect("login.aspx");
        if (!IsPostBack)
        {
            if (Cache["Val"] != "" && Cache["Val"] != null)
            {
                cook = Cache["Val"].ToString();
                BindData();
            }
        }
    }
    #region Image unique code
    public static string GenerateClassCode()
    {
        StringBuilder classCode = new StringBuilder();
        Random r = new Random();

        string alphabets = "abcdefghijklmnopqrstuvwxyz";
        string numbers = "01234567890123456789012345";

        for (int i = 0; i <= 2; i++)
        {
            classCode.Append(alphabets[r.Next(alphabets.Length)].ToString().ToUpper());
            classCode.Append(numbers[r.Next(numbers.Length)]);
        }
        return classCode.ToString();
    }
    #endregion
    #region Submit button code
    protected void btnsubmit_Click(object sender, EventArgs e)
    {

        if (sliderimage.HasFile)
        {
            string sliderpic = sliderimage.FileName;
            imagename = "PH" + "_" + GenerateClassCode() + "_" + sliderpic;
            string filePath2 = MapPath("../uploadimage/" + imagename);
            Stream Buffer2 = sliderimage.PostedFile.InputStream;
            System.Drawing.Image Image2 = System.Drawing.Image.FromStream(Buffer2);
            Bitmap bmp2 = ResizeImage(Image2, Image2.Height, Image2.Width);
            bmp2.Save(filePath2, System.Drawing.Imaging.ImageFormat.Jpeg);
        }
        else
        {
            imagename = img;
        }
        if (cook != null && cook != "")
        {
            SqlCommand cmd = new SqlCommand("UpdateSlider", MyCon);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id", cook);

            cmd.Parameters.AddWithValue("@Name", txtslider.Text);

            cmd.Parameters.AddWithValue("@Image", imagename);

            MyCon.Open();

            cmd.ExecuteNonQuery();

            MyCon.Close();
        }
        else
        {
            SqlCommand cmd = new SqlCommand("insertSlider", MyCon);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Name", txtslider.Text);

            cmd.Parameters.AddWithValue("@Image", imagename);

            cmd.Parameters.AddWithValue("@Status", 1);

            MyCon.Open();

            cmd.ExecuteNonQuery();

            MyCon.Close();
        }
        cook = "";
        Cache.Remove("Val");
        Response.Redirect("View-Slider.aspx");
    }
    #endregion
    #region Resize Image
    private static Bitmap ResizeImage(System.Drawing.Image imgPhoto, int Height, int Width)
    {
        int sourceWidth = imgPhoto.Width;
        int sourceHeight = imgPhoto.Height;
        int sourceX = 0;
        int sourceY = 0;
        int destX = 0;
        int destY = 0;

        float nPercent = 0;
        float nPercentW = 0;
        float nPercentH = 0;

        nPercentW = ((float)Width / (float)sourceWidth);
        nPercentH = ((float)Height / (float)sourceHeight);
        if (nPercentH < nPercentW)
        {
            nPercent = nPercentH;
            destX = System.Convert.ToInt16((Width - (sourceWidth * nPercent)) / 2);
        }
        else
        {
            nPercent = nPercentW;
            destY = System.Convert.ToInt16((Height - (sourceHeight * nPercent)) / 2);
        }

        int destWidth = (int)Math.Ceiling(sourceWidth * nPercent);
        int destHeight = (int)Math.Ceiling(sourceHeight * nPercent);

        Bitmap bmPhoto = new Bitmap(Width, Height, imgPhoto.PixelFormat);

        bmPhoto.SetResolution(imgPhoto.HorizontalResolution, imgPhoto.VerticalResolution);

        Graphics grPhoto = Graphics.FromImage(bmPhoto);
        grPhoto.Clear(Color.White);

        grPhoto.CompositingQuality = CompositingQuality.HighQuality;
        grPhoto.SmoothingMode = SmoothingMode.HighQuality;
        grPhoto.InterpolationMode = InterpolationMode.HighQualityBicubic;
        Rectangle rect = new Rectangle(0, 0, Width, Height);
        grPhoto.DrawImage(imgPhoto, rect, new Rectangle(sourceX, sourceY, sourceWidth, sourceHeight), GraphicsUnit.Pixel);
        grPhoto.Dispose();
        return bmPhoto;
    }
    #endregion
    #region Bind Data By Id
    public void BindData()
    {
        if (cook != "" && cook != null)
        {
            SqlCommand cmd = new SqlCommand("SliderByid", MyCon);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Id", cook);

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                txtslider.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                img = ds.Tables[0].Rows[0]["Image"].ToString();
                ds.Clear();
            }
        }
    }
    #endregion
}