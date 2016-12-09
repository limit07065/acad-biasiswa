using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UGStudent_Personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getData();
        Session["matricNo"] = "A14CS0095";
    }

  protected void getData()
    {
        DataView stud_Address = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in stud_Address)
        {
            DataRow row = drv.Row;
            lblSadd.Text = row["Address1"].ToString();
            lblSadd1.Text = row["Address2"].ToString();
            lblPost.Text = row["Postcode"].ToString();
            lblCity.Text = row["City"].ToString();
            lblState.Text = row["State"].ToString();
            
        }

        DataView parentF = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
        foreach (DataRowView drv in parentF)
        {
            DataRow row = drv.Row;

            lblFname.Text = row["Name"].ToString();
            lblFOcc.Text = row["Occupation"].ToString();
            lblFsalary.Text = row["Salary"].ToString();
            lblphone.Text = row["Contact"].ToString();
            
        }

        DataView parentAdd = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
        foreach (DataRowView drv in parentAdd)
        { DataRow row = drv.Row;
        lblFadd.Text = row["Address1"].ToString();
        lblFpost.Text = row["Postcode"].ToString();
        lblFstate.Text = row["State"].ToString();
        lblFcity.Text = row["City"].ToString();
   
        }
        DataView parentM = (DataView)SqlDataSource4.Select(DataSourceSelectArguments.Empty);
        foreach (DataRowView drv in parentM)
        {
            DataRow row = drv.Row;
            lblMname.Text = row["Name"].ToString();
            lblMOcc.Text = row["Occupation"].ToString();
            lblMsalary.Text = row["Salary"].ToString();
            
        }
      
    }
    
}