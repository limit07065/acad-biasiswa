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

public partial class SPSMasterPage : System.Web.UI.MasterPage
{
    OracleConnection oraCon = new OracleConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SMUTM"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["spsUserNm"] = "AIR KELAPA BIN KELABU ASAP";
        Session["spsUserPs"] = "S00597 - SPS(Kerani)";
        Session["spsUserDp"] = "Biasiswazah";
        Session["spsUserId"] = "J01SKB01";

        if (!IsPostBack)
        {
            showProfile();
            showApplicantsNo();
            lblLoggedInUser.Text = Session["spsUserNm"].ToString();
        }
    }

    
    protected void showProfile()
    {
        imgPhoto.InnerHtml = "<img src=\"../Styles/images/nophoto.png\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
        lblName.Text = Session["spsUserNm"].ToString();
        lblPosition.Text = Session["spsUserPs"].ToString();
        lblDepartment.Text = Session["spsUserDp"].ToString();
        lblId.Text = Session["spsUserId"].ToString();
    }

    protected void showApplicantsNo()
    {
        lblNotification.Text = "5";
    }
}
