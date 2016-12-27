using
System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UGStudent_frmDeclare : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["matricNo"] = "A14CS0095";
        Session["session"] = "201620171";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (IsValid == true)
        {
            insertScholarship();
            Response.Redirect("default.aspx");

        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = false;
        if (CheckBox1.Checked)
            args.IsValid = true;
    }

    protected void insertScholarship()
    {
        String scholarshipType = Session["scholarshipType"].ToString();
        //insert to application table
        sql.InsertParameters.Add("Matrix_No", Session["matricNo"].ToString());
        sql.InsertParameters.Add("Session", "201620171");
        sql.InsertParameters.Add("App_Date", DateTime.Now.ToString());
        sql.InsertParameters.Add("Type", scholarshipType);
        sql.Insert();

        int appNo = 0;
        DataView dv = (DataView)sql.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in dv)
        {
            DataRow row = drv.Row;
            appNo = (int)row["App_No"];

        }
        sql0.InsertParameters["App_Code"].DefaultValue = appNo.ToString();
        sql0.InsertParameters["Status"].DefaultValue = "BIA_01";
        sql0.InsertParameters["Remark"].DefaultValue = "Application received";
        sql0.InsertParameters["Date"].DefaultValue = DateTime.Now.ToString();
        sql0.InsertParameters["Active"].DefaultValue = "0";
        sql0.Insert();

        //insert to respective table based on scholarship type.
        if(scholarshipType.Equals("174A"))
        {
            insertZamalah(appNo);
        }
        else if (scholarshipType.Equals("176"))
        {   
            insertPNF(appNo);
        }

        //insert to table mark_publication
        insertPublication(appNo);
            

        //insert to app_status_detail table
        String supervisoremail = "";
        DataView dv1 = (DataView)sql1.Select(DataSourceSelectArguments.Empty);
        foreach (DataRowView drv1 in dv1)
        {
            DataRow row1 = drv1.Row;
            supervisoremail = row1["Email"].ToString();
        }

        sql0.InsertParameters["Status"].DefaultValue = "BIA_02";
        sql0.InsertParameters["Remark"].DefaultValue = ("Application sent to " + supervisoremail);
        sql0.InsertParameters["Date"].DefaultValue = DateTime.Now.ToString();
        sql0.InsertParameters["Active"].DefaultValue = "1";
        sql0.Insert();
    }

    protected void insertZamalah(int appNo)
    {
        //table mark zamalah
        sqlScholarship.InsertCommand = "INSERT INTO [MARK_ZAMALAH] ([id])VALUES(@appNo)";
        sqlScholarship.InsertParameters.Add("appNo",appNo.ToString());

    }

    protected void insertPNF(int appNo)
    {
        //Table mark_pnf
        sqlScholarship.InsertCommand = "INSERT INTO [MARK_PNF] ([id])VALUES(@appNo)";
        sqlScholarship.InsertParameters.Add("appNo", appNo.ToString());
        sqlScholarship.Insert();

        //table mark_cocurricular_activities
        sqlScholarship.InsertCommand = "INSERT INTO [MARK_COCURRICULAR_ACTIVITIES] ([id])VALUES(@appNo)";
        sqlScholarship.Insert();
        

        //table mark_research_award
        sqlScholarship.InsertCommand = "INSERT INTO [MARK_RESEARCH_AWARD] ([id])VALUES(@appNo)";
        sqlScholarship.Insert();

    }

    protected void insertPublication(int appNo)
    {
        sqlScholarship.InsertCommand = "INSERT INTO [MARK_PUBLICATION] ([app_no],[publication_id])VALUES(@appNo,@pubId)";
        sqlScholarship.InsertParameters.Add("appNo", appNo.ToString());
        sqlScholarship.InsertParameters.Add("pubId", appNo.ToString());

        DataView dv = (DataView)sqlPublication.Select(DataSourceSelectArguments.Empty);
        foreach (DataRowView drv in dv)
        {
            DataRow dr = drv.Row;
            sqlScholarship.InsertParameters.Add("appNo", appNo.ToString());

        }



    }
}