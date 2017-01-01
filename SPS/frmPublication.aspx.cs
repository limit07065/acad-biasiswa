using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class frmPublication : System.Web.UI.Page
{
    decimal totalMark = 0;
    decimal totalMyra2 = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            String url = Request.UrlReferrer.OriginalString;

        }
        catch (NullReferenceException)
        {
            Response.Redirect("listApplication.aspx");
        }

        if (!IsPostBack)
        {
            loadStudentInfo();

        }

    }

    protected void loadStudentInfo()
    {
        DataView studentInfo = (DataView)SqlDataSourceStudentInfo.Select(DataSourceSelectArguments.Empty);

        foreach (DataRowView drv in studentInfo)
        {
            DataRow row = drv.Row;
            lblFullName.Text = row["Name"].ToString();
            lblMatricNo.Text = row["matrix_no"].ToString();
            lblSupervisor.Text = row["supervisor"].ToString();
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        { 
            TextBox mark = e.Row.FindControl("tbMark") as TextBox;
            TextBox myra2 = e.Row.FindControl("tbMyra2") as TextBox;
            DropDownList typeAuthorship = e.Row.FindControl("ddlTypeAuthorship") as DropDownList;
            DropDownList index = e.Row.FindControl("ddlIndex") as DropDownList;
            DropDownList statusPaper = e.Row.FindControl("ddlStatusPaper") as DropDownList;
            DropDownList affiliationUTM = e.Row.FindControl("ddlAffiliationUTM") as DropDownList;

            DataRowView rv = (DataRowView)e.Row.DataItem;

            mark.Text = rv["mark"].ToString();
            myra2.Text = rv["myra2"].ToString();


            try
            {
                typeAuthorship.ClearSelection();
                typeAuthorship.Items.FindByValue(rv["type_authorship_insert"].ToString().Trim()).Selected = true;
            }
            catch (NullReferenceException)
            { }

            try
            {
                index.ClearSelection();
                index.Items.FindByValue(rv["index_insert"].ToString().Trim()).Selected = true;
            }
            catch (NullReferenceException)
            { }

            try
            {
                statusPaper.ClearSelection();
                statusPaper.Items.FindByValue(rv["status_paper_insert"].ToString().Trim()).Selected = true;
            }
            catch (NullReferenceException)
            { }
            try
            {
                affiliationUTM.ClearSelection();
                affiliationUTM.Items.FindByValue(rv["affiliation_UTM_insert"].ToString().Trim()).Selected = true;
            }
            catch (NullReferenceException)
            { }



            //calculate the total mark
            totalMark += (decimal)rv["mark"];
            totalMyra2 += (decimal)rv["myra2"];

        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            // Display the total mark 
            e.Row.Cells[7].Text = "Total";
            e.Row.Cells[8].Text = totalMark.ToString();
            e.Row.Cells[9].Text = totalMyra2.ToString();
        }
    }

    protected void Update_Mark(object sender, EventArgs e)
    {
        SqlDataSourcePublication.UpdateCommand = "UPDATE MARK_PUBLICATION SET [mark]= @mark, [myra2] = @myra2, [type_authorship]=@typeAuthorship,[index]=@index, [status_paper]=@statusPaper, [affiliation_UTM]=@affiliationUTM WHERE id = @id";
        SqlDataSourcePublication.UpdateParameters.Add("mark", null);
        SqlDataSourcePublication.UpdateParameters.Add("myra2", null);
        SqlDataSourcePublication.UpdateParameters.Add("id", null);
        SqlDataSourcePublication.UpdateParameters.Add("typeAuthorship", null);
        SqlDataSourcePublication.UpdateParameters.Add("index", null);
        SqlDataSourcePublication.UpdateParameters.Add("statusPaper", null);
        SqlDataSourcePublication.UpdateParameters.Add("affiliationUTM", null);

        foreach (GridViewRow row in GridView1.Rows)
        {
            //get updated marks
            TextBox mark = row.FindControl("tbMark") as TextBox;
            TextBox myra2 = row.FindControl("tbMyra2") as TextBox;
            DropDownList typeAuthorship = row.FindControl("ddlTypeAuthorship") as DropDownList;
            DropDownList index = row.FindControl("ddlIndex") as DropDownList;
            DropDownList statusPaper = row.FindControl("ddlStatusPaper") as DropDownList;
            DropDownList affiliationUTM = row.FindControl("ddlAffiliationUTM") as DropDownList;

            //get ID from row.            
            int id = (int)GridView1.DataKeys[row.DataItemIndex]["id"];
            //GridView1.DataKeys[e.Row.DataItemIndex]["App_No"].ToString().Trim(), GridView1.DataKeys[e.Row.DataItemIndex]["Short_Name"].ToString().Trim())

            SqlDataSourcePublication.UpdateParameters["mark"].DefaultValue = mark.Text;
            SqlDataSourcePublication.UpdateParameters["myra2"].DefaultValue = myra2.Text;
            SqlDataSourcePublication.UpdateParameters["typeAuthorship"].DefaultValue = typeAuthorship.SelectedValue;
            SqlDataSourcePublication.UpdateParameters["index"].DefaultValue = index.SelectedValue;
            SqlDataSourcePublication.UpdateParameters["statusPaper"].DefaultValue = statusPaper.SelectedValue;
            SqlDataSourcePublication.UpdateParameters["affiliationUTM"].DefaultValue = affiliationUTM.Text;
            SqlDataSourcePublication.UpdateParameters["id"].DefaultValue = GridView1.DataKeys[row.DataItemIndex]["id"].ToString();

            SqlDataSourcePublication.Update();
        }
          ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "text", "refreshParent()", true);

    }





}