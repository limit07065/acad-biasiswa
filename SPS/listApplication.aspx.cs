using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;

public partial class SPS_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlSession.SelectedValue = "20162017";
            ddlSemester.SelectedValue = "1";
       

        }
        
        
    } 

    protected void btnSelectCurrent_Click(object sender, EventArgs e)
    {
        ddlSession.SelectedValue = "20162017";
        ddlSemester.SelectedValue = "1";
    }

    protected void  btnSelectAll_Click(object sender, EventArgs e)
    {
        ddlSession.SelectedValue = "";
        ddlSemester.SelectedValue = "";
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView rv = (DataRowView)e.Row.DataItem;
            

            LinkButton viewStuInfo = e.Row.FindControl("viewStuInfo") as LinkButton;
            string jsFunction1 = String.Format("viewStuInfo('{0}');", e.Row.Cells[3].Text.Trim());
            viewStuInfo.Attributes.Add("OnClick", jsFunction1);
            viewStuInfo.Text = rv["Stu_Name"].ToString();

            Label date = e.Row.FindControl("lblDate") as Label;
            date.Text = ((DateTime)rv["App_Date"]).ToString("dd-MMM-yyyy");

            LinkButton viewMark = e.Row.FindControl("viewMark") as LinkButton;
            string jsFunction2 = String.Format("viewMark('{0}','{1}');", GridView1.DataKeys[e.Row.DataItemIndex]["App_No"].ToString().Trim(), GridView1.DataKeys[e.Row.DataItemIndex]["Short_Name"].ToString().Trim());
            viewMark.Attributes.Add("OnClick", jsFunction2);
            viewMark.Text = rv["Mark"].ToString();

            LinkButton viewStatus = e.Row.FindControl("viewStatus") as LinkButton;
            string jsFunction3 = String.Format("viewStatus('{0}', '{1}');", e.Row.Cells[3].Text.Trim(), e.Row.Cells[5].Text.Trim());
            viewStatus.Attributes.Add("OnClick", jsFunction3);
            viewStatus.Text = rv["App_Status"].ToString();
        }
    }
}