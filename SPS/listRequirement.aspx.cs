using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
 
public partial class SPSRequirement_Default : System.Web.UI.Page
{
    protected static string code;

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void FormView1_DataBound(object sender, EventArgs e)
    {
        DataRowView rv = FormView1.DataItem as DataRowView;

        TextBox tbStart = FormView1.FindControl("tbStart") as TextBox;
        tbStart.Text = ((DateTime)rv["Start_Date"]).ToString("dd-MMM-yyyy");

        TextBox tdEnd = FormView1.FindControl("tdEnd") as TextBox;
        tdEnd.Text = ((DateTime)rv["End_Date"]).ToString("dd-MMM-yyyy");
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        code = e.CommandArgument.ToString();
        formDataSource.SelectParameters["Code"].DefaultValue = code;

        switch(e.CommandName)
        {
            case ("ViewForm"):
                FormView1.ChangeMode(FormViewMode.ReadOnly);
                break;

            case ("EditForm"):
                formDataSource.UpdateParameters["Code"].DefaultValue = code;
                FormView1.ChangeMode(FormViewMode.Edit);
                break;
        }

        FormView1.DataBind();
        ScriptManager.RegisterStartupScript(modalPanel, modalPanel.GetType(), "show", "$(function () { $('#" + Panel1.ClientID + "').modal('show'); });", true);
        modalPanel.Update();
    }

    protected void FormView1_ItemUpdated(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(modalPanel, modalPanel.GetType(), "alert", "alert('Update successfully!');", true);
    }

    /************* Text formatting when FormView Databound *************/
    protected string FormatlblReg (object text)
    {
        text = text.ToString();

        if (text.Equals("0"))
            return "Full Time and Part Time";
        else if (text.Equals("1"))
            return "Full Time only";
        else
            return "Part Time only";
    }

    protected string FormatlblJob (object text)
    {
        text = text.ToString();

        if (text.Equals("0"))
            return "No restriction";
        else if (text.Equals("1"))
            return "Unemployed only";
        else
            return "Employed only";
    }

    protected string FormatlblNationality(object text)
    {
        text = text.ToString();

        if (text.Equals("0"))
            return "No restriction";
        else if (text.Equals("1"))
            return "Malaysian only";
        else
            return "Non-Malaysian only";
    }
}