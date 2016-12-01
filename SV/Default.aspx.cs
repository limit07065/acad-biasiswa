using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SV_Default : System.Web.UI.Page
{

    protected void Page_Load()
    {
        Session["staffNo"] = "7026";
    }

    protected void staffNo(object sender, EventArgs e)
    {
        Session["staffNo"] = TextBox1.Text;
    }

   
}