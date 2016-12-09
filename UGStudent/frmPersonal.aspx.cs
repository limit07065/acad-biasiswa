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
    protected static string ConnectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ConnectionString;
    protected static SqlConnection con = new SqlConnection(ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        getData();
        Session["matricNo"] = "A14CS0095";
        Session["matric_p1"] = "A14CS0095";
        Session["Relation"] = "Father";
        Session["Relation2"] = "Mother";


    }

    protected void getData()
    {


        DataView studentInfo = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in studentInfo)
        {
            DataRow row = drv.Row;
            lblName.Text = row["Name"].ToString();
            lblSign.Text = row["Name"].ToString();
            lblPhone.Text = row["Contact"].ToString();
            lblEmail.Text = row["Email"].ToString();
            lblNation.Text = row["Nationality"].ToString();
            lblRel.Text = row["Religion"].ToString();
            lblIC.Text = row["IC_Passport"].ToString();
            lblDob.Text = row["DOB"].ToString();
            lblplace.Text = row["State_Birth"].ToString();
            lblmatric.Text = row["Matrix_No"].ToString();
            lblMStatus.Text = row["Description"].ToString();



        }

      DataView studAdd = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in studAdd)
        {
            DataRow row = drv.Row;
            lblAdd.Text = row["Address1"].ToString() + " " + row["Address2"].ToString() + ", " + row["Postcode"].ToString() + ", " + row["City"].ToString() + ", " + row["State"].ToString();
            lblAdd1.Text = row["Address1"].ToString() + " " + row["Address2"].ToString() + ", " + row["Postcode"].ToString() + ", " + row["City"].ToString() + ", " + row["State"].ToString();
        }


        DataView parentInfo = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in parentInfo)
        {
            DataRow row = drv.Row;

            lblguard1.Text = row["Name"].ToString();
            lblIC1.Text = row["IC"].ToString();
            lblNation1.Text = row["Nationality"].ToString();
             lblSalary1.Text = row["Salary"].ToString();
           lblphone1.Text = row["Contact"].ToString();
            lblocc1.Text = row["Occupation"].ToString();
        }

       DataView parentInfo2 = (DataView)SqlDataSource4.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in parentInfo2)
        {
            DataRow row = drv.Row;

            lblguard2.Text = row["Name"].ToString();
            lblIC2.Text = row["IC"].ToString();
            lblNation2.Text = row["Nationality"].ToString();
             lblSalary2.Text = row["Salary"].ToString();
           lblphone2.Text = row["Contact"].ToString();
            lblocc2.Text = row["Occupation"].ToString();
            
        }

        DataView publish = (DataView)SqlDataSource5.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in publish)
        {
            DataRow row = drv.Row;

            lblpaper.Text = row["title"].ToString();
            lblTypeAutho.Text = row["type_authorship"].ToString();
            lblType.Text = row["type"].ToString();
            lblimpact.Text = row["impact_factor"].ToString();
            lblStatusPaper.Text = row["status_paper"].ToString();
            lblAuthor.Text = row["authors"].ToString();


        }

    }
}


