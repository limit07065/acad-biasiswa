<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmPublication.aspx.cs" Inherits="frmPublication" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head runat="server">
    <title>List of Publication</title>
    <script type="text/javascript" src="Styles/sps/jquery-1.4.2.min.js"></script>
    <link href="Styles/sps/jquery-ui-1.8.6.custom.css" rel="stylesheet" media="screen" />
    <!--<link href="Styles/bootsrap/bootstrap.min.css" rel="stylesheet" media="screen" />-->
    <link href="Styles/sps/bootstrap-btn-min.css" rel="stylesheet" media="screen" />
    <link href="Styles/sps/sps.css" rel="stylesheet" media="screen" />
    <link href="Styles/sps/gsmsv2.css" rel="stylesheet" media="screen" />
    <link rel="shortcut icon" href="~/styles/images/utm.ico" />
    <script type="text/javascript" src="Styles/sps/jquery-ui-1.8.6.custom.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:SqlDataSource ID="SqlDataSourceStudentInfo" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
            SelectCommand="SELECT [Matrix_No], [Name], [App_No], [supervisor] FROM [vw_scholarship recommendation] WHERE ([App_No] = @App_No)">
            <SelectParameters>
                <asp:QueryStringParameter Name="App_No" QueryStringField="appNo" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="ui-corner-all fill_yellow">
            <div class="jumbotron">
                List of Publications</div>
            <br />
        </div>
        <div class="ui-widget-header ui-corner-top" style="padding: 10px; text-align: left;">
            &nbsp;Personal Particulars</div>
        <table align="center" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td width="27%" valign="top" class="tdtitle">
                        <b>Full Name</b>
                    </td>
                    <td width="73%" valign="top" class="tdrow" colspan="3">
                        <asp:Label ID="lblFullName" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="10%" valign="top" class="tdtitle">
                        <b>Matric No.</b>
                    </td>
                    <td width="25%" valign="top" class="tdrow">
                        <asp:Label ID="lblMatricNo" runat="server" Text=""></asp:Label>
                    </td>
                    <td width="15%" valign="top" class="tdtitle">
                        <b>Supervisor</b>
                    </td>
                    <td width="50%" valign="top" class="tdrow">
                        <asp:Label ID="lblSupervisor" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <div class="ui-widget-header ui-corner-top" style="padding: 10px; text-align: left;">
            &nbsp;Publications
        </div>
        <asp:SqlDataSource ID="SqlDataSourcePublication" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
            SelectCommand="SELECT * FROM [vw_List_Publication] WHERE ([app_no] = @app_no)">
            <SelectParameters>
                <asp:QueryStringParameter Name="app_no" QueryStringField="appNo" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
            DataSourceID="SqlDataSourcePublication" CellPadding="4" ForeColor="#333333" GridLines="Both"
            OnRowDataBound="GridView1_RowDataBound" ShowFooter="true">
            <AlternatingRowStyle BackColor="#f7f7ba" />
            <Columns>
                <asp:TemplateField HeaderText="No.">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="type" HeaderText="Type of Publication" SortExpression="type" />
                <asp:BoundField DataField="title" HeaderText="Thesis Title" SortExpression="title" />
                <asp:BoundField DataField="authors" HeaderText="Authors" SortExpression="authors" />
                <asp:BoundField DataField="type_authorship" HeaderText="Type of Authorship" SortExpression="type_authorship" />
                <asp:BoundField DataField="index" HeaderText="Index" SortExpression="index" />
                <asp:BoundField DataField="status_paper" HeaderText="Status of Paper" SortExpression="status_paper" />
                <asp:BoundField DataField="affiliation_UTM" HeaderText="Affiliation UTM" SortExpression="affiliation_UTM" />
                <asp:TemplateField HeaderText="Mark">
                    <ItemTemplate>
                        <asp:TextBox ID="tbMark" runat="server" Width="50px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Myra2">
                    <ItemTemplate>
                        <asp:TextBox ID="tbMyra2" runat="server" Width="55px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#d9534f" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#680d0d" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#e2e2e2" ForeColor="#333333" />
        </asp:GridView>
        <br />
        <asp:Button ID="btnUpdateMark" runat="server" Text="Update Mark" CssClass="btn btn-default"
            OnClick="Update_Mark" />
        <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="btn btn-default" OnClientClick="window.close();"/>
    </div>
    <script>
        function refreshParent() {
            window.opener.location.href = window.opener.location.href;
            if (window.opener.progressWindow) {
                window.opener.progressWindow.close();
            }
            window.close();
        }
            
    </script>
    </form>
</body>
</html>
