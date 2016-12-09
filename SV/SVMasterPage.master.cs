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

public partial class SVMasterPage : System.Web.UI.MasterPage
{
    OracleConnection oraCon = new OracleConnection(System.Configuration.ConfigurationManager.ConnectionStrings["SMUTM"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["staffNo"] = "7026";
		if (!IsPostBack)
		{
			
			showProfile();
           
		}
    }
    protected void AC_Click(object sender, ImageClickEventArgs e)
    {
        Server.Transfer("frmAcadCalendar.aspx", false);
    }

    protected void EA_Click(object sender, ImageClickEventArgs e)
    {
        Server.Transfer("frmListHEMA.aspx", false);
    }

    protected void SD_Click(object sender, ImageClickEventArgs e)
    {
        Server.Transfer("searchStaff.aspx", false);
    }

    protected void EM_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://login.microsoftonline.com/login.srf?wa=wsignin1.0&rpsnv=4&ct=1458028969&rver=6.6.6556.0&wp=MBI_SSL&wreply=https%3a%2f%2foutlook.office365.com%2fowa%2fmain.php%3frealm%3dlive.utm.my%26vd%3dmail&id=260563&whr=live.utm.my&CBCXT=out&msafed=0");
    }

    protected void UL_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://library.utm.my/");
    }

    protected void AU_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("frmAskUs.aspx", true);
    }

    protected void HO_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://hostel.utm.my", true);
    }

    protected void BU_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://ebendahari.utm.my/bendahari/", true);
    }

    protected void FA_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(AcadGlobals.URL_ACAD + "UGStudent/AccountStatus.aspx", false);
    }

    protected void AW_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://pgs.utm.my/awd56v2/", true);
    }

    protected void RE_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect(AcadGlobals.URL_ACAD + "PGStudent/CV.aspx", true);
    }

    protected void CQ_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://aimsweb.utm.my/kokurikulum", true);
    }

    protected void EX_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://pure.utm.my/", true);
    }

    protected void ADU_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://aduan.utm.my/", true);
    }

    protected void ITS_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://its.utm.my", true);
    }

    protected void EP_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://aimsweb.utm.my/eppp/index.asp");
    }

    protected void EPO_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://eportfolio.utm.my");
    }

    protected void EL_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://elearning.utm.my");
    }

    /**
      * Function  : showProfile() 
      * Remarks   : To Show Student's Profile
      * Date      : 31/10/2016
      * Developer : Mohd Azman
      **/
    protected void showProfile()
    {
        imgPhoto.InnerHtml = "<img src=\"../Styles/images/photo/mso.jpg\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
        DataView dv= (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        foreach (DataRowView drv in dv)
        {
            DataRow dr = drv.Row;
            lblName.Text = dr["SV_Name"].ToString();
            lblContact.Text = dr["contact"].ToString();
            lblEmail.Text = dr["email"].ToString();
            lblFaculty.Text = dr["faculty"].ToString();
            if(dr["PHD_Graduate_Date"]!=DBNull.Value)
                lblPhdGraduationDate.Text = ((DateTime)dr["PHD_Graduate_Date"]).ToString("dd-MMM-yy");
            lblPosition.Text = dr["code"].ToString() + " " + dr["position"].ToString();
            lblStaffNo.Text = (String)Session["staffNo"];
           

        }
    }


 

}
