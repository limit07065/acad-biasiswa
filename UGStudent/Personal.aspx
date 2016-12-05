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
                        <span id="MainContent_BodyContent_lblAddR1">304,MA6</span>
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
                        <span id="MainContent_BodyContent_lblAddR2">KOLEJ TUN DR. ISMAIL</span>
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
                        <span id="MainContent_BodyContent_lblPostcodeR">81310</span>
                    </td>
                    <td width="11%" class="style158" valign="top">
                        <span id="MainContent_BodyContent_LabelCity" style="color:#333333;font-weight:bold;">City</span>
                    </td>
                    <td class="style158" width="1.5%" valign="top">
                        :
                    </td>
                    <td class="style158" width="30%" valign="top">
                        <span id="MainContent_BodyContent_lblCityR">UTM SKUDAI</span>
                    </td>
                </tr>
                <tr>
                    <td width="10%" class="style158" valign="top">
                        <span id="MainContent_BodyContent_LabelState" style="color:#333333;font-weight:bold;">State</span>
                    </td>
                    <td class="style158" width="1.5%" valign="top">
                        :
                    </td>
                    <td class="style158" width="46%" valign="top">
                        <span id="MainContent_BodyContent_lblStateR">JOHOR</span>
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
                <table style="width: 100%;">
                    <tr>
                        <td class="style158i" style="height: 24px" bgcolor="#990000" colspan="6">
                            <span id="MainContent_BodyContent_Label105" style="color:White;font-weight:bold;">Guardian</span>
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
                            <span id="MainContent_BodyContent_lblName" style="color:#333333;font-weight:normal;">AZALI BIN MD SIDEK</span>
                        </td>
                        <td class="style158i" width="100" style="height: 24px">
                            <span id="MainContent_BodyContent_Label132" style="color:#333333;font-weight:bold;">Occupation</span>
                        </td>
                        <td class="style158i" width="10" style="height: 24px">
                            :
                        </td>
                        <td class="style158i" width="150" style="height: 24px">
                            <span id="MainContent_BodyContent_lblOccupation" style="color:#333333;font-weight:normal;">PEM PMBGN MASYRT</span>
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
                            <span id="MainContent_BodyContent_lblAddress" style="color:#333333;font-weight:normal;">NO D1, KUARTES IKBN PERETAK  NO D1, KUARTES IKBN PERETAK</span>
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label143" style="color:#333333;font-weight:bold;">Salary</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_lblSalary" style="color:#333333;font-weight:normal;">RM    2,100.00</span>
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
                            <span id="MainContent_BodyContent_lblPostcode" style="color:#333333;font-weight:normal;">44000</span>
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label133" style="color:#333333;font-weight:bold;">Phone No.</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_lblPhone" style="color:#333333;font-weight:normal;">0360641202</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label127" style="color:#333333;font-weight:bold;">City</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_lblCity" style="color:#333333;font-weight:normal;">KUALA KUBU BHARU</span>
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
                            <span id="MainContent_BodyContent_lblState" style="color:#333333;font-weight:normal;">10 - SELANGOR</span>
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
                        </td>
                    </tr>
                    <tr>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label1" style="color:#333333;font-weight:bold;">Name</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_lblMotherName" style="color:#333333;font-weight:normal;">MARAINI BINTI MAT ISA</span>
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_Label3" style="color:#333333;font-weight:bold;">Occupation</span>
                        </td>
                        <td class="style158i">
                            :
                        </td>
                        <td class="style158i">
                            <span id="MainContent_BodyContent_lblMotherOccupation" style="color:#333333;font-weight:normal;">01</span>
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
                            <span id="MainContent_BodyContent_lblMotherPosition" style="color:#333333;font-weight:normal;">PEN PEG LATIHAN</span>
                        </td>
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
                            <span id="MainContent_BodyContent_lblMotherSalary" style="color:#333333;font-weight:normal;">RM    4,900.00</span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
             <td class="style158">
                            <strong>Academic Background</strong>
                        </td>
                    </tr>
                     </table>
        </div>
        <div>
	        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="Name_of_institution" DataSourceID="acad" 
                ForeColor="#333333" GridLines="None" Width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Name_of_institution" 
                        HeaderText="Name_of_institution" SortExpression="Name_of_institution" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="CGPA" HeaderText="CGPA" SortExpression="CGPA" />
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
            <asp:SqlDataSource ID="acad" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Name of institution] AS Name_of_institution, [Date], [CGPA], [Level] FROM [koku_awd_Acad_code] WHERE ([Matric] = @Matric)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" DefaultValue="MC123456" 
                        Name="Matric" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
	        
     </div>
      <br/>
             <tr><td class="style158">
                            <strong>Activities</strong>
                        </td>
                    </tr>       

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="Name_Of_reward" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name_Of_reward" HeaderText="Name_Of_reward" 
                    SortExpression="Name_Of_reward" />
                <asp:BoundField DataField="Date_Received" HeaderText="Date_Received" 
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Name Of reward] AS Name_Of_reward, [Date Received] AS Date_Received, [Level] FROM [koku_awd_Acad_code] WHERE ([Matric] = @Matric)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" DefaultValue="MC123456" 
                    Name="Matric" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <br/>
             <tr><td class="style158">
                            <strong>Cocuriculum</strong>
                        </td>
                    </tr> 
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="koku" ForeColor="#333333" GridLines="None" 
            Width="100%" DataKeyNames="Name_of_Association">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Name_of_Association" 
                    HeaderText="Name_of_Association" SortExpression="Name_of_Association" />
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
        <asp:SqlDataSource ID="koku" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Name of Association] AS Name_of_Association, [Position], [Level] FROM [koku_awd_Acad_code] WHERE ([Matric] = @Matric)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView3" DefaultValue="MC123456" 
                    Name="Matric" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

       <tr><td class="style158">
                            <strong>Publish</strong>
                        </td>
                    </tr> 
   
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="published" ForeColor="#333333" GridLines="None" 
            Width="100%" DataKeyNames="Title">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Date_of_publication" 
                    HeaderText="Date_of_publication" SortExpression="Date_of_publication" />
                <asp:BoundField DataField="column1" HeaderText="column1" 
                    SortExpression="column1" />
                <asp:BoundField DataField="Type_of_publication" 
                    HeaderText="Type_of_publication" SortExpression="Type_of_publication" />
                <asp:BoundField DataField="Status_of_paper" HeaderText="Status_of_paper" 
                    SortExpression="Status_of_paper" />
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
        <asp:SqlDataSource ID="published" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [Title], [Date of publication] AS Date_of_publication, [Author(s)] AS column1, [Type of publication] AS Type_of_publication, [Status of paper] AS Status_of_paper FROM [Publication] WHERE ([Matric] = @Matric)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView4" DefaultValue="MC123456" 
                    Name="Matric" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
   
    </asp:Panel>
</asp:Content>

