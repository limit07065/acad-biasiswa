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
                            (Master Level)</td>
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
                        &nbsp;<asp:Label ID="lblMname0" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="style158i" style="height: 24px; width: 115px;">
                        <strong>CGPA</strong>
                    </td>
                    <td class="style158i" colspan="2" style="height: 24px">
                        :
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
                    </td>
                    <td class="style158i" style="font-weight: bold; width: 115px">
                        Field Of Study
                    </td>
                    <td class="style158i" colspan="2">
                        :
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
                            <strong>ACTIVITIES</strong><br />
                            <table style="width: 100%;">
                                <tr>
                                    <td bgcolor="#990000" class="style158i" colspan="6" style="height: 24px">
                                        <span ID="MainContent_BodyContent_Label153" 
                                            style="color:White;font-weight:bold;">Mother</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style158i" style="height: 24px">
                                        <span ID="MainContent_BodyContent_Label154" 
                                            style="color:#333333;font-weight:bold;">Name</span>
                                    </td>
                                    <td class="style158i" style="height: 24px">
                                        :
                                    </td>
                                    <td class="style158i" style="height: 24px">
                                        &nbsp;<asp:Label ID="lblMname1" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td class="style158i" style="height: 24px">
                                        <span ID="MainContent_BodyContent_Label155" 
                                            style="color:#333333;font-weight:bold;">Occupation</span>
                                    </td>
                                    <td class="style158i" style="height: 24px">
                                        :
                                    </td>
                                    <td class="style158i" style="height: 24px">
                                        &nbsp;<asp:Label ID="lblMOcc1" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style158i">
                                        <span ID="MainContent_BodyContent_Label156" 
                                            style="color:#333333;font-weight:bold;"></span>
                                    </td>
                                    <td class="style158i">
                                        &nbsp;
                                    </td>
                                    <td class="style158i">
                                        <span ID="MainContent_BodyContent_Label157" 
                                            style="color:#333333;font-weight:normal;"></span>
                                    </td>
                                    <td class="style158i">
                                        <span ID="MainContent_BodyContent_Label158" 
                                            style="color:#333333;font-weight:bold;">Position</span>
                                    </td>
                                    <td class="style158i">
                                        :
                                    </td>
                                    <td class="style158i">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style158i">
                                        <span ID="MainContent_BodyContent_Label159" 
                                            style="color:#333333;font-weight:bold;"></span>
                                    </td>
                                    <td class="style158i">
                                        &nbsp;
                                    </td>
                                    <td class="style158i">
                                        <span ID="MainContent_BodyContent_Label160" 
                                            style="color:#333333;font-weight:normal;"></span>
                                    </td>
                                    <td class="style158i">
                                        <span ID="MainContent_BodyContent_Label161" 
                                            style="color:#333333;font-weight:bold;">Salary</span>
                                    </td>
                                    <td class="style158i">
                                        :
                                    </td>
                                    <td class="style158i">
                                        <span ID="MainContent_BodyContent_lblMotherSalary1" 
                                            style="color:#333333;font-weight:normal;">RM </span>
                                        <asp:Label ID="lblMsalary1" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <br/>
                            <tr>
                                <td class="style158">
                                    <strong>CO-CURICULUM</strong>
                                    <br />
                                    <table style="width: 100%;">
                                        <tr>
                                            <td bgcolor="#990000" style="height: 24px; color: #FFFFFF;">
                                                <strong>Name</strong></td>
                                            <td bgcolor="#990000" class="style158i" style="height: 24px; color: #FFFFFF;">
                                                <strong>Position</strong></td>
                                            <td bgcolor="#990000" class="style158i" style="height: 24px; color: #FFFFFF;">
                                                <strong>&nbsp;Level</strong></td>
                                        </tr>
                                        <tr>
                                            <td class="style158i">
                                                <span ID="MainContent_BodyContent_Label165" 
                                                    style="color:#333333;font-weight:bold;"></span>
                                                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                            </td>
                                            <td class="style158i">
                                                &nbsp;
                                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                            </td>
                                            <td class="style158i">
                                                <span ID="MainContent_BodyContent_Label166" 
                                                    style="color:#333333;font-weight:normal;"></span>
                                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style158i">
                                                <span ID="MainContent_BodyContent_Label168" 
                                                    style="color:#333333;font-weight:bold;"></span>
                                            </td>
                                            <td class="style158i">
                                                &nbsp;
                                            </td>
                                            <td class="style158i">
                                                <span ID="MainContent_BodyContent_Label169" 
                                                    style="color:#333333;font-weight:normal;"></span>
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td class="style158">
                                    <strong>PUBLICATION</strong><br />
                                    <table style="width: 100%;">
                                        <tr>
                                            <td bgcolor="#990000" class="style158i" style="color: #FFFFFF;">
                                                <strong>&nbsp;Name Of Publication</strong></td>
                                            <td bgcolor="#990000" class="style158i" style="color: #FFFFFF;">
                                                <strong>Name of Jounal</strong></td>
                                            <td bgcolor="#990000" class="style158i" 
                                                style="color: #FFFFFF; font-weight: bold;">
                                                Authors</td>
                                            <td bgcolor="#990000" class="style158i" 
                                                style="color: #FFFFFF; font-weight: bold;">
                                                URL</td>
                                            <td bgcolor="#990000" class="style158i" 
                                                style="color: #FFFFFF; font-weight: bold;">
                                                Date of Publication</td>
                                        </tr>
                                        <tr>
                                            <td class="style158i" style="width: 140px">
                                                <span ID="MainContent_BodyContent_Label174" 
                                                    style="color:#333333;font-weight:bold;"></span>
                                                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                            </td>
                                            <td class="style158i" style="width: 142px">
                                                &nbsp;
                                                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                            </td>
                                            <td class="style158i" style="width: 162px">
                                                <span ID="MainContent_BodyContent_Label175" 
                                                    style="color:#333333;font-weight:normal;"></span>
                                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                            </td>
                                            <td class="style158i" style="width: 176px">
                                                &nbsp;</td>
                                            <td class="style158i">
                                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style158i" style="width: 140px">
                                                <span ID="MainContent_BodyContent_Label177" 
                                                    style="color:#333333;font-weight:bold;"></span>
                                            </td>
                                            <td class="style158i" style="width: 142px">
                                                &nbsp;
                                            </td>
                                            <td class="style158i" style="width: 162px">
                                                <span ID="MainContent_BodyContent_Label178" 
                                                    style="color:#333333;font-weight:normal;"></span>
                                            </td>
                                            <td class="style158i" style="width: 176px">
                                                &nbsp;</td>
                                            <td class="style158i">
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                    <br />
                                </td>
                            </tr>
                        </td>
                    </tr>       

    </asp:Panel>
</asp:Content>

