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
}