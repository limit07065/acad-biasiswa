﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UGStudent_frmStudentActivities : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        Session["matricNo"] = "A14CS0095";

    }

    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmStudentDeclare.aspx");

    }
}