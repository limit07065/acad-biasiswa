<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmPersonal.aspx.cs" Inherits="UGStudent_frmPersonal" %>

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
            width: 132px;
            height: 164px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:SqlDataSource 
                        ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [StudentData] WHERE ([Matric] = @Matric)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="MC123456" Name="Matric" 
                SessionField="matricNo" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div>
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
                    <img alt="" class="style4" src="../Styles/images/photo/studPic.PNG" /></td>
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
                        <asp:Label ID="lblyear" runat="server" Text="Label"></asp:Label>
&nbsp;years 
                        <asp:Label ID="lblmonth" runat="server" Text="Label"></asp:Label>
&nbsp;months
                    </td>
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
                    <asp:Label ID="lblIc" runat="server" Text="Label"></asp:Label>
                </td>
                <td valign="top" style="font-size: 10px; padding: 5px">
                    <b>Martial Status</b><br />
                    <br />
                    BUJANG
                </td>
                <td valign="top" style="font-size: 10px; padding: 5px">
                    <b>Religion</b><br />
                    <br />
                    <asp:Label ID="lblRel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            
            SelectCommand="SELECT * FROM [Guardian] WHERE (([Gender] = @Gender) AND ([Matric] = @Matric))">
            <SelectParameters>
                <asp:SessionParameter Name="Gender" SessionField="parent1" Type="Int32" 
                    DefaultValue="1" />
                <asp:SessionParameter DefaultValue="MC123456" Name="Matric" 
                    SessionField="matricNo" Type="String" />
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
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;
                    
                    <asp:Label ID="lblguard1" runat="server" Text="Label"></asp:Label>
                    
                </td>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;<asp:Label ID="lblIC1" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px">
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
                    &nbsp;
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
                    &nbsp;<asp:SqlDataSource ID="SqlDataSource3" 
                        runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Guardian] WHERE (([Gender] = @Gender) AND ([Matric] = @Matric))">
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="2" Name="Gender" SessionField="parent2" 
                                Type="Int32" />
                            <asp:SessionParameter DefaultValue="MC123456" Name="Matric" 
                                SessionField="matricNo" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
&nbsp;</td>
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
                </td>
            </tr>
            <tr>
                <td width="10%" style="font-size: 10px; padding: 5px">
                    <b>(1)</b> Title of Paper
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Enhanced Design of Two-Section Microstrip-Slot Branch Line Coupler with the Overlapped
                    Lambda/4 Open Circuited Lines at Ports
                </td>
                <td style="font-size: 10px; padding: 5px" width="10%">
                    Date of Publication
                </td>
                <td style="font-size: 10px; padding: 5px">
                    30 Jun 2016
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    Author(s)
                </td>
                <td style="font-size: 10px; padding: 5px">
                    1)Saiyidah Munirah Binti Sazali 2) Norhudah Seman
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
                    First Student Author
                </td>
                <td style="font-size: 10px; padding: 5px" rowspan="2">
                    <strong>Type of Publication</strong>
                </td>
                <td style="font-size: 10px; padding: 5px" rowspan="2">
                    Journal
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
                    Published
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
                    1.21
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    Remarks
                </td>
                <td style="font-size: 10px; padding: 5px">
                    null
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Attach a copy of paper as proof
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>Documents:</b><i>empty</i>
                </td>
            </tr>
            <tr>
                <td width="10%" style="font-size: 10px; padding: 5px">
                    <b>(2)</b> Title of Paper
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Design of a Complex Ratio Measuring Unit Using Enhanced Branch-Line Coupler for
                    Wireless Communication Applications
                </td>
                <td style="font-size: 10px; padding: 5px" width="10%">
                    Date of Publication
                </td>
                <td style="font-size: 10px; padding: 5px">
                    31 Dec 2016
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    Author(s)
                </td>
                <td style="font-size: 10px; padding: 5px">
                    1) Saiyidah Munirah Binti Sazali 2) Norhudah Seman
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
                    First Student Author
                </td>
                <td style="font-size: 10px; padding: 5px" rowspan="2">
                    <strong>Type of Publication</strong>
                </td>
                <td style="font-size: 10px; padding: 5px" rowspan="2">
                    Journal
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
                    Published
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" rowspan="3">
                    Name of Journal or Proceedings
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Jurnal Teknologi
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Volume
                </td>
                <td style="font-size: 10px; padding: 5px">
                    77
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
                                Penerbit Universiti Teknologi Malaysia&nbsp;
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
                    61-67
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    Impact Factor (if any)
                </td>
                <td style="font-size: 10px; padding: 5px">
                    0.43
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    Remarks
                </td>
                <td style="font-size: 10px; padding: 5px">
                    null
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Attach a copy of paper as proof
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <b>Documents:</b><i>empty</i>
                </td>
            </tr>
            <tr>
                <td width="10%" style="font-size: 10px; padding: 5px">
                    <b>(3)</b> Title of Paper
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Wideband Six-Port Reflectometer Design Formed By Enhanced Branch Line Coupler
                </td>
                <td style="font-size: 10px; padding: 5px" width="10%">
                    Date of Publication
                </td>
                <td style="font-size: 10px; padding: 5px">
                    17 Feb 2015
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    Author(s)
                </td>
                <td style="font-size: 10px; padding: 5px">
                    1)N.A.M. Shukor 2)N. Seman 3)D.N.A. Zaidel
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Journal Indexed In
                </td>
                <td style="font-size: 10px; padding: 5px">
                    -
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    <strong>Type of Authorship</strong>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    First Student Author
                </td>
                <td style="font-size: 10px; padding: 5px" rowspan="2">
                    <strong>Type of Publication</strong>
                </td>
                <td style="font-size: 10px; padding: 5px" rowspan="2">
                    Conference
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
                    Published
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px" rowspan="3">
                    Name of Journal or Proceedings
                </td>
                <td style="font-size: 10px; padding: 5px">
                    2014 Asia-Pacific Conference on Applied Electromagnetics, APACE 2014
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Volume
                </td>
                <td style="font-size: 10px; padding: 5px">
                    null
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
                                Institute of Electrical and Electronics Engineers Inc.&nbsp;
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
                    63-66
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    Impact Factor (if any)
                </td>
                <td style="font-size: 10px; padding: 5px">
                    null
                </td>
            </tr>
            <tr>
                <td style="font-size: 10px; padding: 5px">
                    Remarks
                </td>
                <td style="font-size: 10px; padding: 5px">
                    null
                </td>
                <td style="font-size: 10px; padding: 5px">
                    Attach a copy of paper as proof
                </td>
                <td style="font-size: 10px; padding: 5px">
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
                <td style="font-size: 10px; padding: 5px">
                    1
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <asp:Label ID="lblacname" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
                </td>
                <td style="font-size: 10px; padding: 5px">
                    &nbsp;<asp:Label ID="lblLevel" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [koku_awd_Acad_code] WHERE ([Matric] = @Matric)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="MC123456" Name="Matric" 
                    SessionField="matricNo" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        </table><br>
        <td style="font-size: 10px; padding: 5px" align="center">
            <asp:Label ID="lblAc" runat="server" Text="Label"></asp:Label>
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
                        Saiyidha Munirah Binti Sazali<br />
                        ..........................<br />
                        <b>Applicant's Signature</b>
                    </td>
                </tr>
            </table>
            <br />
            <hr />
            <b>SUPERVISOR'S RECOMMENDATION</b><br />
            <br />
            I support this application.
            <h2 style='background-color: red; color: white; padding: 5px; text-align: center'>
                N/A</h2>
            <br />
            She is an excellent student. During her Master by Research study (under my supervision
            and graduated last semester), she has published 2 journals and 1 conference paper,
            and another journal currently under review. Thus, I strongly recommend her application
            for Zamalah scholarship.
            <br />
            <table width="100%">
                <tr>
                    <td width="50%" style="font-size: 10px; padding-left: 5px">
                        <br />
                        <br />
                        07 September 2016<br />
                        ..........................<br />
                        <b>Date</b>
                    </td>
                    <td width="50%" style="font-size: 10px; padding: 5px">
                        Dr Norhudah Binti Seman ,<br />
                        Pusat Komunikasi Wayarles,<br />
                        Fakulti Kejuruteraan Elektrik<br />
                        ..........................<br />
                        <b>Supervisor's Signature</b>
                    </td>
                </tr>
            </table>
            <br />
            <hr />
            <b>FACULTY'S VERIFICATION</b><br />
            <br />
            I would like to verify that the applicant is currently a research student at my
            faculty.
            <h2 style='background-color: red; padding: 5px; color: white; text-align: center'>
                N/A</h2>
            <br />
            <table width="100%">
                <tr>
                    <td width="50%" style="font-size: 10px; padding-left: 5px">
                        <br />
                        <br />
                        14 September 2016<br />
                        ..........................<br />
                        <b>Date</b>
                    </td>
                    <td width="50%" style="font-size: 10px; padding: 5px">
                        Prof.ir.dr. Mohd Wazir Bin Mustafa ,<br />
                        Fakulti Kejuruteraan Elektrik<br />
                        ..........................<br />
                        <b>Deputy Dean's Signature</b>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
