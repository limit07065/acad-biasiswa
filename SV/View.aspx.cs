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
        try
        {
            String url = Request.UrlReferrer.OriginalString;

        }
        catch (NullReferenceException)
        {
            Response.Redirect("Default.aspx");
        }

        if (!IsPostBack)
        {
            string jsFunction = String.Format("viewCompleteForm('{0}');", Request.QueryString["mat"]);
            btnCompleteForm.Attributes.Add("OnClick", jsFunction);   
            DataView student = (DataView)SqlDataSourceStudent.Select(DataSourceSelectArguments.Empty);
            lblName.Text = student[0]["Name"].ToString();
            lblContactNo.Text = student[0]["Contact"].ToString();
            lblEmail.Text = student[0]["Email"].ToString();

            DataView dv2 = (DataView)SqlDataSourceSupervisorRecommendation.Select(DataSourceSelectArguments.Empty);
            if (dv2.Count == 1)
            {
                TextAreaComment.Text = dv2[0]["comment"].ToString();
                String recommendation;
                if (dv2[0]["recommendation"] == DBNull.Value)
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

    protected void btn_click(object sender, EventArgs e)
    {
        SqlDataSourceSupervisorRecommendation.Insert();

        //change all previous app_status of application to inactive

        sql.UpdateCommand = "UPDATE [APP_STATUS_DETAILS] SET [Active]='0' WHERE ([App_Code]=@appNo)";
        sql.UpdateParameters.Add("appNo", Request.QueryString["app"]);
        sql.Update();

        //Insert to app_status_details
        String remark = "Application reviewed by supervisor ";
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        remark = string.Concat(remark, dv[0]["name"].ToString());


        sql.InsertCommand = "INSERT INTO [APP_STATUS_DETAILS] ([App_Code],[Status],[Remark],[Date]) VALUES (@appCode,@status,@remark,@date)";
        sql.InsertParameters.Add("appCode", Request.QueryString["app"]);
        sql.InsertParameters.Add("status", "BIA_03");
        sql.InsertParameters.Add("remark", remark);
        sql.InsertParameters.Add("date", DateTime.Now.ToString());
        sql.Insert();



        Response.Redirect("Default.aspx");
    }
}