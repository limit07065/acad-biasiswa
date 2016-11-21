using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SV_View : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {       

            if (!IsPostBack)
            {
               
                showProfile();                
               
            }
        }

    }

    protected void showProfile()
    {
       
        lblName.Text = "Umar in Khalid";
        lblProgramme.Text="Doctor of Philosophy Civil Engineering";
       
    }
}