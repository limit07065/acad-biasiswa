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
            
        }


    }
}

