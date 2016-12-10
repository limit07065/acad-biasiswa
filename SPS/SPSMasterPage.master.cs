using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class SPSMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["spsUserNm"] = "Loh Wen He";
        Session["spsUserPs"] = "S00597 - SPS(Kerani)";
        Session["spsUserDp"] = "Biasiswazah";
        Session["spsUserId"] = "J10SKB01";

        if (!IsPostBack)
        {
            showProfile();
            lblLoggedInUser.Text = Session["spsUserNm"].ToString();
        }
    }


    protected void showProfile()
    {
        imgPhoto.InnerHtml = "<img src=\"../Styles/images/photo/lohwenhe.jpg\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
        lblName.Text = Session["spsUserNm"].ToString();
        lblPosition.Text = Session["spsUserPs"].ToString();
        lblDepartment.Text = Session["spsUserDp"].ToString();
        lblId.Text = Session["spsUserId"].ToString();
    }
}
