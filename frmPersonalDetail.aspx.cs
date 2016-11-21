using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;

public partial class frmPersonalDetails : System.Web.UI.Page
{
    protected string name, matrixNo, gender, dob, stateOfBirth, religion, race, 
        nationality, country, currCountry, marrigageStatus, 
        registrationDate, mailAddr1, mailAddr2, mailPostcode, mailCity, mailState, 
        mailTelNo, addr1, addr2, postcode, city, state, telNo, staffNo, svName, svPost, svEm; 

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void getData()
    {
        string ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename='D:\TDDOWNLOAD\Documents\UTM\Sem 5\AD\TemplateAcad\App_Data\AIMS.mdf';Integrated Security=True;User Instance=True";

        matrixNo = Request.Form["matrixNo"];

        string query = "SELECT * FROM [STUDENT] WHERE [Matrix_No] = '" + matrixNo + "'";

        OracleConnection con = new OracleConnection(ConnectionString);
        OracleCommand command = new OracleCommand(query, con);

        try{
            con.Open();

            OracleDataReader reader = command.ExecuteReader();

            while(reader.Read())
            {
                name = (reader["Name"] == DBNull.Value) ? "" : reader["Name"].ToString();
                gender = (reader["Gender"] == DBNull.Value) ? "" : reader["Gender"].ToString();
                dob = (reader["DOB"] == DBNull.Value) ? "" : reader["DOB"].ToString();
                stateOfBirth = (reader["State_Birth"] == DBNull.Value) ? "" : reader["State_Birth"].ToString();
                religion = (reader["Religion"] == DBNull.Value) ? "" : reader["Religion"].ToString();
                race = (reader["Race"] == DBNull.Value) ? "" : reader["Race"].ToString();
                nationality = (reader["Nationality"] == DBNull.Value) ? "" : reader["Nationality"].ToString();
                country = (reader["Country"] == DBNull.Value) ? "" : reader["Country"].ToString();
                currCountry = (reader["Curr_Country"] == DBNull.Value) ? "" : reader["Curr_Country"].ToString();
                marrigageStatus = (reader["Marriage_Status"] == DBNull.Value) ? "" : reader["Marriage_Status"].ToString();
                registrationDate = (reader["Registration_Date"] == DBNull.Value) ? "" : reader["Registration_Date"].ToString();
                country = (reader["Country"] == DBNull.Value) ? "" : reader["Country"].ToString();
                country = (reader["Country"] == DBNull.Value) ? "" : reader["Country"].ToString();
                country = (reader["Country"] == DBNull.Value) ? "" : reader["Country"].ToString();
                country = (reader["Country"] == DBNull.Value) ? "" : reader["Country"].ToString();
                country = (reader["Country"] == DBNull.Value) ? "" : reader["Country"].ToString();
                country = (reader["Country"] == DBNull.Value) ? "" : reader["Country"].ToString();
                country = (reader["Country"] == DBNull.Value) ? "" : reader["Country"].ToString();
                country = (reader["Country"] == DBNull.Value) ? "" : reader["Country"].ToString();
            }
        }

    }
}