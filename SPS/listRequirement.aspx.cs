using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.OracleClient;
 
public partial class SPSRequirement_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e) 
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton viewAdd = e.Row.FindControl("viewBtn") as LinkButton;
            string jsFunction1 = "getForm('" + e.Row.Cells[1].Text.Trim() + "');";
            viewAdd.Attributes.Add("OnClick", jsFunction1);

            LinkButton editAdd = e.Row.FindControl("editBtn") as LinkButton;
            string jsFunction2 = "editForm('" + e.Row.Cells[1].Text.Trim() + "');";
            editAdd.Attributes.Add("OnClick", jsFunction2);
        }
    }
}