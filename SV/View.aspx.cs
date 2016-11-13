using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SV_View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["acadUserSs"] = "201620171";           
            Session["acadUserPr"] = "Bachelor Of Computer Science (Database Systems)";
            Session["acadUserFn"] = "Computing";
            Session["acadUserMt"] = "A14CS0999";
            Session["acadUserBs"] = "6";
            Session["acadUserNs"] = "8";
            Session["acadUserSv"] = "Dr. Gigi Sweetiee";
            Session["acadUserTs"] = "Taught Course";
            Session["acadUserEm"] = "kaakasim@live.utm.my";
            Session["acadUserTl"] = "017-754943283";


            if (!IsPostBack)
            {
                string sesisem = Session["acadUserSs"].ToString();
                showProfile();                
               
            }
        }

    }

    protected void showProfile()
    {
        imgPhoto.InnerHtml = "<img src=\"../Styles/images/nophoto.png\" class=\"img-profile\" width=\"100\" alt=\"profileimage\" />";
        lblName.Text = Session["acadUserNm"].ToString();
        lblProgramme.Text = Session["acadUserPr"].ToString();
        lblFaculty.Text = Session["acadUserFn"].ToString();
        lblMatric.Text = Session["acadUserMt"].ToString();
        lblBilSemester.Text = Session["acadUserBs"].ToString() + " / " + Session["acadUserNs"].ToString();
        lblAA.Text = Session["acadUserSv"].ToString();
        lblToS.Text = Session["acadUserTs"].ToString() + " (Full Time)";
        lblEmail.Text = Session["acadUserEm"].ToString();
        lblPhone.Text = Session["acadUserTl"].ToString();
    }
}