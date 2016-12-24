<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="frmStudentDeclare.aspx.cs" Inherits="UGStudent_frmDeclare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
 
<div id="cssmenu2">
       <p align="center" style="font-style: normal; font-variant: normal; text-transform: uppercase; font-weight: normal; ">UTM ZAMALAH Scholarship Application</p>
        <br/> <ul style="font-size: small; top: 1px; left: -4px; height: 16px;">
            <li><a href="frmStudentDetails.aspx"><span class="fa fa-user"></span> Personal Details</a></li>
            <li><a href="frmStudentActivities.aspx"><span class="fa fa-user"></span> Activities</a></li>
            <li  class="active"><a href="frmStudentDeclare.aspx"><span class="fa fa-user"></span> Student Declaration</a></li>
            </ul></div>

    <div>
        <table __designer:mapid="78d" style="width: 73%; height: 194px">
            <tr __designer:mapid="78e">
                <td __designer:mapid="78f">
                    1. Please check all your information again.<asp:HyperLink ID="HyperLink2" 
                runat="server" NavigateUrl="~/UGStudent/frmCompleteForm.aspx" Target="_blank">View Complete Form</asp:HyperLink>
                </td>
                <td __designer:mapid="791">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="792">
                <td __designer:mapid="793">
            2. If there any outdated information, kindly update your details in Profile 
            section or click here.
                </td>
                <td __designer:mapid="794">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="795">
                <td __designer:mapid="796">
            <asp:CheckBox ID="CheckBox1" runat="server" 
                Text="I declare that this information is correct and complete." 
                oncheckedchanged="CheckBox1_CheckedChanged" />
            <asp:CustomValidator ID="CustomValidator2" runat="server" 
                ErrorMessage="Please check here." ForeColor="Red" 
                onservervalidate="CustomValidator2_ServerValidate">*</asp:CustomValidator>
                </td>
                <td __designer:mapid="797">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="798">
                <td __designer:mapid="799">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ForeColor="#CC0000" Width="237px" />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </td>
                <td __designer:mapid="79a">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

