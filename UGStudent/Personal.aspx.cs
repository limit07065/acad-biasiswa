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
      /*  getData();
        Session["matricNo"] = "MC123456";*/
    }

  /*  protected void getData()
    {
        DataView parent1 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in parent1)
        {
            DataRow row = drv.Row;
            lblname.Text = row["Name"].ToString();
            lblAdd.Text = row["Address"].ToString();
            lblHp.Text = row["phone"].ToString();
            lblJob.Text = row["Occupation"].ToString();
            lblSal.Text = row["Salary"].ToString();

        }

        DataView parent2 = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
        foreach (DataRowView drv in parent2)
        {
            DataRow row = drv.Row;

            lblname2.Text = row["Name"].ToString();
           lblSal2.Text = row["Salary"].ToString();
           lblJob2.Text = row["Occupation"].ToString();

        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    
    protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }*/
}