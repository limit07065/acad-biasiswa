using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class UGStudent_frmPersonal : System.Web.UI.Page
{
    protected string session;
    protected DataTable dt;
    protected DataSet ds;
    protected static string ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    protected static SqlConnection con = new SqlConnection(ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        getData();
        Session["matricNo"] = "MC123456";


    }

    protected void getData()
    {


        DataView studentInfo = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in studentInfo)
        {
            DataRow row = drv.Row;
            lblName.Text = row["Name"].ToString();
            lblPhone.Text = row["Contact"].ToString();
            lblEmail.Text = row["email"].ToString();
            lblNation.Text = row["Nationality"].ToString();
            lblAdd.Text = row["address"].ToString();
            lblRel.Text = row["Raligion"].ToString();
            lblIc.Text = row["ic"].ToString();
            lblDob.Text = row["DOB"].ToString();
            lblyear.Text = row["age_year"].ToString();
            lblmonth.Text = row["age_month"].ToString();
            lblplace.Text = row["BirthPlace"].ToString();
            lblmatric.Text = row["Matric"].ToString();



        }

        DataView parentInfo = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in parentInfo)
        {
            DataRow row = drv.Row;
            lblguard1.Text = row["Name"].ToString();
            lblIC1.Text = row["IC"].ToString();
            lblNation1.Text = row["Nationality"].ToString();
            lblSalary1.Text = row["Salary"].ToString();
            lblphone1.Text = row["phone"].ToString();
            lblocc1.Text = row["Occupation"].ToString();
        }
        DataView parentInfo2 = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in parentInfo2)
        {
            DataRow row = drv.Row;

            lblguard2.Text = row["Name"].ToString();
            lblIC2.Text = row["IC"].ToString();
            lblNation2.Text = row["Nationality"].ToString();
            lblSalary2.Text = row["Salary"].ToString();
            lblphone2.Text = row["phone"].ToString();
            lblocc2.Text = row["Occupation"].ToString();
        }

        DataView studAward = (DataView)SqlDataSource4.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in studAward)
        {
            DataRow row = drv.Row;

            lblacname.Text = row["Name Of reward"].ToString();
            lblDate.Text = row["Date"].ToString();
            lblLevel.Text = row["Level"].ToString();
            
        }

    }
}


