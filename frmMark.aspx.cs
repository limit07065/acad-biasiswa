using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class frmMark : System.Web.UI.Page
{
    protected static string ConnectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ConnectionString;
    protected static SqlConnection con = new SqlConnection(ConnectionString);
    protected DataTable dt;
    protected DataSet ds;
    protected string appNo;

    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string.IsNullOrEmpty(Request.QueryString["type"])) || (string.IsNullOrEmpty(Request.QueryString["appNo"])))
        {
            Response.Redirect("SPS/listApplication.aspx");
        }
        if (!IsPostBack)
        {
            getData();
        }

        string jsFunction1 = String.Format("viewPublications('{0}');", Request.QueryString["appNo"]);
        btnPublication.Attributes.Add("OnClick", jsFunction1);

    }

    protected void getData()
    {
        //Get matrix no and type from Http POST data
        appNo = Request.QueryString["appNo"];
        String type = Request.QueryString["type"];
        String appQuery = "";
        if (type == "Zamalah")
        {
            //Creating several database queries mark table undecided
            appQuery = String.Format("SELECT * FROM [vw_zamalah] WHERE [App_No] = '{0}' ", appNo);
        }
        else if (type == "PNF")
        {
            //Creating several database queries mark table undecided
            appQuery = String.Format("SELECT * FROM [vw_PNF] WHERE [App_No] = '{0}' ", appNo);
        }

        //Creating data adapter for each query
        SqlDataAdapter appAdapter = new SqlDataAdapter(appQuery, con);

        //Add all query results into dataset with specific datatable name
        ds = new DataSet();
        appAdapter.Fill(ds, "appInfo");

        //Fill in student info from dataset
        dt = ds.Tables["appInfo"];

        Decimal mark = 0;
        foreach (DataRow dr in dt.Rows)
        {
            if (type == "Zamalah")
            {
                //marks for zamalah
                //RU University / RU None UTM / None RU
                RU.Text = dr["RU"].ToString();

                //proposal attached
                lampiran.Text = dr["attachment"].ToString();
                //academic awards
                anugerahChancellor.Text = dr["chancellor"].ToString();
                anugerahPChancellor.Text = dr["pro_chancellor"].ToString();
                alumni.Text = dr["alumni"].ToString();
                company.Text = dr["special_company"].ToString();
                dean.Text = dr["dean"].ToString();

                mark += Decimal.Parse(RU.Text);
                mark += Decimal.Parse(lampiran.Text);
                mark += Decimal.Parse(anugerahChancellor.Text);
                mark += Decimal.Parse(anugerahPChancellor.Text);
                mark += Decimal.Parse(alumni.Text);
                mark += Decimal.Parse(company.Text);
                mark += Decimal.Parse(dean.Text);
            }
            else if (type == "PNF")
            {
                //marks for PNF
                //master qualification either UTM or Other
                MQ.Text = dr["master_qualification"].ToString();

                //Academic Awards
                aaAlumni.Text = dr["alumni"].ToString();
                aaSpecialCompany.Text = dr["special_company"].ToString();
                aaBestStudentSPS.Text = dr["best_student_sps"].ToString();
                aaBestStudentFaculty.Text = dr["best_student_faculty"].ToString();

                //Research Award
                raBestPaper.Text = dr["best_paper"].ToString();
                raBestSpeaker.Text = dr["best_speaker"].ToString();
                raResearch.Text = dr["research"].ToString();
                raOthers.Text = dr["others"].ToString();

                //Co-curricular acftivities
                coPresident.Text = dr["president"].ToString();
                coPresidentLevel.Text = dr["president_level"].ToString();
                coVicePresident.Text = dr["vice_president"].ToString();
                coVicePresidentLevel.Text = dr["vice_president_level"].ToString();
                coBursar.Text = dr["bursar"].ToString();
                coBursarLevel.Text = dr["bursar_level"].ToString();
                coSecretary.Text = dr["secretary"].ToString();
                coSecretaryLevel.Text = dr["secretary_level"].ToString();
                coCommittee.Text = dr["committee"].ToString();
                coCommitteeLevel.Text = dr["committee_level"].ToString();

                mark += Decimal.Parse(aaAlumni.Text);
                mark += Decimal.Parse(MQ.Text);
                mark += Decimal.Parse(aaSpecialCompany.Text);
                mark += Decimal.Parse(aaBestStudentSPS.Text);
                mark += Decimal.Parse(aaBestStudentFaculty.Text);
                mark += Decimal.Parse(raBestPaper.Text);
                mark += Decimal.Parse(raBestSpeaker.Text);
                mark += Decimal.Parse(raResearch.Text);
                mark += Decimal.Parse(raOthers.Text);
                mark += Decimal.Parse(coPresident.Text);
                mark += Decimal.Parse(coPresidentLevel.Text);
                mark += Decimal.Parse(coVicePresident.Text);
                mark += Decimal.Parse(coVicePresidentLevel.Text);
                mark += Decimal.Parse(coBursar.Text);
                mark += Decimal.Parse(coBursarLevel.Text);
                mark += Decimal.Parse(coSecretary.Text);
                mark += Decimal.Parse(coSecretaryLevel.Text);
                mark += Decimal.Parse(coCommittee.Text);
                mark += Decimal.Parse(coCommitteeLevel.Text);
            }
            /*
            // both zamalah and PNF
            //journal
            jurnalMarkSA
            jurnalMarkMY
            //conference
            persidanganMarkSA
            persidanganMarkMY
            //books
            bukuMarkSA
            bukuMarkMY
            //books chapter
            bukuCMarkSA
            bukuCMarkMY
            //total publication marks
            totalMarkPubSA
            totalMarkPubMY
            
            overallMarkMY    
             */
            overallMark.Text = mark.ToString();

        }

    }

    protected void Save(object sender, EventArgs e)
    {
        Decimal mark = 0;
        String type = Request.QueryString["type"];
        if (type == "Zamalah")
        {
            SqlDataSourceMark.UpdateCommand = "UPDATE MARK_ZAMALAH SET [ru] = @ru, [attachment] = @attachment, [chancellor] = @chancellor, [pro_chancellor] = @pro_chancellor, [alumni] = @alumni, [special_company] = @special_company, [dean] = @dean WHERE [id] = @id";
            SqlDataSourceMark.UpdateParameters.Add("ru", RU.Text);
            SqlDataSourceMark.UpdateParameters.Add("attachment", lampiran.Text);
            SqlDataSourceMark.UpdateParameters.Add("chancellor", anugerahChancellor.Text);
            SqlDataSourceMark.UpdateParameters.Add("pro_chancellor", anugerahPChancellor.Text);
            SqlDataSourceMark.UpdateParameters.Add("alumni", alumni.Text);
            SqlDataSourceMark.UpdateParameters.Add("special_company", company.Text);
            SqlDataSourceMark.UpdateParameters.Add("dean", dean.Text);
            SqlDataSourceMark.UpdateParameters.Add("id", Request.QueryString["appNo"]);
            SqlDataSourceMark.Update();

            mark += Decimal.Parse(RU.Text);
            mark += Decimal.Parse(lampiran.Text);
            mark += Decimal.Parse(anugerahChancellor.Text);
            mark += Decimal.Parse(anugerahPChancellor.Text);
            mark += Decimal.Parse(alumni.Text);
            mark += Decimal.Parse(company.Text);
            mark += Decimal.Parse(dean.Text);

        }
        else if (type == "PNF")
        {
            //update PNF marks in 3 tables.
            //mark_zamalah table
            SqlDataSourceMark.UpdateCommand = "UPDATE MARK_PNF SET [alumni] = @alumni, [master_qualification] = @mq, [special_company] = @special_company, [best_student_sps]= @aaBestStudentSPS, [best_student_faculty] = @aaBestStudentFaculty WHERE [id] = @id";

            SqlDataSourceMark.UpdateParameters.Add("alumni", aaAlumni.Text);
            SqlDataSourceMark.UpdateParameters.Add("mq", MQ.Text);
            SqlDataSourceMark.UpdateParameters.Add("special_company", aaSpecialCompany.Text);
            SqlDataSourceMark.UpdateParameters.Add("aaBestStudentSPS", aaBestStudentSPS.Text);
            SqlDataSourceMark.UpdateParameters.Add("aaBestStudentFaculty", aaBestStudentFaculty.Text);
            SqlDataSourceMark.UpdateParameters.Add("id", Request.QueryString["appNo"]);
            SqlDataSourceMark.Update();

            mark += Decimal.Parse(aaAlumni.Text);
            mark += Decimal.Parse(MQ.Text);
            mark += Decimal.Parse(aaSpecialCompany.Text);
            mark += Decimal.Parse(aaBestStudentSPS.Text);
            mark += Decimal.Parse(aaBestStudentFaculty.Text);


            //mark_research_award table
            SqlDataSourceMark.UpdateCommand = "UPDATE MARK_RESEARCH_AWARD SET [best_paper] = @best_paper, [best_speaker] = @best_speaker, [research] = @research, [others] = @others WHERE [id] = @id";
            SqlDataSourceMark.UpdateParameters.Add("best_paper", raBestPaper.Text);
            SqlDataSourceMark.UpdateParameters.Add("best_speaker", raBestSpeaker.Text);
            SqlDataSourceMark.UpdateParameters.Add("research", raResearch.Text);
            SqlDataSourceMark.UpdateParameters.Add("others", raOthers.Text);
            //SqlDataSourceMark.UpdateParameters.Add("id", Request.QueryString["appNo"]);
            SqlDataSourceMark.Update();

            mark += Decimal.Parse(raBestPaper.Text);
            mark += Decimal.Parse(raBestSpeaker.Text);
            mark += Decimal.Parse(raResearch.Text);
            mark += Decimal.Parse(raOthers.Text);


            //mark_cocurricular_activities table
            SqlDataSourceMark.UpdateCommand = "UPDATE MARK_COCURRICULAR_ACTIVITIES SET [president] = @president, [president_level] = @president_level,[vice_president] = @vice_president, [vice_president_level] = @vice_president_level, "
                                            + "[bursar] = @bursar, [bursar_level] = @bursar_level, [secretary] = @secretary, [secretary_level] = @secretary_level, [committee] = @committee, [committee_Level] = @committee_level  WHERE [id] = @id";
            SqlDataSourceMark.UpdateParameters.Add("president", coPresident.Text);
            SqlDataSourceMark.UpdateParameters.Add("president_level", coPresidentLevel.Text);
            SqlDataSourceMark.UpdateParameters.Add("vice_president", coVicePresident.Text);
            SqlDataSourceMark.UpdateParameters.Add("vice_president_level", coVicePresidentLevel.Text);
            SqlDataSourceMark.UpdateParameters.Add("bursar", coBursarLevel.Text);
            SqlDataSourceMark.UpdateParameters.Add("bursar_level", coBursarLevel.Text);
            SqlDataSourceMark.UpdateParameters.Add("secretary", coSecretary.Text);
            SqlDataSourceMark.UpdateParameters.Add("secretary_level", coSecretaryLevel.Text);
            SqlDataSourceMark.UpdateParameters.Add("committee", coCommittee.Text);
            SqlDataSourceMark.UpdateParameters.Add("committee_level", coCommitteeLevel.Text);
            //SqlDataSourceMark.UpdateParameters.Add("id", Request.QueryString["appNo"]);
            SqlDataSourceMark.Update();
            
            mark += Decimal.Parse(coPresident.Text);
            mark += Decimal.Parse(coPresidentLevel.Text);
            mark += Decimal.Parse(coVicePresident.Text);
            mark += Decimal.Parse(coVicePresidentLevel.Text);
            mark += Decimal.Parse(coBursar.Text);
            mark += Decimal.Parse(coBursarLevel.Text);
            mark += Decimal.Parse(coSecretary.Text);
            mark += Decimal.Parse(coSecretaryLevel.Text);
            mark += Decimal.Parse(coCommittee.Text);
            mark += Decimal.Parse(coCommitteeLevel.Text);
        }
        //Update marks in application table.
        SqlDataSourceMark.UpdateCommand = "UPDATE  [APPLICATION] SET[Mark] = @mark WHERE [App_No] = @id";
        SqlDataSourceMark.UpdateParameters.Add("mark", mark.ToString());
        SqlDataSourceMark.Update();





    }
}