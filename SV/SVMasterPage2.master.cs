using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SV_SVMasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["acadUserNm"] = "AIR KELAPA BIN KELABU ASAP";
        lblLoggedInUser.Text = Session["acadUserNm"].ToString();

    }

    
}
