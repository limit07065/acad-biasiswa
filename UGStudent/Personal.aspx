<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="UGStudent_Personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
     <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a href="Personal.aspx"><span class="fa fa-user"></span> Personal Details</a></li>
         
            <li><a href="frmDeclare.aspx"><span class="fa fa-user"></span> Student Declaration</a></li>
            </ul>
    </div>
        
        <div>
        <table style="width: 100%;">
                <tr>
                    <td class="style158" style="height: 24px" bgcolor="#990000" colspan="6">
                        <span id="MainContent_BodyContent_labelRA" style="color:White;font-weight:bold;">Residential Address</span>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
                            
                            SelectCommand="SELECT * FROM [ADDRESS] WHERE (([Matrix_No] = @Matrix_No) AND ([Address_Type] = @Address_Type))">
                            <SelectParameters>
                                <asp:SessionParameter DefaultValue="A14CS0095" Name="Matrix_No" 
                                    SessionField="matricNo" Type="String" />
                                <asp:SessionParameter DefaultValue="4" Name="Address_Type" 
                                    SessionField="Add_type" Type="Int16" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td width="10%" class="style158" valign="top">
                        <span id="MainContent_BodyContent_LabelAddress" style="color:#333333;font-weight:bold;">Address</span>
                    </td>
                    <td class="style158" width="1.5%" valign="top">
                        :
                    </td>
                    <td class="style158" valign="top" colspan="4">
                        <asp:Label ID="lblSadd" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="10%" class="style158">
                        &nbsp;
                    </td>
                    <td class="style158" width="1.5%">
                        &nbsp;
                    </td>
                    <td class="style158" colspan="4" valign="top">
                        &nbsp;<asp:Label ID="lblSadd1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td width="10%" class="style158" valign="top">
                        <span id="MainContent_BodyContent_LabelPostcode" style="color:#333333;font-weight:bold;">Postcode</span>
                    </td>
                    <td class="style158" width="1.5%" valign="top">
                        :
                    </td>
                    <td class="style158" width="46%" valign="top">
                        <asp:Label ID="lblPost" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td width="11%" class="style158" valign="top">
                        <span id="MainContent_BodyContent_LabelCity" style="color:#333333;font-weight:bold;">City</span>
                    </td>
                    <td class="style158" width="1.5%" valign="top">
                        :
                    </td>
                    <td class="style158" width="30%" valign="top">
                        <asp:Label 
                            ID="lblCity" runat="server" Text="Label"></asp:Label>
&nbsp;</td>
                </tr>
                <tr>
                    <td width="10%" class="style158" valign="top">
                        <span id="MainContent_BodyContent_LabelState" style="color:#333333;font-weight:bold;">State</span>
                    </td>
                    <td class="style158" width="1.5%" valign="top">
                        :
                    </td>
                    <td class="style158" width="46%" valign="top">
                        <asp:Label ID="lblState" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td width="11%" class="style158" valign="top">
                        <span id="MainContent_BodyContent_LabelPhone" style="color:#333333;font-weight:bold;">Phone No.</span>
                    </td>
                    <td class="style158" width="1.5%" valign="top">
                        :
                    </td>
                    <td class="style158" width="30%" valign="top">
                        <span id="MainContent_BodyContent_lblTelCodeR"></span><span id="MainContent_BodyContent_lblTelNoR"></span>
                    </td>
                </tr>
            </table>

            <table style="width: 100%;">
        <tr>
            <td bgcolor="White" class="style162">
                <table style="width: 100%; height: 281px; margin-bottom: 25px;">
                    <tr>
                        <td class="style158i" style="height: 24px" bgcolor="#990000" colspan="6">
                            <span id="MainContent_BodyContent_Label105" style="color:White;font-weight:bold;">Guardian<asp:Label 
                                ID="lblAdd" runat="server" Text="Label"></asp:Label>
                            </span>
                            &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
                                SelectCommand="SELECT * FROM [GUARDIAN] WHERE (([Matirx_No] = @Matirx_No) AND ([Relation] = @Relation))">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="A14CS0095" Name="Matirx_No" 
                                        SessionField="matricNo" Type="String" />
                                    <asp:SessionParameter DefaultValue="Father" Name="Relation" 
                                        SessionField="stud_relation" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
                                SelectCommand="SELECT * FROM [ADDRESS] WHERE (([Matrix_No] = @Matrix_No) AND ([Address_Type] = @Address_Type))">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="A14CS0095" Name="Matrix_No" 
                                        SessionField="parentAdd" Type="String" />
                                    <asp:SessionParameter DefaultValue="1" Name="Address_Type" 
                                        SessionField="parentAddtype" Type="Int16" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style158i" width="100" style="height: 24px">
                            <span id="MainContent_BodyContent_Label106" style="color:#333333;font-weight:bold;">Name</span>
                        </td>
                        <td class="style158i" width="10" style="height: 24px">
                            :
                        </td>
                        <td class="style158i" style="width: *; height: 24px;">
                            &nbsp;<asp:Label ID="lblFname" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style158i" width="100" style="height: 24px">
                            <span id="MainContent_BodyContent_Label132" style="color:#333333;font-weight:bold;">Occupation</span>
                        </td>
                        <td class="style158i" width="10" style="height: 24px">
                            :
                        </td>
                        <td class="style158i" width="150" style="height: 24px">
                            &nbsp;<asp:Label ID="lblFOcc" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label110" style="color:#333333;font-weight:bold;">Address</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            <asp:Label ID="lblFadd" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label143" style="color:#333333;font-weight:bold;">Salary</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_lblSalary" style="color:#333333;font-weight:normal;">
                            RM </span>
                            <asp:Label ID="lblFsalary" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label126" style="color:#333333;font-weight:bold;">Postcode</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            <asp:Label ID="lblFpost" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label133" style="color:#333333;font-weight:bold;">Phone No.</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            &nbsp;<asp:Label ID="lblphone" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label127" style="color:#333333;font-weight:bold;">City</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i" ID="lblFcity">
                            <asp:Label ID="lblFcity" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label134" style="color:#333333;font-weight:bold;">Ext. No</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_lblExt" style="color:#333333;font-weight:normal;"></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label135" style="color:#333333;font-weight:bold;">State</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            <asp:Label ID="lblFstate" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label142" style="color:#333333;font-weight:bold;">Dependents</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_lblDependents" style="color:#333333;font-weight:normal;">3 person(s)</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="style158i" style="height: 24px" colspan="6">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style158i" style="height: 24px" bgcolor="#990000" colspan="6">
                            <span id="MainContent_BodyContent_Label10" style="color:White;font-weight:bold;">Mother</span>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
                                SelectCommand="SELECT * FROM [GUARDIAN] WHERE (([Matirx_No] = @Matirx_No) AND ([Relation] = @Relation))">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="A14CS0095" Name="Matirx_No" 
                                        SessionField="stud_parent" Type="String" />
                                    <asp:SessionParameter DefaultValue="Mother" Name="Relation" 
                                        SessionField="Relation_parent" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </td>
                    </tr>
                    <tr>
                        <td class="style158i" style="height: 24px">
                            <span id="MainContent_BodyContent_Label1" style="color:#333333;font-weight:bold;">Name</span>
                        </td>
                        <td class="style158i" style="height: 24px">
                            :
                        </td>
                        <td class="style158i" style="height: 24px">
                            &nbsp;<asp:Label ID="lblMname" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td class="style158i" style="height: 24px">
                            <span id="MainContent_BodyContent_Label3" style="color:#333333;font-weight:bold;">Occupation</span>
                        </td>
                        <td class="style158i" style="height: 24px">
                            :
                        </td>
                        <td class="style158i" style="height: 24px">
                            &nbsp;<asp:Label ID="lblMOcc" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label7" style="color:#333333;font-weight:bold;"></span>
                        </td>
                        <td class="style158i">
                            &nbsp;
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label8" style="color:#333333;font-weight:normal;"></span>
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label9" style="color:#333333;font-weight:bold;">Position</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label2" style="color:#333333;font-weight:bold;"></span>
                        </td>
                        <td class="style158i">
                            &nbsp;
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label4" style="color:#333333;font-weight:normal;"></span>
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label6" style="color:#333333;font-weight:bold;">Salary</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_lblMotherSalary" style="color:#333333;font-weight:normal;">
                            RM </span>
                            <asp:Label ID="lblMsalary" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style158i">
                            &nbsp;</td>
                        <td class="style158i">
                            &nbsp;</td>
                        <td class="style158i">
                            &nbsp;</td>
                        <td class="style158i">
                            &nbsp;</td>
                        <td class="style158i">
                            &nbsp;</td>
                        <td class="style158i">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
             <td class="style158" bgcolor="#990000" style="color: #FFFFFF">
                            <strong>ACADEMIC BACKGROUND</strong>
                            (Master Level)<asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
                                SelectCommand="SELECT [Name_of_Institution], [Date], [CGPA], [Field_of_Study] FROM [ACADEMIC_BACK] WHERE ([Matrix_No] = @Matrix_No)">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="A14CS0095" Name="Matrix_No" 
                                        SessionField="matricNo" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
             </td>
                    </tr>
                     </table>
        </div>
        <div>
	        
            <table style="width: 100%;">
                <tr>
                    <td class="style158i" style="height: 24px; width: 134px;">
                        <span ID="MainContent_BodyContent_Label145" 
                            style="color:#333333;font-weight:bold;">Name</span> <strong>of Institution</strong></td>
                    <td class="style158i" style="height: 24px; width: 10px;">
                        :
                    </td>
                    <td class="style158i" style="height: 24px">
                        &nbsp;<asp:Label ID="lblSIns" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style158i" style="height: 24px; width: 115px;">
                        <strong>CGPA</strong>
                    </td>
                    <td class="style158i" colspan="2" style="height: 24px">
                        :
                        <asp:Label ID="lblcgpa" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style158i" style="width: 134px">
                        <span ID="MainContent_BodyContent_Label147" 
                            style="color:#333333;font-weight:bold;">Date of Graduation</span></td>
                    <td class="style158i" style="width: 10px">
                        &nbsp;:</td>
                    <td class="style158i" style="font-weight: bold">
                        <span ID="MainContent_BodyContent_Label148" 
                            style="color:#333333;font-weight:normal;"></span>
                        <asp:Label ID="lblSGrad" runat="server" Font-Bold="False" Text="Label"></asp:Label>
                    </td>
                    <td class="style158i" style="font-weight: bold; width: 115px">
                        Field Of Study
                    </td>
                    <td class="style158i" colspan="2">
                        :
                        <asp:Label ID="lblField" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style158i" style="width: 134px">
                        <span ID="MainContent_BodyContent_Label150" 
                            style="color:#333333;font-weight:bold;"></span>
                    </td>
                    <td class="style158i" style="width: 10px">
                        &nbsp;
                    </td>
                    <td class="style158i">
                        <span ID="MainContent_BodyContent_Label151" 
                            style="color:#333333;font-weight:normal;"></span>
                    </td>
                    <td class="style158i" style="width: 115px">
&nbsp;</td>
                    <td class="style158i">
                        &nbsp;</td>
                    <td class="style158i">
                        &nbsp;</td>
                </tr>
            </table>
	        
     </div>
      <br/>
             <tr><td class="style158">
                            <strong>ACADEMIC AWARDS </strong><br />
                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="Acad_Award" ForeColor="#333333" GridLines="None" 
                                Width="829px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Name_of_Award" HeaderText="Name of Award" 
                                        SortExpression="Name_of_Award" />
                                    <asp:BoundField DataField="Date_Received" HeaderText="Date Received" 
                                        SortExpression="Date_Received" />
                                    <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                                </Columns>
                                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                <SortedDescendingHeaderStyle BackColor="#820000" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="Acad_Award" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
                                SelectCommand="SELECT [Name_of_Award], [Date_Received], [Level] FROM [ACAD_AWARD] WHERE ([Matrix_No] = @Matrix_No)">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="A14CS0095" Name="Matrix_No" 
                                        SessionField="matricNo" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br/>
                            <tr>
                                <td class="style158">
                                    <strong>CO-CURICULUM</strong>
                                    <br />
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="Name_of_association" DataSourceID="cocuriculum" 
                                        ForeColor="#333333" GridLines="None" Width="100%">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Name_of_association" 
                                                HeaderText="Name of Association" SortExpression="Name_of_association" />
                                            <asp:BoundField DataField="Position" HeaderText="Position" 
                                                SortExpression="Position" />
                                            <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                                        </Columns>
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="cocuriculum" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
                                        SelectCommand="SELECT [Name_of_association], [Position], [Level] FROM [vw_Co-Cu] WHERE ([Matrix_No] = @Matrix_No)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView2" DefaultValue="A14CS0095" 
                                                Name="Matrix_No" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style158">
                                    <strong>PUBLICATION<br /> </strong>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataSourceID="Publication" ForeColor="#333333" GridLines="None" 
                                        Width="100%">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                                            <asp:BoundField DataField="authors" HeaderText="Authors" 
                                                SortExpression="authors" />
                                            <asp:BoundField DataField="Date_publication" HeaderText="Date of Publication" 
                                                SortExpression="Date_publication" />
                                            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                                        </Columns>
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="Publication" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
                                        SelectCommand="SELECT [title], [authors], [Date_publication], [type] FROM [PUBLICATION] WHERE ([matrix_no] = @matrix_no)">
                                        <SelectParameters>
                                            <asp:SessionParameter DefaultValue="A14CS0095" Name="matrix_no" 
                                                SessionField="matricNo" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                        </td>
                    </tr>       

    </asp:Panel>
</asp:Content>

