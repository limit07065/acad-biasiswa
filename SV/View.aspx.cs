using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SV_View : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if ((string.IsNullOrEmpty(Request.QueryString["app"])) || (string.IsNullOrEmpty(Request.QueryString["mat"])) || (string.IsNullOrEmpty(Request.QueryString["ses"])))
            {
                Response.Redirect("");
            }
            else
            {               
                DataView dv = (DataView)SqlDataSourceSupervise.Select(DataSourceSelectArguments.Empty);
                if (dv == null)
                {
                    dv = new DataView();
                }
                if (dv.Count == 0)
                {
                    Response.Redirect("");
                }
                else
                {
                    DataView student = (DataView)SqlDataSourceStudent.Select(DataSourceSelectArguments.Empty);
                    lblName.Text = student[0]["Name"].ToString();
                    lblContactNo.Text = student[0]["Contact"].ToString();
                    lblEmail.Text = student[0]["Email"].ToString();
                }

                DataView dv2 = (DataView)SqlDataSourceSupervisorRecommendation.Select(DataSourceSelectArguments.Empty);
                if (dv2.Count == 1)
                {
                    TextAreaComment.Text = dv2[0]["comment"].ToString();
                     String recommendation;
                    if(dv2[0]["recommendation"]==DBNull.Value)
                        recommendation = "n";
                    else
                        recommendation = dv2[0]["recommendation"].ToString();

                    switch (recommendation[0])
                    {
                        case '2': RadioButtonListRecommendation.SelectedIndex = 0; break;
                        case '1': RadioButtonListRecommendation.SelectedIndex = 1; break;
                        case '0': RadioButtonListRecommendation.SelectedIndex = 2; break;
                        default: break;
        
                    }

                }
            }


        }
    }

    protected void btn_click(object sender, EventArgs e)
    {
        DataView dv2 = (DataView)SqlDataSourceSupervisorRecommendation.Select(DataSourceSelectArguments.Empty);
        if (dv2.Count == 0)
        {
            SqlDataSourceSupervisorRecommendation.Insert();
            //requires insert to app_status_details
            //SqlDataSourceApplication.Update();
        }
        else
        {
            SqlDataSourceSupervisorRecommendation.Update();
            
        }


        Response.Redirect("Default.aspx");
    }
}