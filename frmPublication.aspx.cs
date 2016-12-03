using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmPublication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(Request.QueryString["appNo"]))
        {
            Response.Redirect("SPS/listApplication.aspx");
        }
        if (!IsPostBack)
        {
            loadStudentInfo();
          
        }
    }

    protected void loadStudentInfo()
    {
        DataView studentInfo = (DataView)SqlDataSourceStudentInfo.Select(DataSourceSelectArguments.Empty);
        
        foreach (DataRowView drv in studentInfo)
        {
            DataRow row = drv.Row;
            lblFullName.Text = row["Name"].ToString();
            lblMatricNo.Text = row["matrix_no"].ToString();
            lblSupervisor.Text = row["supervisor"].ToString();   
        }
    }

    



}