using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class frmAccount : System.Web.UI.Page
{
    protected string session, arrears = "", accStatus="";
    protected char semester;
    protected static string ConnectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ConnectionString;
    protected static SqlConnection con = new SqlConnection(ConnectionString);
    protected double totalDebit = 0.00, totalCredit = 0.00, balance = 0.00;

    protected void Page_Load(object sender, EventArgs e)
    {
        getAccInfo();
    }

    protected void getAccInfo()
    {
        string matrixNo = Request.QueryString["matrixNo"];
        session = Request.QueryString["session"];
        semester = session[8];
        DataSet ds = new DataSet();

        string stuQuery = String.Format("SELECT [Reg_Date] FROM [vw_StuInfo] WHERE [Matrix_No] = '{0}'", matrixNo);
        string accQuery = String.Format("SELECT * FROM [vw_Balance] WHERE [Matrix_No] = '{0}' AND [Session] = '{1}'", matrixNo, session);

        SqlDataAdapter stuAdapter = new SqlDataAdapter(stuQuery, con);
        SqlDataAdapter accAdapter = new SqlDataAdapter(accQuery, con);
        stuAdapter.Fill(ds, "stuInfo");
        accAdapter.Fill(ds, "accInfo");
        DataTable dt1 = ds.Tables["stuInfo"];
        DataTable dt2 = ds.Tables["accInfo"];

        //Retrieve basic info in Account tab
        DataRow dr1 = dt1.Rows[0];
        lblRegDate.Text = ((DateTime)dr1["Reg_Date"]).ToString("dd MMM yyyy");

        //Retrieve total arrears
        dr1 = dt2.Rows[0];
        arrears = String.Format(new System.Globalization.CultureInfo("ms-MY"), " {0:C}", dr1["Arrears"]);

        foreach(DataRow dr in dt2.Rows)
        {
            lblAccNo.Text = dr["Account_No"].ToString();
            totalDebit += Double.Parse(dr["Debit"].ToString());
            totalCredit += Double.Parse(dr["Credit"].ToString());
        }
        balance = totalDebit - totalCredit;

        if (balance != 0.00)
        {
            lblDebit.Text = String.Format(new System.Globalization.CultureInfo("ms-MY"), " {0:c}", totalDebit);
            lblCredit.Text = String.Format(new System.Globalization.CultureInfo("ms-MY"), " {0:c}", totalCredit);
            accStatus = "Outstanding Account Balance";
        }
    }
}