using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UGStudent_frmDeclare : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsValid == true)
            Response.Redirect("frmHome.aspx");
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;
        if (CheckBox1.Checked)
            args.IsValid = true;
    }
}