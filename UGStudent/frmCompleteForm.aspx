<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmCompleteForm.aspx.cs" Inherits="UGStudent_frmPersonal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            height: 48px;
        }
        .style3
        {
            height: 47px;
        }
        .style4
        {
            width: 151px;
            height: 181px;
        }
        .style5
        {
            height: 24px;
        }
        .style6
        {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="sqlStudent" runat="server" 
            ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
            SelectCommand="SELECT * FROM [vw_StuInfo] WHERE ([Matrix_No] = @Matrix_No)" >
            <SelectParameters>
                <asp:QueryStringParameter Name="Matrix_No" QueryStringField="mat" 
                    Type="String" />
            </SelectParameters>
            
            
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
            
            SelectCommand="SELECT * FROM [ADDRESS] WHERE (([Address_Type] = @Address_Type) AND ([Matrix_No] = @Matrix_No))">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="1" Name="Address_Type" 
                    SessionField="addType" Type="Int16" />
                <asp:SessionParameter DefaultValue="A14CS0095" Name="Matrix_No" 
                    SessionField="matricNo" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table style="width: 100%">
            <tr>
                <td valign="top">
                    <img alt="" src="http://spsapp3.utm.my:8080/biav2/images/utmLogo.png" /><br />
                    <div style="font-size: 20px; font-weight: bold">
                        2016 ZAMALAH (20162017/1/September)</div>
                    <div style="font-size: 20px; font-weight: bold">
                        SCHOLARSHIP APPLICATION FORM</div>
                    <br />
                    <div style="font-size: 16px; font-weight: bold">
                        SCHOOL OF GRADUATE STUDIES</div>
                    <br>
                    Tel: 07-5537816&nbsp;&nbsp;&nbsp;&nbsp;Fax: 07-5537800&nbsp;&nbsp;e-mail: sps.scholarship@utm.my<br />
                    <br />
                    <b>http://www.sps.utm.my</b>
                </td>
                <td valign="top">
                    &nbsp;
                    <img alt="" class="style4" src="../Styles/images/nophoto.png" /></td>
            </tr>
            <tr>
                <td colspan="2" style="font-size: 10px; padding: 5px">
                    <br />
                    Please note that
                    <br />
                    <ol>
                        <li>All new Institutional Scholarship and Zamalah applicants are required to complete
                            this application form. The existing Institutional Scholarship recipients are also
                            required to complete the form for renewal.</li><li>Copies of all the required information,
                                for example, papers in journals must be attached, or else the application will be
                                considered incomplete and rejected.</li></ol>
                </td>
            </tr>
        </table>
        <table width="95%" align="center" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td style="padding: 10px; font-size: 10px">
                    <strong>A. DECLARATION</strong>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" class="style3">
                    <b>Have you ever received the Zamalah or Institutional Scholarship before?</b><br />
                    <br />
                    No
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table width="95%" align="center" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4" style="padding: 10px; font-size: 10px">
                    <strong>B. PERSONAL PARTICULARS</strong>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="font-size: 10px; padding: 5px" class="style2">
                    <b>Name</b><br />
                    <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td width="50%" style="font-size: 10px; padding: 5px" colspan="3">
                    <b>Permanent Address</b><br />
                    <asp:Label ID="lblAdd" runat="server" Text="Label"></asp:Label>
                    <br />
                </td>
                <td width="50%" style="font-size: 10px; padding: 5px" valign="top">
                    <b>Contact Telephone No</b><br />
                    <br />
                    <asp:Label ID="lblPhone" runat="server" Text="Label"></asp:Label>
            </tr>
            <tr>
                <td colspan="3" style="font-size: 10px; padding: 5px">
                    <b>Correspondence Address</b><br />
                    <br />
                    <asp:Label ID="lblAdd1" runat="server" Text="Label"></asp:Label>
                </td>
                <td valign="top" style="font-size: 10px; padding: 5px">
                    <b>E-mail</b><br />
                    <br />
                    <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="font-size: 10px; padding: 5px" valign="top">
                    <b>Date and Place Of Birth</b><br />
                    <br />
                    <asp:Label ID="lblDob" runat="server" Text="Label"></asp:Label>
                    ,
                    <asp:Label ID="lblplace" runat="server" Text="Label"></asp:Label>
                    <td style="font-size: 10px; padding: 5px">
                        <b>Present Age</b><br />
                        <br />
                        21 years</td>
                    <td style="font-size: 10px; padding: 5px">
                        <b>Nationality</b><br />
                        <br />
                        <asp:Label ID="lblNation" runat="server" Text="Label"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td valign="top" style="font-size: 10px; padding: 5px" colspan="2">
                    <b>Passport or IC No</b><br />
                    <br />
                    <asp:Label ID="lblIC" runat="server" Text="Label"></asp:Label>
                </td>
                <td valign="top" style="font-size: 10px; padding: 5px">
                    <b>Martial Status</b><br />
                    <br />
                    <asp:Label ID="lblMStatus" runat="server" Text="Label"></asp:Label>
                </td>
                <td valign="top" style="font-size: 10px; padding: 5px">
                    <b>Religion</b><br />
                    <br />
                    <asp:Label ID="lblRel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
            SelectCommand="SELECT * FROM [GUARDIAN] WHERE (([Matirx_No] = @Matirx_No) AND ([Relation] = @Relation))">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="A14CS0095" Name="Matirx_No" 
                    SessionField="matric_p1" Type="String" />
                <asp:SessionParameter DefaultValue="Father" Name="Relation" 
                    SessionField="Relation" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br style="page-break-after: always">
        <table width="95%" align="center" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4" style="font-size: 10px; padding: 5px">
                    <strong>B. (i) PARENTS/GUARDIAN INFORMATION I</strong>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    <b>Parents/Guardian Name :</b>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>IC No. :</b>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>Nationality :</b>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" class="style5">
                    &nbsp;
                    
                    <asp:Label ID="lblguard1" runat="server" Text="Label"></asp:Label>
                    
                </td>
                <td style="font-size: 10px; padding: 5px" class="style5">
                    &nbsp;<asp:Label ID="lblIC1" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px" class="style5">
                    <asp:Label ID="lblNation1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    <b>Occupation :</b>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>Phone No. :</b>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>Monthly Income (RM) &nbsp; :</b>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;<asp:Label ID="lblocc1" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <asp:Label ID="lblphone1" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;RM&nbsp;
                    <asp:Label ID="lblSalary1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;
                </td>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>Pay Slip : </b>&nbsp;<span id="status2"><i>empty</i></span>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" colspan="3">
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
                        SelectCommand="SELECT * FROM [GUARDIAN] WHERE (([Matirx_No] = @Matirx_No) AND ([Relation] = @Relation))">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="A14CS0095" Name="Matirx_No" 
                                SessionField="matric_p2" Type="String" />
                            <asp:SessionParameter DefaultValue="Mother" Name="Relation" 
                                SessionField="Relation2" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    &nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td colspan="4" style="font-size: 10px; padding: 5px">
                    <strong>B. (ii) PARENTS/GUARDIAN INFORMATION II</strong>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    <b>Parents/Guardian Name :</b>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>IC No. :</b>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>Nationality :</b>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;<asp:Label ID="lblguard2" runat="server" Text="lblguard2"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;<asp:Label ID="lblIC2" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;<asp:Label ID="lblNation2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    <b>Occupation :</b>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>Phone No. :</b>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>Monthly Income (RM) :</b>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;
                    <asp:Label ID="lblocc2" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <asp:Label ID="lblphone2" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    RM
                    <asp:Label ID="lblSalary2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;
                </td>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>Pay Slip : </b>&nbsp;<span id="status3"><i>empty</i></span>
                </td>
            </tr>
        </table>
        <br style="page-break-after: always">
        <table width="95%" align="center" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4" style="padding: 10px; font-size: 10px">
                    <strong>C. INFORMATION ABOUT THE GRADUATE STUDY PROGRAMME</strong>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="font-size: 10px; padding: 5px" width="40%">
                    <b>Name of Programme</b><br />
                    <br />
                    Doctor of Philosophy
                    </td>
                <td width="30%" style="font-size: 10px; padding: 5px">
                    <b>Field of Study</b><br />
                    <br />
                    Electrical Engineering
                    </td>
                <td width="30%" style="font-size: 10px; padding: 5px">
                    <b>Date of First Registration</b><br />
                    <br />
                    19 Apr 2016
                    </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" colspan="2">
                    <b>Title of Research Project</b><br />
                    <br />
                    THE DEVELOPMENT OF BEAM-STEERING NETWORK WITH 180 DEGREE PHASE AND DUAL-BEAMWIDTH
                    CAPABILITY FOR 5G WIRELESS COMMUNICATION APPLICATION
                    <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>Faculty</b><br />
                    Faculty Of Electrical Engineering
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>Matric No</b><br />
                    <br />
                    <asp:Label ID="lblmatric" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" colspan="4">
                    <b>Name of Supervisor(s)</b><br />
                    <br />
                    1. Dr Norhudah Binti Seman , Pusat Komunikasi Wayarles, Fakulti Kejuruteraan Elektrik<br />
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" colspan="4">
                    <b>Please attach a copy of the research proposal</b><br />
                    <br />
                    <i>empty</i>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table width="95%" align="center" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="7" style="padding: 10px; font-size: 10px">
                    <strong>D. ACADEMIC QUALIFICATIONS</strong>
                </td>
            </tr>
            <tr>
                <td align="center" style="font-size: 10px; padding: 5px">
                    - No Record -
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table width="95%" align="center" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="8" style="padding: 10px; font-size: 10px">
                    <strong>E. FINANCIAL SCHEME RECEIVED</strong>
                </td>
            </tr>
            <tr>
                <th style="font-size: 10px; padding: 5px">
                    No.
                </th>
                <th style="font-size: 10px; padding: 5px">
                    Name of Sponsor
                </th>
                <th style="font-size: 10px; padding: 5px">
                    Type of scheme
                </th>
                <th style="font-size: 10px; padding: 5px">
                    Name of Higher Institution Study
                </th>
                <th style="font-size: 10px; padding: 5px">
                    Date of first award
                </th>
                <th style="font-size: 10px; padding: 5px">
                    Date of termination
                </th>
                <th style="font-size: 10px; padding: 5px">
                    Amount
                </th>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    1
                </td>
                <td style="font-size: 10px; padding: 5px">
                    KEMENTERIAN PENDIDIKAN TINGGI MALAYSIA
                </td>
                <td style="font-size: 10px; padding: 5px">
                    SCHOLARSHIP
                </td>
                <td style="font-size: 10px; padding: 5px">
                    UNIVERSITI TEKNOLOGI MALAYSIA
                </td>
                <td style="font-size: 10px; padding: 5px" align="center">
                    01 Nov 2013
                </td>
                <td style="font-size: 10px; padding: 5px" align="center">
                    01 Sep 2015
                </td>
                <td style="font-size: 10px; padding: 5px" align="center">
                    10000.0
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table width="95%" align="center" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="7" style="padding: 10px; font-size: 10px">
                    <strong>F. WORKING EXPERIENCE</strong>
                </td>
            </tr>
            <tr>
                <th style="font-size: 10px; padding: 5px">
                    No.
                </th>
                <th style="font-size: 10px; padding: 5px">
                    Name of Job
                </th>
                <th style="font-size: 10px; padding: 5px">
                    Employer's name and address
                </th>
                <th style="font-size: 10px; padding: 5px">
                    Monthly salary
                </th>
                <th style="font-size: 10px; padding: 5px">
                    Date of start
                </th>
                <th style="font-size: 10px; padding: 5px">
                    Date of termination
                </th>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" colspan="6" align="center">
                    - No Record -
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table width="95%" align="center" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4" style="padding: 10px; font-size: 10px">
                    <strong>G. PAPER PUBLICATION</strong>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
                        SelectCommand="SELECT * FROM [vw_List_Publication] WHERE ([matrix_no] = @matrix_no)">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="A14CS0047" Name="matrix_no" 
                                SessionField="matricNo" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td width="10%" style="font-size: 10px; padding: 5px">
                    <b>(1)</b> Title of Paper
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <asp:Label ID="lblpaper" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px" width="10%">
                    Date of Publication
                </td>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;<asp:Label ID="lbldate" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    Author(s)
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <asp:Label ID="lblAuthor" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Journal Indexed In
                </td>
                <td style="font-size: 10px; padding: 5px">
                    SCOPUS
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    <strong>Type of Authorship</strong>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <asp:Label ID="lblTypeAutho" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px" rowspan="2">
                    <strong>Type of Publication</strong>
                </td>
                <td style="font-size: 10px; padding: 5px" rowspan="2">
                    &nbsp;<asp:Label ID="lblType" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <input type="checkbox" readonly name="utm" id="utm" value="1" />
                    affiliation UTM
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    <strong>Status of Paper</strong>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <asp:Label ID="lblStatusPaper" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" rowspan="3">
                    Name of Journal or Proceedings
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Wireless Personal Communications
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Volume
                </td>
                <td style="font-size: 10px; padding: 5px">
                    88
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" rowspan="2">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td style="font-size: 10px; padding: 5px" width="21%">
                                Name of Publisher
                            </td>
                            <td style="font-size: 10px; padding: 5px" width="79%">
                                Springer US&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="font-size: 10px; padding: 5px">
                                URL of Journal
                            </td>
                            <td style="font-size: 10px; padding: 5px">
                                -&nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Pages
                </td>
                <td style="font-size: 10px; padding: 5px">
                    467-478
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    Impact Factor (if any)
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <asp:Label ID="lblimpact" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" class="style6">
                    Remarks
                </td>
                <td style="font-size: 10px; padding: 5px" class="style6">
                    null
                </td>
                <td style="font-size: 10px; padding: 5px" class="style6">
                    Attach a copy of paper as proof
                </td>
                <td style="font-size: 10px; padding: 5px" class="style6">
                    <b>Documents:</b><i>empty</i>
                </td>
            </tr>
            </table>
        <br />
        <br>
        <table width="95%" align="center" border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td colspan="4" style="padding: 10px; font-size: 10px">
                    <strong>H. AWARDS AND RECOGNITIONS RECEIVED </strong>
                </td>
            </tr>
            <tr>
                <th style="font-size: 10px; padding: 5px">
                    No.
                </th>
                <th style="font-size: 10px; padding: 5px">
                    Name of Asscociation</th>
                <th style="font-size: 10px; padding: 5px">
                    &nbsp;Date Recieved&nbsp;</th>
                <th style="font-size: 10px; padding: 5px">
                    Level</th>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" align="center" colspan="4">
                    &nbsp; &nbsp;-No Records-</td>
            </tr>
        </table>
        <br />
        </table><br>
        <td style="font-size: 10px; padding: 5px" align="center">
            <table width="95%" align="center" border="1" cellpadding="0" cellspacing="0">
                <tr>
                    <td style="padding: 10px; font-size: 10px">
                        <strong>I. BOOK/BOOK CHAPTERS</strong>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: 10px; padding: 5px" align="center">
                        - No Record -
                    </td>
                </tr>
            </table>
        </td>
        </table><p>
            <br />
            <br />
        </p>
        <div style="font-size: 10px; padding: 5px" align="left">
            <b>APPLICANT'S DECLARATION</b><br />
            <br />
            I declare that the information submitted in the application form is ture. I agree
            that the School of Graduate Studies has the right to reject this application or
            withdraw the offer if the provided information is found to be false.
            <br />
            <br />
            <br />
            <table width="100%">
                <tr>
                    <td style="font-size: 10px; padding: 5px" width="50%; padding-left:5px">
                        07 September 2016<br />
                        ..........................<br />
                        <b>Date</b>
                    </td>
                    <td style="font-size: 10px; padding: 5px" width="50%; padding-left:5px">
                        <asp:Label ID="lblSign" runat="server" Text="Label"></asp:Label>
                        <br />
                        ..........................<br />
                        <b>Applicant's Signature</b>
                    </td>
                </tr>
            </table>
            <br />
            <hr />
            
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
