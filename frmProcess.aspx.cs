using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;

public partial class frmProcess : System.Web.UI.Page
{
    protected static string ConnectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ConnectionString;
    protected DataTable dt;
    protected DataSet ds;
    protected SqlDataAdapter adapter;
    protected static string matrixNo, biaName, shortBiaName, applicationNo, session, code, recordStatus;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            String url = Request.UrlReferrer.OriginalString;

        }
        catch (NullReferenceException enull)
        {
            Response.Redirect("SPS/listApplication.aspx");
        }

        if (!IsPostBack)
        {
            getData();
        }
    }

    //Populate data into the table
    protected void getData()
    {
        matrixNo = Request.QueryString["matrixNo"];
        session = Request.QueryString["session"];
        ds = new DataSet();

        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            string stuQuery = String.Format("SELECT * FROM [vw_StuInfo] WHERE [Matrix_No] = '{0}'", matrixNo);
            adapter = new SqlDataAdapter(stuQuery, con);
            adapter.Fill(ds, "stuInfo");

            string appQuery = String.Format("SELECT [App_No], [Type], [Mark], [App_Status], [Status_Code], [Short_Name] FROM [vw_Application] WHERE [Matrix_No] = '{0}' AND [Session] = '{1}'", matrixNo, session);
            adapter = new SqlDataAdapter(appQuery, con);
            adapter.Fill(ds, "appInfo");

            string statusQuery = String.Format("SELECT * FROM [vw_Status] WHERE [Matrix_No] = '{0}' AND [Session] = '{1}' AND [Active] = '1'", matrixNo, session);
            adapter = new SqlDataAdapter(statusQuery, con);
            adapter.Fill(ds, "statusInfo");
        }
        
        //Fill in data about student info
        dt = ds.Tables["stuInfo"];
        foreach (DataRow dr in dt.Rows)
        {
            lblName.Text = dr["Name"].ToString() ;
            lblProgram.Text = dr["Program"].ToString();
            lblICNo.Text = dr["IC_Passport"].ToString();
            lblEm.Text = dr["Email"].ToString();
        }

        dt = ds.Tables["appInfo"];
        foreach (DataRow dr in dt.Rows)
        {
            biaName = dr["Type"].ToString();
            lblMark.Text = String.Format("{0:0.00}", dr["Mark"]);
            lblCurrStatus.Text = dr["App_Status"].ToString();
            ddlStatus.SelectedValue = dr["Status_Code"].ToString();
            applicationNo = dr["App_No"].ToString();
            shortBiaName = dr["Short_Name"].ToString().Trim();
        }

        dt = ds.Tables["statusInfo"];
        foreach (DataRow dr in dt.Rows)
        {
            tbDate.Text = ((DateTime)dr["Date"]).ToString("dd-MMM-yyyy");
            recordStatus = dr["Short_Status"].ToString().Trim();
            code = dr["App_Code"].ToString().Trim();
        }


        //Hardcoded because is redundant to think of different thesis title for all dummy data
        lblThesis.Text = "BUILDING INFORMATION MODELING (BIM) RETROFITTING USING BIO-INSPIRED MULTI OBJECTIVE OPTIMIZATION METHOD";
    }

    protected void statusGV_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowState == DataControlRowState.Edit)
            {
                Button btnUpdate = e.Row.FindControl("btnUpdate") as Button;
                btnUpdate.Attributes["OnClick"] = "return confirm('Are you sure to save this update?')";
            }

            string status = DataBinder.Eval(e.Row.DataItem, "Short_Status").ToString().Trim();
            string date = ((DateTime)DataBinder.Eval(e.Row.DataItem, "Date")).ToString("dd MMMM yyyy");

            switch (status)
            { 
                case "BIA_01":
                    status1.Attributes.Add("class", "fill_green");
                    Label1.Text = date;
                    break;

                case "BIA_02":
                    status2.Attributes.Add("class", "fill_green");
                    Label2.Text = date;
                    break;

                case "BIA_03":
                    status3.Attributes.Add("class", "fill_green");
                    Label3.Text = date;
                    break;

                case "BIA_04":
                    status4.Attributes.Add("class", "fill_green");
                    Label4.Text = date;
                    break;

                case "BIA_05":
                    status5.Attributes.Add("class", "fill_green");
                    Label5.Text = date;
                    break;

                case "BIA_06":
                    status6.Attributes.Add("class", "fill_green");
                    Label6.Text = date;
                    break;

                case "BIA_07":
                    status7.Attributes.Add("class", "fill_green");
                    Label7.Text = date;
                    break;

                case "BIA_08":
                    status8.Attributes.Add("class", "fill_green");
                    Label8.Text = date;
                    break;

                case "BIA_09":
                    status9.Attributes.Add("class", "fill_green");
                    Label9.Text = date;
                    break;
            }
        }
    }


    //Update status of the application
    protected void Change_Status(object sender, EventArgs e)
    {
        //Set all other rows to inactive so that only 1 active status for each application
        string query = String.Format("UPDATE [vw_Status] SET [Active] = '0' WHERE [Matrix_No] = '{0}' AND [Session] = '{1}'", matrixNo, session);

        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            { }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        //Insert new record into application status details table
        string status = ddlStatus.SelectedValue;
        string remark;
        string date;

        switch (status)
        {
            case "BIA_03":
                remark = "Supervisor commented on the application";
                break;

            case "BIA_04":
                remark = "Application received by faculty";
                break;

            case "BIA_05":
                remark = "Application approved by faculty";
                break;

            case "BIA_06":
                remark = "Interview letter sent";
                break;

            case "BIA_07":
                remark = "Application result";
                break;

            case "BIA_08":
                remark = "Offer letter sent";
                break;

            case "BIA_09":
                remark = "Supporting documents received";
                break;

            default:
                remark = "";
                break;
        }

        date = tbDate.Text;

        query = String.Format("INSERT INTO [APP_STATUS_DETAILS] (App_Code, Status, Remark, Date) VALUES ({0}, '{1}', '{2}', '{3}')", code, status, remark, date);

        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            { }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        Response.Redirect(Request.RawUrl);
    }
}