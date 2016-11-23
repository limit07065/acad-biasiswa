<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmMark.aspx.cs" Inherits="frmMark" %>

<html>
<head id="Head1" runat="server">
    <title>Marks </title>
    <script type="text/javascript" src="http://spsapp3.utm.my:8080/aimsinfo/js/jquery-1.4.2.min.js"></script>
    <link href="http://spsapp3.utm.my:8080/aimsinfo/css/blitzer/jquery-ui-1.8.6.custom.css"
        rel="stylesheet" media="screen" />
    <link href="http://spsapp3.utm.my:8080/aimsinfo/css/sps.css" rel="stylesheet" media="screen" />
    <link href="http://spsapp3.utm.my:8080/aimsinfo/css/gsmsv2.css" rel="stylesheet"
        media="screen" />
    <link rel="shortcut icon" href="~/styles/images/utm.ico" />
    <script type="text/javascript" src="http://spsapp3.utm.my:8080/aimsinfo/js/jquery-ui-1.8.6.custom.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".button").button();
        });
        
    </script>
</head>
<body>
<form runat="server">
    <asp:Button runat="server" Text="View" />
    <asp:Button runat="server" Text="List of Publication" />
    <asp:Button runat="server" Text="Save" />
    <asp:Button runat="server" Text="Cancel" />
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
                &nbsp;&nbsp;<input name="RU" id="RU" type="text" size="3" value="1.0"><br>
            </td>
            <td width="51%" class="ui-corner-all fill_yellow" valign="top" rowspan="17">
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
                &nbsp;&nbsp;<input name="lampiran" id="lampiran" type="text" size="3" value="1.0">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="ui-widget-header" colspan="3">
                <b>Awards</b>
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
                &nbsp;&nbsp;<input name="anugerahChancellor" id="anugerahChancellor" type="text"
                    size="3" value="0.0">
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                Pro Chancellor Awards
            </td>
            <td class="tdrow" colspan="2">
                &nbsp;&nbsp;<input name="anugerahPChancellor" id="anugerahPChancellor" type="text"
                    size="3" value="0.0">
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                Alumni Awards
            </td>
            <td class="tdrow" colspan="2">
                &nbsp;&nbsp;<input name="alumni" id="alumni" type="text" size="3" value="0.0">
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                Special Company Awards
            </td>
            <td class="tdrow" colspan="2">
                &nbsp;&nbsp;<input name="company" id="company" type="text" size="3" value="0.0">
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                Dean List
            </td>
            <td class="tdrow" colspan="2">
                &nbsp;&nbsp;<input name="dean" id="dean" type="text" size="3" value="0.0">
            </td>
        </tr>
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
                <input name="jurnalMarkSA" id="jurnalMarkSA" style="border: none; background-color: #f7f7ba;"
                    type="text" size="3" readonly="" value="3.0">
            </td>
            <td class="tdrow" style="text-align: center;">
                <input name="jurnalMarkMY" id="jurnalMarkMY" style="border: none; background-color: #f7f7ba;"
                    type="text" size="15" readonly="" value="0.00037">
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                Conferences
            </td>
            <td class="tdrow" style="text-align: center;">
                <input name="persidanganMarkSA" id="persidanganMarkSA" style="border: none; background-color: #f7f7ba;"
                    type="text" size="3" readonly="" value="1.0">
            </td>
            <td class="tdrow" style="text-align: center;">
                <input name="persidanganMarkMY" id="persidanganMarkMY" style="border: none; background-color: #f7f7ba;"
                    type="text" size="15" readonly="" value="0.00037">
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                Books
            </td>
            <td class="tdrow" style="text-align: center;">
                <input name="bukuMarkSA" id="bukuMarkSA" style="border: none; background-color: #f7f7ba;"
                    type="text" size="3" readonly="" value="0.0">
            </td>
            <td class="tdrow" style="text-align: center;">
                <input name="bukuMarkMY" id="bukuMarkMY" style="border: none; background-color: #f7f7ba;"
                    type="text" size="15" readonly="" value="0.0">
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                Book Chapters
            </td>
            <td class="tdrow" style="text-align: center;">
                <input name="bukuCMarkSA" id="bukuCMarkSA" style="border: none; background-color: #f7f7ba;"
                    type="text" size="3" readonly="" value="0.5">
            </td>
            <td class="tdrow" style="text-align: center;">
                <input name="bukuCMarkMY" id="bukuCMarkMY" style="border: none; background-color: #f7f7ba;"
                    type="text" size="15" readonly="" value="0.00037">
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                <b>Total Publication Marks</b>
            </td>
            <td class="tdrow" style="text-align: center;">
                <input name="totalMarkPubSA" id="totalMarkPubSA" style="border: none; background-color: #f7f7ba;"
                    type="text" size="3" readonly="true" value="4.5">
            </td>
            <td class="tdrow" style="text-align: center;">
                <input name="totalMarkPubMY" id="totalMarkPubMY" style="border: none; background-color: #f7f7ba;"
                    type="text" size="15" readonly="true" value="0.00111">
            </td>
        </tr>
        <tr>
            <td class="fill_oren">
                <b>Overall Mark</b>
            </td>
            <td class="fill_oren" style="text-align: center;">
                <input name="overallMark" id="overallMark" style="border: none; background-color: #fcdcc2;
                    font-weight: bold;" type="text" size="3" readonly="true" value="6.5">
            </td>
            <td class="fill_oren" style="text-align: center;">
                <input name="overallMarkMY" id="overallMarkMY" style="border: none; background-color: #fcdcc2;
                    font-weight: bold;" type="text" size="15" readonly="true" value="0.00111">
            </td>
        </tr>
    </table>
    <%}//NPF 
       if (Request.QueryString["type"] == "NPF")
       {%>
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
                    &nbsp;&nbsp;<input name="MQ" id="MQ" type="text" size="3" value="1.0"><br>
                </td>
                <td width="51%" class="ui-corner-all fill_yellow" valign="top" rowspan="24">
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
                    &nbsp;&nbsp;<input name="aaAlumni" id="aaAlumni" type="text" size="3" value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Special Company Award
                </td>
                <td class="tdrow" colspan="2">
                    &nbsp;&nbsp;<input name="aaSpecialCompany" id="aaSpecialCompany" type="text" size="3"
                        value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Best Student Award (SPS)
                </td>
                <td class="tdrow" colspan="2">
                    &nbsp;&nbsp;<input name="aaBestStudentSPS" id="aaBestStudentSPS" type="text" size="3"
                        value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Best Student Award (Faculty)
                </td>
                <td class="tdrow" colspan="2">
                    &nbsp;&nbsp;<input name="aaBestStudentFaculty" id="aaBestStudentFaculty" type="text"
                        size="3" value="0.0">
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
                    &nbsp;&nbsp;<input name="raBestPaper" id="raBestPaper" type="text" size="3" value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    BestSpeaker Award
                </td>
                <td class="tdrow" colspan="2">
                    &nbsp;&nbsp;<input name="raBestSpeaker" id="raBestSpeaker" type="text" size="3" value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Research Award
                </td>
                <td class="tdrow" colspan="2">
                    &nbsp;&nbsp;<input name="raResearch" id="raResearch" type="text" size="3" value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Others
                </td>
                <td class="tdrow" colspan="2">
                    &nbsp;&nbsp;<input name="raOthers" id="raOthers" type="text" size="3" value="0.0">
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
                    &nbsp;&nbsp;<input name="coPresident" id="coPresident" type="text" size="3" value="0.0">
                </td>
                <td class="tdrow">
                    &nbsp;&nbsp;<input name="coPresidentLevel" id="coPresidentLevel" type="text" size="3"
                        value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Vice President
                </td>
                <td class="tdrow">
                    &nbsp;&nbsp;<input name="coVicePresident" id="coVicePresident" type="text" size="3"
                        value="0.0">
                </td>
                <td class="tdrow">
                    &nbsp;&nbsp;<input name="coVicePresidentLevel" id="coVicePresidentLevel" type="text"
                        size="3" value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Bursar/Vice Bursar
                </td>
                <td class="tdrow">
                    &nbsp;&nbsp;<input name="coBursar" id="coBursar" type="text" size="3" value="0.0">
                </td>
                <td class="tdrow">
                    &nbsp;&nbsp;<input name="coBursarLevel" id="coBursarLevel" type="text" size="3" value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Secretary/Vice Secretary
                </td>
                <td class="tdrow">
                    &nbsp;&nbsp;<input name="coSecretary" id="coSecretary" type="text" size="3" value="0.0">
                </td>
                <td class="tdrow">
                    &nbsp;&nbsp;<input name="coSecretaryLevel" id="coSecretaryLevel" type="text" size="3"
                        value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Committee
                </td>
                <td class="tdrow">
                    &nbsp;&nbsp;<input name="coCommittee" id="coCommittee" type="text" size="3" value="0.0">
                </td>
                <td class="tdrow">
                    &nbsp;&nbsp;<input name="coCommitteeLevel" id="coCommitteeLevel" type="text" size="3"
                        value="0.0">
                </td>
            </tr>
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
                <td class="tdrow" style="text-align: left;">
                    &nbsp;&nbsp;Mark Myra2
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Journals
                </td>
                <td class="tdrow" style="text-align: center;">
                    <input name="jurnalMarkSA" id="Text1" style="border: none; background-color: #f7f7ba;"
                        type="text" size="3" readonly="" value="0.0">
                </td>
                <td class="tdrow" style="text-align: center;">
                    <input name="jurnalMarkMY" id="Text2" style="border: none; background-color: #f7f7ba;"
                        type="text" size="15" readonly="" value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Conferences
                </td>
                <td class="tdrow" style="text-align: center;">
                    <input name="persidanganMarkSA" id="Text3" style="border: none; background-color: #f7f7ba;"
                        type="text" size="3" readonly="" value="0.0">
                </td>
                <td class="tdrow" style="text-align: center;">
                    <input name="persidanganMarkMY" id="Text4" style="border: none; background-color: #f7f7ba;"
                        type="text" size="15" readonly="" value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Books
                </td>
                <td class="tdrow" style="text-align: center;">
                    <input name="bukuMarkSA" id="Text5" style="border: none; background-color: #f7f7ba;"
                        type="text" size="3" readonly="" value="0.0">
                </td>
                <td class="tdrow" style="text-align: center;">
                    <input name="bukuMarkMY" id="Text6" style="border: none; background-color: #f7f7ba;"
                        type="text" size="15" readonly="" value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    Book Chapters
                </td>
                <td class="tdrow" style="text-align: center;">
                    <input name="bukuCMarkSA" id="Text7" style="border: none; background-color: #f7f7ba;"
                        type="text" size="3" readonly="" value="0.0">
                </td>
                <td class="tdrow" style="text-align: center;">
                    <input name="bukuCMarkMY" id="Text8" style="border: none; background-color: #f7f7ba;"
                        type="text" size="15" readonly="" value="0.0">
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <b>Total Publication Marks</b>
                </td>
                <td class="tdrow" style="text-align: center;">
                    <input name="totalMarkPubSA" id="Text9" style="border: none; background-color: #f7f7ba;"
                        type="text" size="3" readonly="true" value="0.0">
                </td>
                <td class="tdrow" style="text-align: center;">
                    <input name="totalMarkPubMY" id="Text10" style="border: none; background-color: #f7f7ba;"
                        type="text" size="15" readonly="true" value="0.0">
                </td>
            </tr>
            <tr>
                <td class="fill_oren">
                    <b>Overall Mark</b>
                </td>
                <td class="fill_oren" style="text-align: center;">
                    <input name="overallMark" id="Text11" style="border: none; background-color: #fcdcc2;
                        font-weight: bold;" type="text" size="3" readonly="true" value="1.0">
                </td>
                <td class="fill_oren" style="text-align: center;">
                    <input name="overallMarkMY" id="Text12" style="border: none; background-color: #fcdcc2;
                        font-weight: bold;" type="text" size="15" readonly="true" value="0.0">
                </td>
            </tr>
        </tbody>
    </table>
    <%} %>
</body>
</html>
</form>