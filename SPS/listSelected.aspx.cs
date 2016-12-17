using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SPS_frmSelected : System.Web.UI.Page
{
    protected static string ConnectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Add_Selected(object sender, EventArgs e)
    {
        string matrix = tbAdd.Text.ToUpper();
        
        string query = String.Format("UPDATE [APPLICATION] SET [Selected] = '1' WHERE [Session] = '201620171' AND [Matrix_No] = '{0}'", matrix);

        using (SqlConnection con = new SqlConnection(ConnectionString))
        {
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            { }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        GridView1.DataBind();
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView rv = (DataRowView)e.Row.DataItem;

            Label lblSelected = e.Row.FindControl("lblSelected") as Label;

            switch (rv["Selected"].ToString())
            { 
                case "1":
                    lblSelected.Text = "Selected";
                    lblSelected.BackColor = System.Drawing.ColorTranslator.FromHtml("#FF1C00");
                    break;

                case "2":
                    lblSelected.Text = "Informed";
                    lblSelected.BackColor = System.Drawing.ColorTranslator.FromHtml("#FFF700");
                    break;

                case "3":
                    lblSelected.Text = "Accepted";
                    lblSelected.BackColor = System.Drawing.ColorTranslator.FromHtml("#57FF00");
                    break;
            }

            LinkButton viewStuInfo = e.Row.FindControl("viewStuInfo") as LinkButton;
            string jsFunction1 = String.Format("viewStuInfo('{0}');", e.Row.Cells[3].Text.Trim());
            viewStuInfo.Attributes.Add("OnClick", jsFunction1);
            viewStuInfo.Text = rv["Stu_Name"].ToString();

            Label date = e.Row.FindControl("lblDate") as Label;
            date.Text = ((DateTime)rv["App_Date"]).ToString("dd-MMM-yyyy");

            LinkButton viewMark = e.Row.FindControl("viewMark") as LinkButton;
            string jsFunction2 = String.Format("viewMark('{0}','{1}');", GridView1.DataKeys[e.Row.DataItemIndex]["App_No"].ToString().Trim(), GridView1.DataKeys[e.Row.DataItemIndex]["Short_Name"].ToString().Trim());
            viewMark.Attributes.Add("OnClick", jsFunction2);
            viewMark.Text = rv["Mark"].ToString();

            LinkButton viewStatus = e.Row.FindControl("viewStatus") as LinkButton;
            string jsFunction3 = String.Format("viewStatus('{0}', '{1}');", e.Row.Cells[3].Text.Trim(), e.Row.Cells[5].Text.Trim());
            viewStatus.Attributes.Add("OnClick", jsFunction3);
            viewStatus.Text = rv["App_Status"].ToString();
        }
    }
}