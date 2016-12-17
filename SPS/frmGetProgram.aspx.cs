using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class frmGetProgram : System.Web.UI.Page
{
    protected string session;
    protected static string ConnectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ConnectionString;
    protected static SqlConnection con = new SqlConnection(ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        getData();
    }

    protected void getData()
    {
        string matrixNo = Request.QueryString["matrixNo"];
        session  = Request.QueryString["session"];

        string query = String.Format("SELECT [Program], [Faculty_Fullname] FROM [vw_StuInfo] WHERE [Matrix_No] = '{0}'", matrixNo);
        SqlDataAdapter adapter = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adapter.Fill(ds, "Program");
        DataTable dt = ds.Tables[0];

        foreach (DataRow dr in dt.Rows)
        {
            lblProgram.Text = dr["Program"].ToString();
            lblFaculty.Text = dr["Faculty_Fullname"].ToString();
        }
    }
}