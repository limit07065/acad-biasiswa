<%@ Page Title="" Language="C#" MasterPageFile="~/SPS/SPSMasterPage.master" AutoEventWireup="true"
    CodeFile="listRequirement.aspx.cs" Inherits="SPSRequirement_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small"> 
            <li class="active"><a href="listApplication.aspx"><span class="fa fa-navicon"></span>
                All</a></li>
        </ul>
    </div>
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="True" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" Width="100%" AllowPaging="True"
                    GridLines="None" ShowHeaderWhenEmpty="True" EmptyDataText="No records found."
                    AutoGenerateColumns="False" DataKeyNames="Code" CellPadding="4" DataSourceID="SqlDataSource1"
                    ForeColor="#333333" OnRowDataBound="GridView1_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="No">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Code" HeaderText="Scholarship Code" ReadOnly="True" SortExpression="Code" />
                        <asp:BoundField DataField="Name" HeaderText="Scholarship Name" SortExpression="Name" />
                        <asp:TemplateField HeaderText="View">
                            <ItemStyle CssClass="toggleModal" />
                            <ItemTemplate>
                            <asp:LinkButton ID="viewBtn" runat="server"><i class="fa fa-search" aria-hidden="true"></i> View</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemStyle CssClass="toggleModal" />
                            <ItemTemplate>
                            <asp:LinkButton ID="editBtn" runat="server"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataRowStyle BackColor="#FFFBD6" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                    <PagerSettings Position="Top" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
            SelectCommand="SELECT [Code], [Name] FROM [CODE_SCHOLARSHIP]">
        </asp:SqlDataSource>
    </div>

    <%-- Bootstrap Modal started --%>
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                    <h4 class="modal-title">
                        Scholarship Details</h4>
                </div>
                <div class="modal-body">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        Close</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        function getForm(str) {
            $(".modal-body").html("Loading...");
            $.get("../frmRequirement.aspx", { type: str }, function (rs) {
                $(".modal-body").html(rs);
            });
        };

        function editForm(str) {
            $(".modal-body").html("Loading...");
            $.get("../frmRequirement.aspx", { type: str, edit: "1" }, function (rs) {
                $(".modal-body").html(rs);
            });
        };
        

        $(document).ready(function () {
            $(".toggleModal a").attr("data-toggle", "modal");
            $(".toggleModal a").attr("data-target", "#myModal");
        });
    </script>
</asp:Content>
