<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="instruction.aspx.cs" Inherits="UGStudent_instruction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <div id="cssmenu2"></div>
    <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Font-Overline="False" 
        CssClass="btn-toolbar">
        <asp:Label ID="Label3" runat="server" Font-Overline="False" 
            Font-Underline="True" Text="INSTRUCTION"></asp:Label>
        <br />
        <br />
        PLEASE READ BEFORE SUBMIT:
        <br />
        <br />
        1. To apply for International Doctoral Fellowship/UTM Zamalah/ UTM Natinonal 
        Postgraduate Fund, please check that all your information are accurate and 
        complete. Scholarships are awarded on the basis of financial need and academic 
        merit. The information will kept confidential.
        <br />
        <br />
        2. If there any mistake(s) after checking all Information, kindly update your 
        details in profile section.<br />
        <br />
        3. In Student Declaration section, kindly tick [/] in the box provided, at the 
        end of this session after finding that all of your information are correct and 
        complete.<br />
        <br />
        4. Please contact CICT center if there any problem in submiting application 
        form.<br />
        <br />
        <asp:Button ID="Button1" runat="server" BorderStyle="Outset" 
            onclick="Button1_Click" Text="NEXT" />
        <br />
        <br />
    </asp:Panel>
</asp:Content>

