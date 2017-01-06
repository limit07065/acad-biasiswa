using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UGStudent_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["matrixNo"] = "A14CS0095";
        Session["session"] = "201620171";

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView rv = (DataRowView)e.Row.DataItem;
            
            Label status = e.Row.FindControl("lblStatus") as Label;
            if(rv["Selected"].ToString().Trim().Equals("2"))
                status.Text = "Selected";
            else
                status.Text = "Submitted";

            LinkButton viewCompleteForm = e.Row.FindControl("viewCompleteForm") as LinkButton;
            string jsFunction2 = String.Format("viewCompleteForm('{0}');", GridView1.DataKeys[e.Row.DataItemIndex]["Matrix_No"].ToString().Trim());
            viewCompleteForm.Attributes.Add("OnClick", jsFunction2);
            
        }
    }
}