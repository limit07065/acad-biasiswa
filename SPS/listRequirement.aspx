<%@ Page Title="" Language="C#" MasterPageFile="~/SPS/SPSMasterPage.master" AutoEventWireup="true"
    CodeFile="listRequirement.aspx.cs" Inherits="SPSRequirement_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a><span class="fa fa-navicon"></span>All</a></li>
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
                    ForeColor="#333333" OnRowCommand="GridView1_RowCommand" EditIndex="-1">
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
                            <ItemTemplate>
                                <asp:LinkButton ID="viewBtn" CommandName="ViewForm" CommandArgument='<%# Eval("Code") %>'
                                    runat="server" CausesValidation="false"><i class="fa fa-search" aria-hidden="true"></i> View</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:LinkButton ID="editBtn" CommandName="EditForm" CommandArgument='<%# Eval("Code") %>'
                                    runat="server" CausesValidation="false"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</asp:LinkButton>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
            SelectCommand="SELECT [Code], [Name] FROM [CODE_SCHOLARSHIP]"></asp:SqlDataSource>
    </div>
    <%-- Bootstrap Modal started --%>
    <asp:Panel ID="Panel1" CssClass="modal fade" runat="server" role="dialog" data-keyboard="false"
        data-backdrop="static">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        &times;</button>
                    <h4 class="modal-title">
                        Scholarship Details</h4>
                </div>
                <div class="modal-body">
                    <asp:UpdatePanel ID="modalPanel" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:FormView ID="FormView1" DataSourceID="formDataSource" runat="server" Width="100%"
                                OnItemUpdated="FormView1_ItemUpdated" DataKeyNames="Code" DefaultMode="ReadOnly">
                                <ItemTemplate>
                                    <table style="width: 100%;" border="2">
                                        <tr>
                                            <th colspan="4" class="thtitle">
                                                Scholarship Information
                                            </th>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle" style="width: 16%">
                                                Scholarship Code
                                            </td>
                                            <td class="tdrow" style="width: 21%">
                                                <%= code %>
                                            </td>
                                            <td class="tdtitle" style="width: 16%">
                                                Scholarship Name
                                            </td>
                                            <td class="tdrow" style="width: 47%">
                                                <%# Eval("Name") %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle">
                                                Address and Tel No.
                                            </td>
                                            <td colspan="3" class="tdrow">
                                                <strong>Address 1: &nbsp;</strong><%# Eval("Address1") %><br /><strong>Address 2: &nbsp;</strong><%# Eval("Address2") %><br /><strong>Postcode: &nbsp;</strong><%# Eval("Postcode") %><br /><strong>City: &nbsp;</strong><%# Eval("City") %><br /><strong>State: &nbsp;</strong><%# Eval("State") %><br /><strong>Telephone No: &nbsp;</strong><%# Eval("TelNo") %></td>
                                        </tr>
                                        <tr>
                                            <th colspan="4" class="thtitle">
                                                Scholarship Requirement
                                            </th>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle">
                                                By the age of
                                            </td>
                                            <td class="tdrow">
                                                <%# Eval("Age_Limit") %>
                                            </td>
                                            <td class="tdtitle">
                                                Registration Type
                                            </td>
                                            <td class="tdrow">
                                                <asp:Label ID="lblReg" runat="server" Text='<%# FormatlblReg(Eval("Reg_Limit")) %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle">
                                                Job
                                            </td>
                                            <td class="tdrow">
                                                <asp:Label ID="lblJob" runat="server" Text='<%# FormatlblJob(Eval("Job_Limit")) %>'></asp:Label>
                                            </td>
                                            <td class="tdtitle">
                                                Min CPA
                                            </td>
                                            <td class="tdrow">
                                                <%# Eval("CPA_Limit", "{0:0.00}")%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle">
                                                Min semester left
                                            </td>
                                            <td class="tdrow">
                                                <%# Eval("Sem_Limit") %>
                                            </td>
                                            <td class="tdtitle">
                                                Nationality
                                            </td>
                                            <td class="tdrow">
                                                <asp:Label ID="lblNationality" runat="server" Text='<%# FormatlblNationality(Eval("Nationality_Limit")) %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle">
                                                Starting Date
                                            </td>
                                            <td class="tdrow">
                                                <%# Eval("Start_Date", "{0:dd-MMM-yyyy}") %>
                                            </td>
                                            <td class="tdtitle">
                                                Ending Date
                                            </td>
                                            <td class="tdrow">
                                                <%# Eval("End_Date", "{0:dd-MMM-yyyy}") %>
                                            </td>
                                        </tr>
                                    </table>
                                    </div>
                                    <div class="modal-footer">
                                      <asp:Button ID="btnEdit" CssClass="btn btn-default" runat="server" Text="Edit"
                                            CommandName="Edit" CausesValidation="True" />&nbsp;
                                        <button type="button" class="btn btn-default" data-dismiss="modal">
                                            Close</button>
                                    </div>
                                </ItemTemplate>
                                <%----------------------------    Edit form   ------------------------%>
                                <EditItemTemplate>
                                    <table style="width: 100%;" border="2">
                                        <tr>
                                            <th colspan="4" class="thtitle">
                                                Scholarship Information
                                            </th>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle" style="width: 16%">
                                                Scholarship Code
                                            </td>
                                            <td class="tdrow" style="width: 21%">
                                                <%= code %>
                                            </td>
                                            <td class="tdtitle" style="width: 16%">
                                                Scholarship Name
                                            </td>
                                            <td class="tdrow" style="width: 47%">
                                                <%# Eval("Name") %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle">
                                                Address and Tel No.
                                            </td>
                                            <td colspan="3" class="tdrow">
                                                <strong>Address 1: </strong>&nbsp;<%# Eval("Address1") %><br /><strong>Address 2: &nbsp;</strong><%# Eval("Address2") %><br /><strong>Postcode: &nbsp;</strong><%# Eval("Postcode") %><br /><strong>City: &nbsp;</strong><%# Eval("City") %><br /><strong>State: &nbsp;</strong><%# Eval("State") %><br /><strong>Telephone No: &nbsp;</strong><%# Eval("TelNo") %></td>
                                        </tr>
                                        <tr>
                                            <th colspan="4" class="thtitle">
                                                Scholarship Requirement
                                            </th>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle">
                                                By the age of
                                            </td>
                                            <td class="tdrow">
                                                <asp:TextBox ID="tbAge" Text='<%# Bind("Age_Limit") %>' runat="server"></asp:TextBox>
                                            </td>
                                            <td class="tdtitle">
                                                Registration Type
                                            </td>
                                            <td class="tdrow">
                                                <asp:DropDownList ID="ddlReg" SelectedValue='<%# Bind("Reg_Limit") %>' runat="server">
                                                    <asp:ListItem Text="Full Time and Part Time" Value="0" />
                                                    <asp:ListItem Text="Full Time only" Value="1" />
                                                    <asp:ListItem Text="Part Time only" Value="2" />
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle">
                                                Job
                                            </td>
                                            <td class="tdrow">
                                                <asp:DropDownList ID="ddlJob" SelectedValue='<%# Bind("Job_Limit") %>' runat="server">
                                                    <asp:ListItem Text="No restriction" Value="0" />
                                                    <asp:ListItem Text="Unemployed only" Value="1" />
                                                    <asp:ListItem Text="Employed only" Value="2" />
                                                </asp:DropDownList>
                                            </td>
                                            <td class="tdtitle">
                                                Min CPA
                                            </td>
                                            <td class="tdrow">
                                                <asp:TextBox ID="tbCPA" Text='<%# Bind("CPA_Limit", "{0:0.00}") %>' runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle">
                                                Min semester left
                                            </td>
                                            <td class="tdrow">
                                                <asp:TextBox ID="tbSem" Text='<%# Bind("Sem_Limit") %>' runat="server"></asp:TextBox>
                                            </td>
                                            <td class="tdtitle">
                                                Nationality
                                            </td>
                                            <td class="tdrow">
                                                <asp:DropDownList ID="ddlNationality" SelectedValue='<%# Bind("Nationality_Limit") %>'
                                                    runat="server">
                                                    <asp:ListItem Text="No Restriction" Value="0" />
                                                    <asp:ListItem Text="Malaysian" Value="1" />
                                                    <asp:ListItem Text="Non-Malaysian" Value="2" />
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="tdtitle">
                                                Starting Date (DD-MMM-YYYY)
                                            </td>
                                            <td class="tdrow">
                                                <asp:TextBox ID="tbStart" Text="<%# Bind('Start_Date', '{0:dd-MMM-yyyy}') %>" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="tdtitle">
                                                Ending Date (DD-MMM-YYYY)
                                            </td>
                                            <td class="tdrow">
                                                <asp:TextBox ID="tbEnd" Text="<%# Bind('End_Date', '{0:dd-MMM-yyyy}') %>" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    </div>
                                    <div class="modal-footer">
                                        <asp:Button ID="btnUpdate" CssClass="btn btn-default" runat="server" Text="Update"
                                            CommandName="Update" CausesValidation="True" />&nbsp;
                                        <asp:Button ID="btnClose" CssClass="btn btn-default" data-dismiss="modal" runat="server"
                                            Text="Close" CausesValidation="false" />
                                    </div>
                                    <div style="display: none">
                                        <asp:RangeValidator ID="AgeRangeValidator" runat="server" Type="Integer" ErrorMessage="Age must be greater than 0"
                                            MinimumValue="0" MaximumValue="100" ControlToValidate="tbAge"></asp:RangeValidator>
                                        <asp:RequiredFieldValidator ID="AgeRequiredFieldValidator" runat="server" ErrorMessage="Age field must not be blank, insert 0 if no restriction"
                                            ControlToValidate="tbAge"></asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="SemRangeValidator" runat="server" Type="Integer" ErrorMessage="Sem limit must be between 0 to 8"
                                            MaximumValue="8" MinimumValue="0" ControlToValidate="tbSem"></asp:RangeValidator>
                                        <asp:RequiredFieldValidator ID="SemRequiredFieldValidator" runat="server" ErrorMessage="Sem field must not be blank, insert 0 if no restriction"
                                            ControlToValidate="tbSem"></asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="CPARangeValidator" runat="server" Type="Double" ErrorMessage="CPA limit must be between 0.00 to 4.00"
                                            MaximumValue="4.00" MinimumValue="0.00" ControlToValidate="tbCPA"></asp:RangeValidator>
                                        <asp:RequiredFieldValidator ID="CPARequiredFieldValidator" runat="server" ErrorMessage="CPA field must not be blank, insert 0 if no restriction"
                                            ControlToValidate="tbSem"></asp:RequiredFieldValidator>
                                        <asp:ValidationSummary ID="ValidationSummary1" DisplayMode="BulletList" runat="server"
                                            ShowMessageBox="True" />
                                    </div>
                                </EditItemTemplate>
                            </asp:FormView>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:SqlDataSource ID="formDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
                        SelectCommand="SELECT * FROM [CODE_SCHOLARSHIP] WHERE ([Code] = @Code)" 
                        UpdateCommand="UPDATE [CODE_SCHOLARSHIP] SET [Age_Limit] = @Age_Limit, [Sem_Limit] = @Sem_Limit, [Job_Limit] = @Job_Limit, [CPA_Limit] = @CPA_Limit, [Reg_Limit] = @Reg_Limit, [Nationality_Limit] = @Nationality_Limit, [Start_Date] = @Start_Date, [End_Date] = @End_Date WHERE [Code] = @Code">
                        <SelectParameters>
                            <asp:Parameter Name="Code" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Code" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
    </asp:Panel>
</asp:Content>
