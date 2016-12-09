<%@ Page Title="" Language="C#" MasterPageFile="~/SV/SVMasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="SV_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">
    <style>
        a:hover
        {
            text-decoration: underline;
        }
        
        .center-padding
        {
            padding-right: 50%;
            padding-left: 50%;
        }
    </style>
    <%//label %>
    <div class="row">
        <div id="cssmenu2">
            <ul style="font-size: small">
                <li class="active"><a href="#">&nbsp;<span class="fa fa-newspaper-o"></span>&nbsp;Scholarship
                    Recommendation</a></li>
            </ul>
        </div>
        <%//temporary session setter %>
        <!--<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Button ID="Button1"
            runat="server" Text="Button" OnClick="staffNo" />-->
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="True" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:GridView ID="gvScholarship" runat="server" AutoGenerateColumns="False" DataKeyNames="Matrix_No"
                    DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None"
                    CssClass="col-sm-12" AllowSorting="True" OnRowDataBound="gvScholarship_RowDataBound"
                    ShowHeaderWhenEmpty="true">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Name" SortExpression="Stu_Name">
                            <ItemTemplate>
                                <asp:LinkButton ID="viewStuInfo" runat="server"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Matrix_No" HeaderText="Matrix No" ReadOnly="True" SortExpression="Matrix_No" />
                        <asp:TemplateField HeaderText="App. Date" SortExpression="App_Date">
                            <ItemTemplate>
                                <asp:Label ID="lblDate" runat="server"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Short_Name" HeaderText="Type" SortExpression="Short_Name" />
                        <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
                        <asp:BoundField DataField="Description" HeaderText="Status" SortExpression="Description" />
                        <asp:HyperLinkField DataNavigateUrlFields="App_No,Matrix_No,Session" DataNavigateUrlFormatString="View.aspx?app={0}&amp;mat={1}&amp;ses={2}"
                            HeaderText="Action" Text="View">
                            <ItemStyle CssClass="btn btn-default btn-custom" />
                        </asp:HyperLinkField>
                    </Columns>
                    <FooterStyle BackColor="#990000" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <EmptyDataTemplate>
                        <asp:Label CssClass="center-padding" Font-Bold="true" runat="server">
                            No records found </asp:Label>
                    </EmptyDataTemplate>
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
            SelectCommand="SELECT * FROM [vw_scholarship recommendation] WHERE ([Staff_No] = @Staff_No) AND ([Status]='BIA_02') ORDER BY App_Date  ">
            <SelectParameters>
                <asp:SessionParameter Name="Staff_No" SessionField="staffNo" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <script type="text/javascript">
        function viewStuInfo(str) {
            window.open("../frmPersonalDetail.aspx?matrixNo=" + str, 'detailWindow', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=700,height=550,left=20,top=20');
        }
        
    </script>
</asp:Content>
