<%@ Page Title="" Language="C#" MasterPageFile="~/SPS/SPSMasterPage.master" AutoEventWireup="true"
    CodeFile="listSelected.aspx.cs" Inherits="SPS_frmSelected" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">
    <style>
        a:hover
        {
            text-decoration: underline;
        }
    </style>
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li><a href="listApplication.aspx"><span class="fa fa-navicon"></span>&nbsp;Application
                List</a></li>
            <li class="active"><a href=""><span class="fa fa-navicon"></span>&nbsp;Selected List</a></li>
        </ul>
    </div>
    <div>
        <p style="text-align: center; margin-top: 10px">
            <asp:Label ID="lblAdd" runat="server" Text="Matrix No: "></asp:Label>
            <asp:TextBox ID="tbAdd" runat="server" Width="350px"></asp:TextBox>
            &nbsp;&nbsp;<asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="Add_Selected" UseSubmitBehavior="False" />
        </p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="App_No, Short_Name, Matrix_No"
            OnRowDataBound="GridView1_RowDataBound" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"
            Width="100%" EmptyDataText="&lt;center&gt;Enter matrix no to add selected applicant&lt;/center&gt;"
            ShowHeaderWhenEmpty="True">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="No">
                    <ItemTemplate>
                        <%# Container.DataItemIndex + 1 %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Faculty" HeaderText="Faculty" SortExpression="Faculty" />
                <asp:TemplateField HeaderText="Name" SortExpression="Stu_Name">
                    <ItemTemplate>
                        <asp:LinkButton ID="viewStuInfo" runat="server"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Matrix_No" HeaderText="Matrix No" SortExpression="Matrix_No" />
                <asp:TemplateField HeaderText="App. Date" SortExpression="App_Date">
                    <ItemTemplate>
                        <asp:Label ID="lblDate" runat="server"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Session" HeaderText="Session" SortExpression="Session" />
                <asp:BoundField DataField="Program" HeaderText="Program" SortExpression="Program" />
                <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:TemplateField HeaderText="Mark" SortExpression="Mark">
                    <ItemTemplate>
                        <asp:LinkButton ID="viewMark" runat="server"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="App. Status" SortExpression="App_Status">
                    <ItemTemplate>
                        <asp:LinkButton ID="viewStatus" runat="server"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Selected" SortExpression="Selected">
                    <ItemTemplate>
                        <asp:Label ID="lblSelected" runat="server" Text=""></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Remove">
                    <ItemTemplate>
                        <asp:LinkButton ID="removeSelected" runat="server" Font-Size="Large" CommandName="Delete" OnClientClick="if(! confirm('Are you sure to remove this record?')) return false;"><center><i class="fa fa-trash-o" aria-hidden="true"></i></center></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerSettings Mode="NumericFirstLast" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
            SelectCommand="SELECT * FROM [vw_Application] WHERE [Selected] = '1' OR [Selected] = '2' OR [Selected] = '3'"
            DeleteCommand="UPDATE [APPLICATION] SET [Selected] = '0' WHERE [Matrix_No] = @Matrix_No">
            <DeleteParameters>
                <asp:Parameter Name="Matrix_No" Type="String" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <script type="text/javascript">
            function viewStuInfo(str) {
                window.open("frmPersonalDetail.aspx?matrixNo=" + str, 'detailWindow', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=700,height=550,left=20,top=20');
            }

            function viewStatus(matrixNo, session) {
                window.open("frmProcess.aspx?matrixNo=" + matrixNo + "&session=" + session, "statusWindow", 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=1000,height=500,left=20,top=20');
            }

            function viewMark(str, str2) {
                window.open("frmMark.aspx?appNo=" + str + "&type=" + str2, '', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=800, height=550, left=20, top=20');
            }
        </script>
    </div>
</asp:Content>
