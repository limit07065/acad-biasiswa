<%@ Page Title="" Language="C#" MasterPageFile="~/SPS/SPSMasterPage.master" AutoEventWireup="true"
    CodeFile="listApplication.aspx.cs" Inherits="SPS_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">
    <style>
        a:hover
        {
            text-decoration: underline;    
        }
    </style>
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a href=""><span class="fa fa-navicon"></span>&nbsp;Application List</a></li>
        </ul>
    </div>
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="True" UpdateMode="Conditional">
            <ContentTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td style="width: 582px">
                            <asp:LinkButton ID="btnSelectAll" runat="server" ToolTip="Show record(s) from all session"
                                OnClick="btnSelectAll_Click">Select All Session</asp:LinkButton>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="btnSelectCurrent" runat="server" ToolTip="Show record(s) from current session"
                                OnClick="btnSelectCurrent_Click">Select Current Session</asp:LinkButton>
                            <br />
                            <asp:Label ID="lblSession" runat="server" Text="Session: "></asp:Label>
                            <asp:DropDownList ID="ddlSession" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="">All</asp:ListItem>
                                <asp:ListItem Value="20052006">20052006</asp:ListItem>
                                <asp:ListItem Value="20062007">20062007</asp:ListItem>
                                <asp:ListItem Value="20072008">20072008</asp:ListItem>
                                <asp:ListItem Value="20082009">20082009</asp:ListItem>
                                <asp:ListItem Value="20092010">20092010</asp:ListItem>
                                <asp:ListItem Value="20102011">20102011</asp:ListItem>
                                <asp:ListItem Value="20112012">20112012</asp:ListItem>
                                <asp:ListItem Value="20122013">20122013</asp:ListItem>
                                <asp:ListItem Value="20132014">20132014</asp:ListItem>
                                <asp:ListItem Value="20142015">20142015</asp:ListItem>
                                <asp:ListItem Value="20152016">20152016</asp:ListItem>
                                <asp:ListItem Value="20162017" Selected="True">20162017</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;
                            <asp:Label ID="lblSemester" runat="server" Text="Semester: "></asp:Label>
                            <asp:DropDownList ID="ddlSemester" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="">All</asp:ListItem>
                                <asp:ListItem Value="1" Selected="True">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;
                            <asp:Label ID="lblMonth" runat="server" Text="Month: "></asp:Label>
                            <asp:DropDownList ID="ddlMonth" runat="server" AutoPostBack="True">
                                <asp:ListItem Value="">All</asp:ListItem>
                                <asp:ListItem Value="1">Jan</asp:ListItem>
                                <asp:ListItem Value="2">Feb</asp:ListItem>
                                <asp:ListItem Value="3">Mar</asp:ListItem>
                                <asp:ListItem Value="4">Apr</asp:ListItem>
                                <asp:ListItem Value="5">May</asp:ListItem>
                                <asp:ListItem Value="6">Jun</asp:ListItem>
                                <asp:ListItem Value="7">Jul</asp:ListItem>
                                <asp:ListItem Value="8">Aug</asp:ListItem>
                                <asp:ListItem Value="9">Sept</asp:ListItem>
                                <asp:ListItem Value="10">Oct</asp:ListItem>
                                <asp:ListItem Value="11">Nov</asp:ListItem>
                                <asp:ListItem Value="12">Dec</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Label ID="lblKeyword" runat="server" Text="Keyword: "></asp:Label>
                            <asp:TextBox ID="searchBar" runat="server" Text=""></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Search" />
                            <br />
                        </td>
                        <td align="right">
                            <asp:Label ID="lblFaculty" runat="server" Text="Faculty: "></asp:Label>
                            <asp:DropDownList ID="ddlFaculty" runat="server" AutoPostBack="True">
                                <asp:ListItem Selected="True" Value="">All</asp:ListItem>
                                <asp:ListItem Value="21">Fakulti Alam Bina (FAB)</asp:ListItem>
                                <asp:ListItem Value="22">Fakulti Kejuruteraan Awam (FKA)</asp:ListItem>
                                <asp:ListItem Value="23">Fakulti Kejuruteraan Elektrik (FKE)</asp:ListItem>
                                <asp:ListItem Value="24">Fakulti Kejuruteraan Mekanikal (FKM)</asp:ListItem>
                                <asp:ListItem Value="25">Fak. Kej. Kimia Dan Kej. Sumber Asli (FKKKSA)</asp:ListItem>
                                <asp:ListItem Value="26">Fakulti Sains (FS)</asp:ListItem>
                                <asp:ListItem Value="28">Fakulti Komputeran (FC)</asp:ListItem>
                                <asp:ListItem Value="27">Fakulti Geoinformasi dan Harta Tanah (FGHT)</asp:ListItem>
                                <asp:ListItem Value="29">Fakulti Pengurusan (FM)</asp:ListItem>
                                <asp:ListItem Value="31">Fakulti Pendidikan (FP)</asp:ListItem>
                                <asp:ListItem Value="33">Fakulti Tamadun Islam (FTI)</asp:ListItem>
                                <asp:ListItem Value="36">Fakulti Kejuruteraan Bioperubatan & Sains Kesihatan (FKBSK)</asp:ListItem>
                                <asp:ListItem Value="10">Sekolah Pengajian Siswazah (SPS)</asp:ListItem>
                                <asp:ListItem Value="63">International Business School (IBS)</asp:ListItem>
                                <asp:ListItem Value="35">Fakulti Biosains dan Biokejuruteraan (FBB)</asp:ListItem>
                                <asp:ListItem Value="38">UTM AIS (UTM AIS)</asp:ListItem>
                                <asp:ListItem Value="39">Perdana School Of Science Technology & Innovation Policy (UTM Perdana)</asp:ListItem>
                                <asp:ListItem Value="40">UTM Razak School of Engineering and Advanced Technology (UTM Razak)</asp:ListItem>
                                <asp:ListItem Value="41">Akademi Bahasa (LA)</asp:ListItem>
                                <asp:ListItem Value="42">Fakulti Kejuruteraan Petroleum Dan Kejuruteraan Tenaga Diperbaharui (FPREE)</asp:ListItem>
                                <asp:ListItem Value="43">Institut Teknologi Antarabangsa Malaysia - Jepun (MJIIT)</asp:ListItem>
                                <asp:ListItem Value="44">Fakulti Kejuruteraan Kimia (FKK)</asp:ListItem>
                                <asp:ListItem Value="45">Fakulti BioSains Dan Kejuruteraan Perubatan (FBME)</asp:ListItem>
                                <asp:ListItem Value="46">Fakulti Kejuruteraan Kimia dan Kejuruteraan Tenaga (FKT)</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Label ID="lblAppStatus" runat="server" Text="Application status: "></asp:Label>
                            <asp:DropDownList ID="ddlStatus" runat="server" AutoPostBack="True">
                                <asp:ListItem Selected="True" Value="">All status</asp:ListItem>
                                <asp:ListItem Value="BIA_01">1. Permohonan diterima</asp:ListItem>
                                <asp:ListItem Value="BIA_02">2. Permohonan dihantar kepada Penyelia</asp:ListItem>
                                <asp:ListItem Value="BIA_03">3. Penyelia telah kemaskini permohonan</asp:ListItem>
                                <asp:ListItem Value="BIA_04">4. Permohonan dihantar kepada Fakulti</asp:ListItem>
                                <asp:ListItem Value="BIA_05">5. Permohonan disahkan oleh Fakulti</asp:ListItem>
                                <asp:ListItem Value="BIA_06">6. Surat Panggil Temuduga dihantar</asp:ListItem>
                                <asp:ListItem Value="BIA_07">7. Keputusan permohonan</asp:ListItem>
                                <asp:ListItem Value="BIA_08">8. Surat Tawaran / Dukacita</asp:ListItem>
                                <asp:ListItem Value="BIA_09">9. Dokumen Perjanjian diterima</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <asp:Label ID="lblType" runat="server" Text="Type: "></asp:Label>
                            <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="True">
                                <asp:ListItem Selected="True" Value="">All</asp:ListItem>
                                <asp:ListItem Value="174A">Zamalah - Master</asp:ListItem>
                                <asp:ListItem Value="174B">Zamalah - PHD</asp:ListItem>
                                <asp:ListItem Value="176">International Doctorial Fellowship</asp:ListItem>
                                <asp:ListItem Value="177">Postgraduate National Fund</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                </table>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"
                    ShowHeaderWhenEmpty="True" Width="100%" AutoGenerateColumns="False" 
                    EmptyDataText="&lt;strong&gt;&lt;center&gt;No record found&lt;/center&gt;&lt;/strong&gt;" 
                    DataKeyNames="Matrix_No" OnRowDataBound="GridView1_RowDataBound">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="No">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Faculty" HeaderText="Faculty" 
                            SortExpression="Faculty" />
                        <asp:TemplateField HeaderText="Name" SortExpression="Stu_Name">
                            <ItemTemplate>
                            <asp:LinkButton ID="viewStuInfo" runat="server"><%# Eval("Stu_Name") %></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Matrix_No" HeaderText="Matrix No" 
                            SortExpression="Matrix_No" />
                        <asp:TemplateField HeaderText="App. Date" SortExpression="App_Date">
                            <ItemTemplate>
                            <asp:Label runat="server"><%# ((DateTime)Eval("App_Date")).ToString("dd-MMM-yyyy") %></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Session" HeaderText="Session" 
                            SortExpression="Session" />
                        <asp:BoundField DataField="Program" HeaderText="Program" 
                            SortExpression="Program" />
                        <asp:BoundField DataField="Nationality" HeaderText="Nationality" 
                            SortExpression="Nationality" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:TemplateField HeaderText="Mark" SortExpression="Mark">
                            <ItemTemplate>
                            <asp:LinkButton ID="viewMark" runat="server"><%# Eval("Mark") %></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="App. Status" SortExpression="App_Status">
                            <ItemTemplate>
                            <asp:LinkButton ID="viewStatus" runat="server"><%# Eval("App_Status")%></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerSettings Mode="NumericFirstLast" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Wrap="True" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
        SelectCommand="SELECT DISTINCT * FROM [vw_Application] WHERE (([Bia_Code] LIKE '%' + @Bia_Code + '%') AND ([Fac_Code] LIKE '%' + @Fac_Code + '%') AND ([Session] LIKE '%' + @Session + @Semester + '%') AND ([Status_Code] LIKE '%' + @App_Status + '%') AND ([Stu_Name] LIKE '%' + @Keyword + '%') OR ([Matrix_No] LIKE '%' + @Keyword + '%'))">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlType" Name="Bia_Code" 
                PropertyName="SelectedValue" Type="String" ConvertEmptyStringToNull="false" />
            <asp:ControlParameter ControlID="ddlFaculty" Name="Fac_Code" 
                PropertyName="SelectedValue" Type="String" ConvertEmptyStringToNull="false" />
            <asp:ControlParameter ControlID="ddlSession" Name="Session"
                PropertyName="SelectedValue" Type="String" ConvertEmptyStringToNull="false" />
            <asp:ControlParameter ControlID="ddlSemester" Name="Semester"
                PropertyName="SelectedValue" Type="String" ConvertEmptyStringToNull="false" />
            <asp:ControlParameter ControlID="ddlStatus" Name="App_Status" 
               PropertyName="SelectedValue" Type="String" ConvertEmptyStringToNull="false" />
            <asp:ControlParameter ControlID="searchBar" Name="Keyword" 
               PropertyName="Text" Type="String" ConvertEmptyStringToNull="false" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />

    <script type="javascript">
        function viewStuInfo(str) {
            window.open("../frmPersonalDetail.aspx?matrixNo=" + str, 'detailWindow', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=700,height=550,left=20,top=20');
        }

        function viewStatus(matrixNo, session) {
            window.open("../frmProcess.aspx?matrixNo=" + matrixNo + "&session=" + session, "statusWindow", 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=1000,height=500,left=20,top=20');
        }
    </script>
</asp:Content>
