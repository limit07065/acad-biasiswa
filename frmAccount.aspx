<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmAccount.aspx.cs" Inherits="frmAccount" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<body>
    <form id="form1" runat="server">
    <table width="100%">
        <tr>
            <td width="100%" colspan="2" class="ui-widget-header ui-corner-top" style="padding: 10px">
                BASIC INFORMATION SESSION / SEMESTER -
                <%= session %>
            </td>
        </tr>
        <tr>
            <td class="tdtitle" style="width: 20%">
                <strong>Current Sponsor</strong>
            </td>
            <td class="tdrow">
                111 - Self Sponsored
            </td>
        </tr>
        <tr>
            <td class="tdtitle" style="width: 20%">
                <strong>Account No.</strong>
            </td>
            <td class="tdrow">
                <asp:Label ID="lblAccNo" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="tdtitle" style="width: 20%">
                <strong>Active Code</strong>
            </td>
            <td class="tdrow">
                A
            </td>
        </tr>
        <tr>
            <td class="tdtitle" style="width: 20%">
                <strong>Date for Subject Registration</strong>
            </td>
            <td class="tdrow">
                <asp:Label ID="lblRegDate" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <table width="100%">
        <tr>
            <td width="100%" colspan="5" class="ui-widget-header ui-corner-top" style="padding: 10px">
                CURRENT BALANCE SESSION -
                <%= session %>
            </td>
        </tr>
        <tr>
            <td class="tdtitle" style="width: 14%">
                <strong>SEMESTER</strong>
            </td>
            <td class="tdtitle">
                <strong>DEBIT</strong>
            </td>
            <td class="tdtitle">
                <strong>CREDIT</strong>
            </td>
            <td class="tdtitle" colspan="2">
                <strong>BALANCE</strong>
            </td>
        </tr>
        <% if (balance != 0.00)
           { %>
        <tr>
            <td class="tdtitle" style="width: 14%">
                <%= semester%>
            </td>
            <td class="tdrow">
                <asp:Label ID="lblDebit" runat="server" Text=""></asp:Label>
            </td>
            <td class="tdrow">
                <asp:Label ID="lblCredit" runat="server" Text=""></asp:Label>
            </td>
            <td class="tdrow" colspan="2">
                <%= String.Format(new System.Globalization.CultureInfo("ms-MY"), "{0:C}", balance)%>
            </td>
        </tr>
        <% } %>
        <tr>
            <td class="tdtitle" colspan="3" style="width: 50%">
                <strong>TOTAL ARREARS FOR SESSION</strong>
            </td>
            <td class="tdrow">
                <%= String.Format(new System.Globalization.CultureInfo("ms-MY") , "{0:C}", balance)%>
            </td>
            <td class="tdrow" style="color: red">
                <% if (balance != 0.00)
                   { %>
                <%= accStatus %>
                <% } %>
            </td>
        </tr>
        <tr>
            <td class="tdtitle" colspan="3">
                <strong>TOTAL ARREARS FOR ALL SESSIONS</strong>
            </td>
            <td class="tdrow" colspan="2">
                <% if (arrears != "")
                   {  %>
                <%= arrears %>
                <% } %>
            </td>
        </tr>
    </table>
    <br />
    <table style="width: 100%;">
        <tr>
            <td width="100%" colspan="4" class="ui-widget-header ui-corner-top" style="padding: 10px">
                SCHOLARSHIP STATUS FOR SESSION / SEMESTER -
                <%= session %>
            </td>
        </tr>
        <tr>
            <td class="tdtitle" style="width: 14%">
                <strong>No. Resit</strong>
            </td>
            <td class="tdrow">
                &nbsp;
            </td>
            <td class="tdtitle" style="width: 14%">
                <strong>Sesisem</strong>
            </td>
            <td class="tdrow">
                <%= semester %>
            </td>
        </tr>
        <tr>
            <td class="tdtitle" style="width: 14%">
                <strong>No. Baucer UTM</strong>
            </td>
            <td class="tdrow">
                &nbsp;
            </td>
            <td class="tdtitle" style="width: 14%">
                <strong>Tarikh Baucer</strong>
            </td>
            <td class="tdrow">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="tdtitle" style="width: 14%">
                <strong>Jumlah Biaya</strong>
            </td>
            <td class="tdrow">
                RM 0.00
            </td>
            <td class="tdtitle" style="width: 14%">
                <strong>Status</strong>
            </td>
            <td class="tdrow">
                -
            </td>
        </tr>
        <tr>
            <td class="tdtitle" style="width: 14%">
                <strong>Jumlah Potongan</strong>
            </td>
            <td class="tdrow">
                RM 0.00
            </td>
            <td class="tdtitle" style="width: 14%">
                <strong>Jumlah Kredit ke Bank</strong>
            </td>
            <td class="tdrow">
                RM 0.00
            </td>
        </tr>
    </table>
    <br />
    <table id="paymentTable" style="width: 100%;">
        <tr>
            <td width="100%" colspan="5" class="ui-widget-header ui-corner-top" style="padding: 10px">
                PAYMENT DETAILS FOR SESSION / SEMESTER -
                <%= session %>
            </td>
        </tr>
        <tr>
            <td class="tdtitle" style="width: 25%">
                <strong>TYPE OF FEE</strong>
            </td>
            <td class="tdtitle" style="width: 14%">
                <strong>DEBIT</strong>
            </td>
            <td class="tdtitle" style="width: 14%">
                <strong>CREDIT</strong>
            </td>
            <td class="tdtitle" style="width: 25%">
                <strong>TRANSACTION DATE</strong>
            </td>
            <td class="tdtitle" style="width: 22%">
                <strong>PAYMENT STATUS</strong>
            </td>
        </tr>
        <asp:Repeater ID="paymentRepeater" runat="server" DataSourceID="paymentDataScource">
            <ItemTemplate>
                <tr>
                    <td class="tdrow" style="width: 25%">
                        <%# Eval("Subject_Name") %>
                    </td>
                    <td class="tdrow" style="width: 14%">
                        <%# String.Format(new System.Globalization.CultureInfo("ms-MY"), "{0:C}", Eval("Debit")) %>
                    </td>
                    <td class="tdrow" style="width: 14%">
                        <%# String.Format(new System.Globalization.CultureInfo("ms-MY"), "{0:C}", Eval("Credit")) %>
                    </td>
                    <td class="tdrow" style="width: 25%">
                        <%# Eval("Tran_Date", "{0:dd-MMM-yyyy}")%>
                    </td>
                    <td class="tdrow" style="width: 22%">
                        <%# Eval("Status") %>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                <tr>
                    <td class="tdrow" style="width: 25%">
                        <strong>TOTAL</strong>
                    </td>
                    <td class="tdrow" style="width: 14%">
                        <strong>
                            <%# String.Format(new System.Globalization.CultureInfo("ms-MY"), "{0:C}", totalDebit) %></strong>
                    </td>
                    <td class="tdrow" style="width: 14%">
                        <strong>
                            <%# String.Format(new System.Globalization.CultureInfo("ms-MY"), "{0:C}", totalCredit) %></strong>
                    </td>
                    <td class="tdrow" style="width: 25%">
                        &nbsp;
                    </td>
                    <td class="tdrow" style="width: 22%">
                        <%= accStatus %>
                    </td>
                </tr>
            </FooterTemplate>
        </asp:Repeater>
    </table>
    </form>
    <asp:SqlDataSource ID="paymentDataScource" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
        SelectCommand="SELECT * FROM [vw_Balance] WHERE [Matrix_No] = @matrixNo AND [Session] = @session">
        <SelectParameters>
            <asp:QueryStringParameter Name="matrixNo" QueryStringField="matrixNo" />
            <asp:QueryStringParameter Name="session" QueryStringField="session" />
        </SelectParameters>
    </asp:SqlDataSource>
</body>
</html>
