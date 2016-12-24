<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="frmStudentActivities.aspx.cs" Inherits="UGStudent_frmStudentActivities" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
 
<div id="cssmenu2">
    <p align="center" 
        style="font-style: normal; font-variant: normal; text-transform: uppercase; font-weight: normal; text-decoration: underline;">UTM ZAMALAH Scholarship Application</p>
        <br/>    <ul style="font-size: small">
            <li ><a href="frmStudentDetails.aspx"><span class="fa fa-user"></span> Personal Details</a></li>
            <li class="active"><a href=" frmStudentActivities.aspx"><span class="fa fa-user"></span> Activities</a></li>
            <li><a href="frmStudentDeclare.aspx"><span class="fa fa-user"></span> Student Declaration</a></li>
            </ul>
    </div>
    <div>
        UTM ZAMALAH
         <ul class="nav nav-tabs">
            
            <li class="active"><a data-toggle="tab" href="#Awardstab" style="color: Black; padding: 3px 10px 3px 10px">
            AWARDS</a></li>
              <li><a data-toggle="tab" href="#Cocuriculumtab" style="color: Black; padding: 3px 10px 3px 10px">
              Co-CURICULUM</a></li>
              <li ><a data-toggle="tab" href="#Publicationtab" style="color: Black; padding: 3px 10px 3px 10px">
            PUBLICATION</a></li>
                </ul>
        </div>
     <div class="tab-content">
                                
                          <div id="Awardstab" class="tab-pane fade in active">
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
                                  
                                </div>
                               
                                <div id="Cocuriculumtab" class="tab-pane fade">
                                <tr>
                                <td class="style158">
                                    <strong>CO-CURICULUM</strong>
                                    <br />
                                    
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="4" DataKeyNames="Name_of_association" DataSourceID="Cocuriculum" 
                                        ForeColor="#333333" GridLines="None" Width="100%">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Name_of_association" 
                                                HeaderText="Name_of_association" SortExpression="Name_of_association" />
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
                                     <asp:SqlDataSource ID="Cocuriculum" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
                              SelectCommand="SELECT [Name_of_association], [Position], [Level] FROM [vw_Co-Cu] WHERE ([Matrix_No] = @Matrix_No)">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="A14CS0095" Name="Matrix_No" 
                                        SessionField="matricNo" Type="String" />
                                </SelectParameters>
                          </asp:SqlDataSource>
                                    <br />
                                </td>
                         </tr>

                                </div>
                                <div id="Publicationtab" class="tab-pane fade">
                                   <tr>
                                <td class="style158">
                                    <strong>PUBLICATION<br /> 
                                    <asp:SqlDataSource ID="Publication" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
                                        SelectCommand="SELECT [title], [authors], [Date_publication], [type] FROM [PUBLICATION] WHERE ([matrix_no] = @matrix_no)">
                                        <SelectParameters>
                                            <asp:SessionParameter DefaultValue="A14CS0095" Name="matrix_no" 
                                                SessionField="matricNo" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    </strong>
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
                                    <br />
                                </td>
                            </tr>
                                </div>

                                
                           
                            </div>

                             <script type="text/javascript">
            $(window).load(function() {
	            // light
	            $('.tl').timeline({
		            startItem : '26/06/2016',
	            });
            });	
            </script>

</asp:Content>

