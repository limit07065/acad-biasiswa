﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UGStudent_instruction : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["scholarshipType"] = "174A";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmStudentDetails.aspx");
    }
}