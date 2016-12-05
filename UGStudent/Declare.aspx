<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="Declare.aspx.cs" Inherits="UGStudent_Declare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small; top: 1px; left: -4px; height: 16px;">
            <li><a href="Personal.aspx"><span class="fa fa-user"></span> Personal Details</a></li>
            
            <li  class="active"><a href="Declare.aspx"><span class="fa fa-user"></span> Student Declaration</a></li>
            </ul></div>
            <br />
        <asp:Panel ID="Panel1" runat="server" Height="245px" Width="765px" 
        ClientIDMode="AutoID">
            <br />
            1. Please check all your information again.<asp:HyperLink ID="HyperLink1" 
                runat="server" NavigateUrl="~/frmAppform.aspx" Target="_blank">View Complete Form</asp:HyperLink>
            <br />
            <br />
            2. If there any outdated information, kindly update your details in Profile 
            section or click here.
            <br />
            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" 
                Text="I declare that this information is correct and complete." 
                oncheckedchanged="CheckBox1_CheckedChanged" />
            <asp:CustomValidator ID="CustomValidator2" runat="server" 
                ErrorMessage="Please check here." ForeColor="Red" 
                onservervalidate="CustomValidator2_ServerValidate">*</asp:CustomValidator>
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ForeColor="#CC0000" />
            <br />
            &nbsp;&nbsp;
            <br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            <br />
        </asp:Panel>
    </div>
</asp:Content>

