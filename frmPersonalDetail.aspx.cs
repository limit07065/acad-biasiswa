using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class frmPersonalDetails : System.Web.UI.Page
{
    protected static string ConnectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ConnectionString;
    protected static SqlConnection con = new SqlConnection(ConnectionString);
    protected DataTable dt;
    protected DataSet ds;
    protected string matrixNo;

    protected void Page_Load(object sender, EventArgs e)
    {
        getData();
        DropDownListData();
    }

    protected void getData()
    {
        //Get matrix no from Http POST data
        matrixNo = Request.QueryString["matrixNo"];

        //Creating several database queries
        string stuQuery = String.Format("SELECT * FROM [vw_StuInfo] WHERE [Matrix_No] = '{0}'", matrixNo);
        string addrQuery = String.Format("SELECT * FROM [ADDRESS] WHERE [Matrix_No] = '{0}'", matrixNo);

        //Creating data adapter for each query
        SqlDataAdapter stuAdapter = new SqlDataAdapter(stuQuery, con);
        SqlDataAdapter addrAdapter = new SqlDataAdapter(addrQuery, con);

        //Add all query results into dataset with specific datatable name
        ds = new DataSet();
        stuAdapter.Fill(ds, "stuInfo");
        addrAdapter.Fill(ds, "Addr");

        //Fill in student info from dataset
        dt = ds.Tables["stuInfo"];

        foreach (DataRow dr in dt.Rows)
        {
            lblName.Text = dr["Name"].ToString();
            lblGender.Text = dr["Gender"].ToString();
            lblDOB.Text = ((DateTime)dr["DOB"]).ToString("dd-MMM-yyyy");
            lblMatrix.Text = dr["Matrix_No"].ToString();
            lblStateOfBirth.Text = dr["State_Birth"].ToString();
            lblReligion.Text = dr["Religion"].ToString();
            lblRace.Text = dr["Race"].ToString();
            lblNationality.Text = dr["Nationality"].ToString();
            lblCountry.Text = dr["Country"].ToString();
            lblCurrCountry.Text = dr["Curr_Country"].ToString();
            lblRegDate.Text = ((DateTime)dr["Reg_Date"]).ToString("dd-MMM-yyyy");
        }

        //Fill in addresses 
        dt = ds.Tables["Addr"];

        foreach (DataRow dr in dt.Rows)
        {
            if (dr["Address_Type"].ToString() == "1")
            {
                lblMailAddr1.Text = dr["Address1"].ToString();
                lblMailAddr2.Text = dr["Address2"].ToString();
                lblMailPostcode.Text = dr["Postcode"].ToString();
                lblMailCity.Text = dr["City"].ToString();
                lblMailState.Text = dr["State"].ToString();
                lblMailTelNo.Text = dr["Tel_No"].ToString();
            }
            else if (dr["Address_Type"].ToString() == "4")
            {
                lblAddr1.Text = dr["Address1"].ToString();
                lblAddr2.Text = dr["Address2"].ToString();
                lblPostcode.Text = dr["Postcode"].ToString();
                lblCity.Text = dr["City"].ToString();
                lblCity.Text = dr["State"].ToString();
                lblTelNo.Text = dr["Tel_No"].ToString();
            }
        }

    }

    protected void DropDownListData()
    {
        matrixNo = Request.QueryString["matrixNo"];

        string query = String.Format("SELECT [Session] FROM [Account] WHERE [Matrix_No] = '{0}' ORDER BY [Session]", matrixNo);
        SqlDataAdapter adapter = new SqlDataAdapter(query, con);
        adapter.Fill(ds, "Session");
        dt = ds.Tables["Session"];

        foreach (DataRow dr in dt.Rows)
        {
            string rs = dr["Session"].ToString();
            asesisem.Items.Add(new ListItem(rs, rs));
            sesisem.Items.Add(new ListItem(rs, rs));
        }
    }

    protected string formatSession(string input)
    {
        string session="";

        for (int i = 0; i < 4; i++)
            session += input[i];
        session += " / ";
        for (int i = 4; i < 8; i++)
            session += input[i];

        return session;
    }

    protected char formatSemester(string input)
    {
        return input[8];
    }

    protected void svRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater svRpt = sender as Repeater; // Get the Repeater control object.

        // If the Repeater contains no data.
        if (svRpt != null && svRpt.Items.Count < 1)
        {
            if (e.Item.ItemType == ListItemType.Footer)
            {
                // Show the Error Label (if no data is present).
                Label lblErrorMsg = e.Item.FindControl("emptySV") as Label;
                lblErrorMsg.Text = "No record found";
            }
        }
    }

    protected void exRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        Repeater exRpt = sender as Repeater; // Get the Repeater control object.

        // If the Repeater contains no data.
        if (exRpt != null && exRpt.Items.Count < 1)
        {
            if (e.Item.ItemType == ListItemType.Footer)
            {
                // Show the Error Label (if no data is present).
                Label lblErrorMsg = e.Item.FindControl("emptyEX") as Label;
                lblErrorMsg.Text = "No record found";
            }
        }
    }
}