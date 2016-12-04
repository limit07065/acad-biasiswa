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

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)           
        {
            TextBox mark =  e.Row.FindControl("tbMark") as TextBox;
            TextBox myra2 = e.Row.FindControl("tbMyra2") as TextBox;
            DataRowView rv = (DataRowView)e.Row.DataItem;
            
            mark.Text = rv["mark"].ToString();
            myra2.Text =rv["myra2"].ToString();
        }        
    }

    protected void Update_Mark(object sender, EventArgs e)
    { 
        SqlDataSourcePublication.UpdateCommand = "";
        foreach (GridViewRow row in GridView1)
        {
        }
        
    }

    



}