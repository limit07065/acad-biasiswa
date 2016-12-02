
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmMark.aspx.cs" Inherits="frmMark" %>

<html>
<head id="Head1" runat="server">
    <title>Marks </title>
    <script type="text/javascript" src="Styles/sps/jquery-1.4.2.min.js"></script>
    <link href="Styles/sps/jquery-ui-1.8.6.custom.css" rel="stylesheet" media="screen" />
    <!--<link href="Styles/bootsrap/bootstrap.min.css" rel="stylesheet" media="screen" />-->
    <link href="Styles/sps/bootstrap-btn-min.css" rel="stylesheet" media="screen" />
    <link href="Styles/sps/sps.css" rel="stylesheet" media="screen" />
    <link href="Styles/sps/gsmsv2.css" rel="stylesheet" media="screen" />
    
    <link rel="shortcut icon" href="~/styles/images/utm.ico" />
    <script type="text/javascript" src="Styles/sps/jquery-ui-1.8.6.custom.min.js"></script>
    <script type="text/javascript">
       
        
    </script>
</head>
<body>
    <form runat="server">
    
    <asp:SqlDataSource ID="SqlDataSourceMark" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>">        
    </asp:SqlDataSource>
    <div class="ui-corner-all fill_yellow">      
        <div class="jumbotron">Mark Update - <%= Request.QueryString["type"] %> </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="View" CssClass="btn btn-default" />
        <asp:Button ID="Button2" runat="server" Text="List of Publication" CssClass="btn btn-default" />
        <asp:Button ID="Button3" runat="server" Text="Save" CssClass="btn btn-default" OnClick="Save" OnClientClick="window.close();" />
        <asp:Button ID="Button4" runat="server" Text="Cancel" CssClass="btn btn-default" />
        <br />
        <br />
    </div>
    <%//zamalah/IDF %>
    <% if (Request.QueryString["type"] == "Zamalah" || Request.QueryString["type"] == "IDF")
       {
    %>

    
    <table width="100%" border="2">
        <tr>
            <td class="ui-widget-header" colspan="3">
                <b>MSC Mark (RU University / RU None UTM / None RU)</b>
            </td>
            <td class="ui-widget-header">
                <b>References</b>
            </td>
        </tr>
        <tr>
            <td width="32%" class="tdtitle">
                RU University / RU None UTM / None RU
            </td>
            <td class="tdrow" colspan="2">
                &nbsp;&nbsp;<asp:TextBox runat="server" name="RU" ID="RU" type="text"></asp:TextBox><br>
            </td>
            <td width="51%" class="ui-corner-all fill_yellow" valign="top" rowspan="18">
                <b>MSC Mark</b><br>
                RU University : <b>3</b><br>
                RU None UTM : <b>2</b><br>
                None RU : <b>1</b><br>
                <br>
                <b>Research Proposal</b><br>
                Attached : <b>1</b><br>
                Not Attached : <b>0</b><br>
                <br>
                <b>Awards</b><br>
                <b>Academic Awards (University)</b><br>
                i. Chancellor Awards : <b>5</b><br>
                ii. Pro Chancellor Awards : <b>4</b><br>
                iii. Alumni Awards : <b>3</b><br>
                iv. Special Company Awards : <b>3</b><br>
                v. Dean List : <b>3</b><br>
                <br>
            </td>
        </tr>
        <tr>
            <td class="ui-widget-header" colspan="3">
                <b>Research Proposal</b>
            </td>
        </tr>
        <tr>
            <td width="32%" class="tdtitle">
                Attached
            </td>
            <td width="17%" class="tdrow" colspan="2">
                &nbsp;&nbsp;<asp:TextBox runat="server" name="lampiran" ID="lampiran" type="text"></asp:TextBox>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="ui-widget-header" colspan="3">
                <b>Academic Awards (University)</b>
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                Chancellor Awards
            </td>
            <td class="tdrow" colspan="2">
                &nbsp;&nbsp;<asp:TextBox runat="server" name="anugerahChancellor" ID="anugerahChancellor"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                Pro Chancellor Awards
            </td>
            <td class="tdrow" colspan="2">
                &nbsp;&nbsp;<asp:TextBox runat="server" name="anugerahPChancellor" ID="anugerahPChancellor"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                Alumni Awards
            </td>
            <td class="tdrow" colspan="2">
                &nbsp;&nbsp;<asp:TextBox runat="server" name="alumni" ID="alumni"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                Special Company Awards
            </td>
            <td class="tdrow" colspan="2">
                &nbsp;&nbsp;<asp:TextBox runat="server" name="company" ID="company"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                Dean List
            </td>
            <td class="tdrow" colspan="2">
                &nbsp;&nbsp;<asp:TextBox runat="server" name="dean" ID="dean"></asp:TextBox>
            </td>
        </tr>
        <%}%>
        <%//PNF %>
        <%
            if (Request.QueryString["type"] == "PNF")
            {
        %>
        <table width="100%">
            <tbody>
                <tr>
                    <td class="ui-widget-header" colspan="3">
                        <b>Master Qualification</b>
                    </td>
                    <td class="ui-widget-header">
                        <b>References</b>
                    </td>
                </tr>
                <tr>
                    <td width="32%" class="tdtitle">
                        UTM / Others
                    </td>
                    <td class="tdrow" colspan="2">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="MQ" ID="MQ"></asp:TextBox><br>
                    </td>
                    <td width="51%" class="ui-corner-all fill_yellow" valign="top" rowspan="26">
                        <table width="300" style="border-collapse: collapse" border="1">
                            <tbody>
                                <tr>
                                    <td colspan="3">
                                        <b>Master Qualification</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        UTM
                                    </td>
                                    <td width="30" style="text-align: center">
                                        <b>2</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Others
                                    </td>
                                    <td style="text-align: center">
                                        <b>1</b>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <table width="300" style="border-collapse: collapse" border="1">
                            <tbody>
                                <tr>
                                    <td colspan="3">
                                        <b>Academic Awards</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Alumni Award
                                    </td>
                                    <td width="30" style="text-align: center">
                                        <b>5</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Special Company Award
                                    </td>
                                    <td style="text-align: center">
                                        <b>5</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Best Student Award (SPS)
                                    </td>
                                    <td style="text-align: center">
                                        <b>4</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Best Student Award (Faculty)
                                    </td>
                                    <td style="text-align: center">
                                        <b>3</b>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <table width="300" style="border-collapse: collapse" border="1">
                            <tbody>
                                <tr>
                                    <td colspan="3">
                                        <b>Research Awards</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Best Paper Award
                                    </td>
                                    <td width="100" rowspan="4">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        International
                                                    </td>
                                                    <td>
                                                        :
                                                    </td>
                                                    <td style="text-align: center">
                                                        <b>5</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        University
                                                    </td>
                                                    <td>
                                                        :
                                                    </td>
                                                    <td style="text-align: center">
                                                        <b>4</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Faculty
                                                    </td>
                                                    <td>
                                                        :
                                                    </td>
                                                    <td style="text-align: center">
                                                        <b>3</b>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Best Speaker Award
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Research Award
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Others
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <table width="300" style="border-collapse: collapse" border="1">
                            <tbody>
                                <tr>
                                    <td colspan="3">
                                        <b>Co-Curricular Activities</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        President
                                    </td>
                                    <td width="30" style="text-align: center">
                                        5
                                    </td>
                                    <td width="100" rowspan="5">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        International
                                                    </td>
                                                    <td>
                                                        :
                                                    </td>
                                                    <td style="text-align: center">
                                                        <b>3</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        University
                                                    </td>
                                                    <td>
                                                        :
                                                    </td>
                                                    <td style="text-align: center">
                                                        <b>2</b>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        Faculty
                                                    </td>
                                                    <td>
                                                        :
                                                    </td>
                                                    <td style="text-align: center">
                                                        <b>1</b>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Vice President
                                    </td>
                                    <td style="text-align: center">
                                        4
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Bursar/Vice Bursar
                                    </td>
                                    <td style="text-align: center">
                                        3
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Secretary/Vice Secretary
                                    </td>
                                    <td style="text-align: center">
                                        2
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Committee
                                    </td>
                                    <td style="text-align: center">
                                        1
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                    </td>
                </tr>
                <tr>
                    <td class="ui-widget-header" colspan="3">
                        <b>Academic Awards</b>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Alumni Award
                    </td>
                    <td class="tdrow" colspan="2">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="aaAlumni" ID="aaAlumni"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Special Company Award
                    </td>
                    <td class="tdrow" colspan="2">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="aaSpecialCompany" ID="aaSpecialCompany"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Best Student Award (SPS)
                    </td>
                    <td class="tdrow" colspan="2">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="aaBestStudentSPS" ID="aaBestStudentSPS"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Best Student Award (Faculty)
                    </td>
                    <td class="tdrow" colspan="2">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="aaBestStudentFaculty" ID="aaBestStudentFaculty"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="ui-widget-header" colspan="3">
                        <b>Research Awards</b>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Best Paper Award
                    </td>
                    <td class="tdrow" colspan="2">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="raBestPaper" ID="raBestPaper"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        BestSpeaker Award
                    </td>
                    <td class="tdrow" colspan="2">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="raBestSpeaker" ID="raBestSpeaker"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Research Award
                    </td>
                    <td class="tdrow" colspan="2">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="raResearch" ID="raResearch"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Others
                    </td>
                    <td class="tdrow" colspan="2">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="raOthers" ID="raOthers"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="ui-widget-header" colspan="3">
                        <b>Co-Curricular Activities</b>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        &nbsp;
                    </td>
                    <td class="tdrow">
                        &nbsp;&nbsp;Mark Position
                    </td>
                    <td class="tdrow">
                        &nbsp;&nbsp;Mark Level
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        President
                    </td>
                    <td class="tdrow">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="coPresident" ID="coPresident"></asp:TextBox>
                    </td>
                    <td class="tdrow">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="coPresidentLevel" ID="coPresidentLevel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Vice President
                    </td>
                    <td class="tdrow">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="coVicePresident" ID="coVicePresident"></asp:TextBox>
                    </td>
                    <td class="tdrow">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="coVicePresidentLevel" ID="coVicePresidentLevel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Bursar/Vice Bursar
                    </td>
                    <td class="tdrow">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="coBursar" ID="coBursar"></asp:TextBox>
                    </td>
                    <td class="tdrow">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="coBursarLevel" ID="coBursarLevel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Secretary/Vice Secretary
                    </td>
                    <td class="tdrow">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="coSecretary" ID="coSecretary"></asp:TextBox>
                    </td>
                    <td class="tdrow">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="coSecretaryLevel" ID="coSecretaryLevel"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Committee
                    </td>
                    <td class="tdrow">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="coCommittee" ID="coCommittee"> </asp:TextBox>
                    </td>
                    <td class="tdrow">
                        &nbsp;&nbsp;
                        <asp:TextBox runat="server" name="coCommitteeLevel" ID="coCommitteeLevel"></asp:TextBox>
                    </td>
                </tr>
                <%} %>
                <tr>
                    <td class="ui-widget-header" colspan="3">
                        <b>Publications</b>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        &nbsp;
                    </td>
                    <td class="tdrow" style="text-align: center;">
                        Mark SA
                    </td>
                    <td class="tdrow" style="text-align: center;">
                        Myra2
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Journals
                    </td>
                    <td class="tdrow" style="text-align: center;">
                        <asp:TextBox runat="server" name="jurnalMarkSA" ID="jurnalMarkSA" Style="border: none;
                            background-color: #f7f7ba;" type="text" ReadOnly="true" />
                    </td>
                    <td class="tdrow" style="text-align: center;">
                        <asp:TextBox runat="server" name="jurnalMarkMY" ID="jurnalMarkMY" Style="border: none;
                            background-color: #f7f7ba;" type="text" size="15" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Conferences
                    </td>
                    <td class="tdrow" style="text-align: center;">
                        <asp:TextBox runat="server" name="persidanganMarkSA" ID="persidanganMarkSA" Style="border: none;
                            background-color: #f7f7ba;" type="text" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td class="tdrow" style="text-align: center;">
                        <asp:TextBox runat="server" name="persidanganMarkMY" ID="persidanganMarkMY" Style="border: none;
                            background-color: #f7f7ba;" type="text" size="15" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Books
                    </td>
                    <td class="tdrow" style="text-align: center;">
                        <asp:TextBox runat="server" name="bukuMarkSA" ID="bukuMarkSA" Style="border: none;
                            background-color: #f7f7ba;" type="text" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td class="tdrow" style="text-align: center;">
                        <asp:TextBox runat="server" name="bukuMarkMY" ID="bukuMarkMY" Style="border: none;
                            background-color: #f7f7ba;" type="text" size="15" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        Book Chapters
                    </td>
                    <td class="tdrow" style="text-align: center;">
                        <asp:TextBox runat="server" name="bukuCMarkSA" ID="bukuCMarkSA" Style="border: none;
                            background-color: #f7f7ba;" type="text" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td class="tdrow" style="text-align: center;">
                        <asp:TextBox runat="server" name="bukuCMarkMY" ID="bukuCMarkMY" Style="border: none;
                            background-color: #f7f7ba;" type="text" size="15" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="tdtitle">
                        <b>Total Publication Marks</b>
                    </td>
                    <td class="tdrow" style="text-align: center;">
                        <asp:TextBox runat="server" name="totalMarkPubSA" ID="totalMarkPubSA" Style="border: none;
                            background-color: #f7f7ba;" type="text" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td class="tdrow" style="text-align: center;">
                        <asp:TextBox runat="server" name="totalMarkPubMY" ID="totalMarkPubMY" Style="border: none;
                            background-color: #f7f7ba;" type="text" size="15" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="fill_oren">
                        <b>Overall Mark</b>
                    </td>
                    <td class="fill_oren" style="text-align: center;">
                        <asp:TextBox runat="server" name="overallMark" ID="overallMark" Style="border: none;
                            background-color: #fcdcc2; font-weight: bold;" type="text" ReadOnly="true"></asp:TextBox>
                    </td>
                    <td class="fill_oren" style="text-align: center;">
                        <asp:TextBox runat="server" name="overallMarkMY" ID="overallMarkMY" Style="border: none;
                            background-color: #fcdcc2; font-weight: bold;" type="text" size="15" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
        </table>
</body>
</html>
</form>