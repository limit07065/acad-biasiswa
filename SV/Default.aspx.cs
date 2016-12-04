using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class SV_Default : System.Web.UI.Page
{

    protected void Page_Load()
    {
        if (!IsPostBack)
        {
            Session["staffNo"] = "7026";

        }


    }

    protected void staffNo(object sender, EventArgs e)
    {
        Session["staffNo"] = TextBox1.Text;

    }

    protected void gvScholarship_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView rv = (DataRowView)e.Row.DataItem;
            Label date = e.Row.FindControl("lblDate") as Label;
            date.Text = ((DateTime)rv["App_Date"]).ToString("dd-MMM-yyyy");

        }
    }

}