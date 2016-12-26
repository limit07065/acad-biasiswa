using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class UGStudent_frmPersonal : System.Web.UI.Page
{
    protected static string ConnectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ConnectionString;
   protected static SqlConnection con = new SqlConnection(ConnectionString); 
   protected DataTable dt;
    protected DataSet ds;
    protected SqlDataAdapter adapter;
   protected string matrixNo;


    protected void Page_Load(object sender, EventArgs e)
    {
        getData();
       /*Session["Relation"] = "Father";
        Session["Relation2"] = "Mother";

        Query mat querystring*/
    }

    protected void getData()
    {
        //Get matrix no from Http POST data
        matrixNo = Request.QueryString["matrixNo"];

        //Creating several database queries
        string stuQuery = String.Format("SELECT * FROM [vw_StuInfo] WHERE [Matrix_No] = '{0}'", matrixNo);
        string addrQuery = String.Format("SELECT * FROM [ADDRESS] WHERE [Matrix_No] = '{0}'", matrixNo);
        string parentQuery = String.Format("SELECT * FROM [GUARDIAN] WHERE [Matrix_No]= '{0}'", matrixNo);
        string publishQuery = String.Format("SELECT * FROM [PUBLICATION] WHERE [Matrix_No]='{0}'", matrixNo);

        //Creating data adapter for each query
        SqlDataAdapter stuAdapter = new SqlDataAdapter(stuQuery, con);
        SqlDataAdapter addrAdapter = new SqlDataAdapter(addrQuery, con);
        SqlDataAdapter parentAdapter = new SqlDataAdapter(parentQuery, con);
        SqlDataAdapter publishAdapter = new SqlDataAdapter(publishQuery, con);

        //Add all query results into dataset with specific datatable name
        ds = new DataSet();
        stuAdapter.Fill(ds, "stuInfo");
        addrAdapter.Fill(ds, "Addr");
        parentAdapter.Fill(ds, "parent");
        publishAdapter.Fill(ds, "Publication");
        

        //Fill in student info from dataset
        dt = ds.Tables["stuInfo"];

        foreach (DataRow dr in dt.Rows)
        {
            lblName.Text = dr["Name"].ToString();
            lblDob.Text = ((DateTime)dr["DOB"]).ToString("dd-MMM-yyyy");
            lblRel.Text = dr["Religion"].ToString();
            lblNation.Text = dr["Nationality"].ToString();
            lblIC.Text = dr["IC_Passport"].ToString();
            lblmatric.Text = dr["Matrix_No"].ToString();
            lblEmail.Text = dr["Email"].ToString();
            lblPhone.Text =dr["Contact"].ToString();
            lblplace.Text = dr["State_Birth"].ToString();
            
        }

        //Fill in addresses 
        dt = ds.Tables["Addr"];

        foreach (DataRow dr in dt.Rows)
        {
            if (dr["Address_Type"].ToString() == "1")
            {
                lblAdd.Text = dr["Address1"].ToString()+","+dr["Address2"].ToString()+","+dr["Postcode"].ToString() +","+ dr["City"].ToString()+", "+ dr["State"].ToString();
             }
            else if (dr["Address_Type"].ToString() == "4")
            {
                lblAdd1.Text = dr["Address1"].ToString()+","+dr["Address2"].ToString()+","+dr["Postcode"].ToString() +","+ dr["City"].ToString()+", "+ dr["State"].ToString();
             
            }
        }

         dt = ds.Tables["parent"];
        foreach (DataRow dr in dt.Rows)
        { 
            if(dr["Relation"].ToString()=="Father")
            {
                lblguard1.Text = dr["Name"].ToString();
                lblIC1.Text = dr["IC"].ToString();
                lblNation1.Text = dr["Nationality"].ToString();
                lblSalary1.Text = dr["Salary"].ToString();
                lblphone1.Text = dr["Contact"].ToString();
                lblocc1.Text = dr["Occupation"].ToString();
            }
            else if(dr["Relation"].ToString()=="Mother")
            {
                lblguard2.Text = dr["Name"].ToString();
                lblIC2.Text = dr["IC"].ToString();
                lblNation2.Text = dr["Nationality"].ToString();
                lblSalary2.Text = dr["Salary"].ToString();
                lblphone2.Text = dr["Contact"].ToString();
                lblocc2.Text = dr["Occupation"].ToString();
            }
        }


        dt = ds.Tables["Publication"];
        foreach (DataRow dr in dt.Rows)
        {
            lblpaper.Text = dr["title"].ToString();
            lblTypeAutho.Text = dr["type_authorship"].ToString();
            lblType.Text = dr["type"].ToString();
            lblimpact.Text = dr["impact_factor"].ToString();
            lblStatusPaper.Text = dr["status_paper"].ToString();
            lblAuthor.Text = dr["authors"].ToString();
            lbldate.Text = dr["Date_publication"].ToString();
        }

    }
      



    }



