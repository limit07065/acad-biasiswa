using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class frmRequirement : System.Web.UI.Page
{
    protected String code, name, addr1, addr2, postcode, city, state, telNo, ageLimit, jobLimit, cpaLimit, semLimit, regLimit, nationality;

    protected void Page_Load(object sender, EventArgs e)
    {
        getData();
    }

    protected void getData()
    {
        String ConnectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ConnectionString;

        code = Request.QueryString["type"];
        String query = "SELECT * FROM [vw_Scholarship] WHERE ([Code] = '" + code + "')";

        SqlConnection con = new SqlConnection(ConnectionString);
        SqlCommand command = new SqlCommand(query, con);

        try
        {
            con.Open();

            SqlDataReader reader = command.ExecuteReader();

            while (reader.Read())
            {
                name = (reader["Name"] == DBNull.Value) ? "" : reader["Name"].ToString();
                addr1 = (reader["Address1"] == DBNull.Value) ? "" : reader["Address1"].ToString();
                addr2 = (reader["Address2"] == DBNull.Value) ? "" : reader["Address2"].ToString();
                postcode = (reader["Postcode"] == DBNull.Value) ? "" : reader["Postcode"].ToString();
                city = (reader["City"] == DBNull.Value) ? "" : reader["City"].ToString();
                state = (reader["State"] == DBNull.Value) ? "" : reader["State"].ToString();
                telNo = (reader["TelNo"] == DBNull.Value) ? "" : reader["TelNo"].ToString();
                ageLimit = (reader["Age_Limit"] == DBNull.Value) ? "" : reader["Age_Limit"].ToString();
                jobLimit = (reader["Job_Limit"] == DBNull.Value) ? "" : reader["Job_Limit"].ToString();
                cpaLimit = (reader["CPA_Limit"] == DBNull.Value) ? "0" : reader["CPA_Limit"].ToString();
                semLimit = (reader["Sem_Limit"] == DBNull.Value) ? "" : reader["Sem_Limit"].ToString();
                regLimit = (reader["Reg_Limit"] == DBNull.Value) ? "" : reader["Reg_Limit"].ToString();
                nationality = (reader["Nationality"] == DBNull.Value) ? "" : reader["Nationality"].ToString();
            }

            con.Close();
            con.Dispose();
        }
        catch (SqlException ex)
        {
        }

        ddlNationality.SelectedValue = nationality;
    }
}