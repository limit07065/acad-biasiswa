<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmPersonalDetail.aspx.cs"
    Inherits="frmPersonalDetails" %>

<html>

<script type="text/javascript" src="http://spsapp3.utm.my:8080/aimsinfo/js/jquery-1.4.2.min.js"></script>
<link href="http://spsapp3.utm.my:8080/aimsinfo/css/blitzer/jquery-ui-1.8.6.custom.css"
    rel="stylesheet" media="screen" />
<link href="http://spsapp3.utm.my:8080/aimsinfo/css/sps.css" rel="stylesheet" media="screen" />
<link href="http://spsapp3.utm.my:8080/aimsinfo/css/gsmsv2.css" rel="stylesheet"
    media="screen" />
<script type="text/javascript" src="http://spsapp3.utm.my:8080/aimsinfo/js/jquery-ui-1.8.6.custom.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".button").button();
    });
        
</script>
<div id="tabs">
    <ol>
        <li><a href="#asas">Basic Information</a></li>
        <li><a href="#penyelia">Supervisor</a></li>
        <li><a href="#exam">Examination</a></li>
        <li><a href="#account">Status Account</a></li>
        <li><a href="#program">Program</a></li>
    </ol>
    <div id="asas">
        <table width="100%">
            <tr>
                <td width="100%" colspan="5" class="ui-widget-header ui-corner-top" style="padding: 10px">
                    Basic Information
                </td>
            </tr>
            <tr>
                <td class="tdtitle" width="14%" class="tdtitle">
                    <strong>Name</strong>
                </td>
                <td colspan="3" class="tdrow">
                    <%= name %> &nbsp;
                </td>
                <td rowspan="8" class="tdrow">
                    <img width="192" alt="Photo" border="0" height="256" src="/Styles/images/nophoto.png" />
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Matrix Number</strong>
                </td>
                <td class="tdrow" width="34%">
                    <%= matrixNo %>&nbsp;
                </td>
                <td class="tdtitle" width="20%">
                    <strong>Gender</strong>
                </td>
                <td class="tdrow" width="32%">
                    <%= gender %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Date of Birth</strong>
                </td>
                <td class="tdrow">
                    <%= dob %>&nbsp;
                </td>
                <td class="tdtitle">
                    <strong>State of Birth</strong>
                </td>
                <td class="tdrow">
                    <%= stateOfBirth %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Religion</strong>
                </td>
                <td class="tdrow">
                    <%= religion %>&nbsp;
                </td>
                <td class="tdtitle">
                    <strong>Race</strong>
                </td>
                <td class="tdrow">
                    <%= race %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Nationality</strong>
                </td>
                <td class="tdrow">
                    <%= nationality %>&nbsp;
                </td>
                <td class="tdtitle">
                    <strong>NRIC Color</strong>
                </td>
                <td class="tdrow">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Country</strong>
                </td>
                <td class="tdrow">
                    <%= country %>&nbsp;
                </td>
                <td class="tdtitle">
                    <strong>Current Country</strong>
                </td>
                <td class="tdrow">
                    <%= currCountry %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Marriage Status</strong>
                </td>
                <td class="tdrow">
                    <%= marriageStatus %>&nbsp;
                </td>
                <td class="tdtitle">
                    <strong>Date of Marriage</strong>
                </td>
                <td class="tdrow">
                    <%= dateOfMarriage %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Date of Registration</strong>
                </td>
                <td class="tdrow">
                    <%= registrationDate %>&nbsp;
                </td>
                <td class="tdtitle">
                    <strong>Staff UTM</strong>
                </td>
                <td class="tdrow">
                    <%= isStaff %>
                </td>
            </tr>
        </table>
        <br />
        <table width="100%">
            <tr>
                <td width="100%" colspan="4" class="ui-widget-header ui-corner-top" style="padding: 10px">
                    Mailing Address
                </td>
            </tr>
            <tr>
                <td width="14%" class="tdtitle">
                    <strong>Address</strong>
                </td>
                <td colspan="3" class="tdrow">
                    <%= mailAddr1 %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    &nbsp;
                </td>
                <td colspan="3" class="tdrow">
                    <%= mailAddr2 %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Postcode</strong>
                </td>
                <td class="tdrow" width="34%">
                    <%= mailPostcode %>&nbsp;
                </td>
                <td class="tdtitle" width="20%">
                    <strong>City</strong>
                </td>
                <td class="tdrow" width="32%">
                    <%= mailCity %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>State</strong>
                </td>
                <td colspan="3" class="tdrow">
                    <%= mailState %>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Phone Number</strong>
                </td>
                <td class="tdrow" colspan="3">
                    <%= mailTelNo %>&nbsp;
                </td>
            </tr>
        </table>
        <br />
        <table width="100%">
            <tr>
                <td width="100%" colspan="4" class="ui-widget-header ui-corner-top" style="padding: 10px">
                    Correspondence Address
                </td>
            </tr>
            <tr>
                <td width="14%" class="tdtitle">
                    <strong>Address</strong>
                </td>
                <td colspan="3" class="tdrow">
                    <%= addr1 %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    &nbsp;
                </td>
                <td colspan="3" class="tdrow">
                    <%= addr2 %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Postcode</strong>
                </td>
                <td class="tdrow" width="34%">
                    <%= postcode %>&nbsp;
                </td>
                <td class="tdtitle" width="20%">
                    <strong>City</strong>
                </td>
                <td class="tdrow" width="32%">
                    <%= city %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>State</strong>
                </td>
                <td colspan="3" class="tdrow">
                    <%= state %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Phone Number</strong>
                </td>
                <td class="tdrow" colspan="3">
                    <%= telNo %>&nbsp;
                </td>
            </tr>
        </table>
    </div>
    <div id="penyelia">
        <table width="100%">
            <tr>
                <td width="100%" colspan="4" class="ui-widget-header ui-corner-top" style="padding: 10px">Supervisor</td>
            </tr>
            
            <tr>
                <td width="14%" class="tdtitle"><strong>Staff No</strong></td>
                <td width="86%" class="tdrow"><%= staffNo %>&nbsp;</td>
            </tr>
            <tr>
                <td class="tdtitle"><strong>Sesi Semester</strong></td>
                <td class="tdrow">Session : 2016 / 2017<br/>Semester : 1
                </td>
            </tr>
            <tr>
                <td class="tdtitle"><strong>Name</strong></td>
                <td class="tdrow"> <%= svName %></td>
            </tr>
            <tr>
                <td class="tdtitle"><strong>Position</strong></td>
                <td class="tdrow"> <%= svPost %>nbsp;</td>
            </tr>
			<tr>
                <td class="tdtitle"><strong>email</strong></td>
                <td class="tdrow"> <%= svEm %>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="tdrow">&nbsp;</td>
            </tr>

            
        </table>
    </div>
    <div id="exam">
        <% if(reader.hasRows){ %>    <%-- To display the result as much time as the record has --%> 
        <% } %>
        <table width="100%">
            <tr>
                <td width="100%" colspan="4" class="ui-widget-header ui-corner-top" style="padding: 10px">
                    Examination Results
                </td>
            </tr>
            <tr>
                <td colspan="4" class="ui-state-default">
                    <h2 align="center">
                        Session : 2016 / 2017<br />
                        Semester : 1
                    </h2>
                </td>
            </tr>
            <tr>
                <td width="30%" class="tdtitle">
                    <strong>Status</strong>
                </td>
                <td width="20%" class="tdrow">
                    <%= studentStatus %>
                </td>
                <td width="30%" class="tdtitle">
                    <strong>Sponsor</strong>
                </td>
                <td width="20%" class="tdrow">
                    <%= sponsorType %>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Final Result</strong>
                </td>
                <td class="tdrow">
                    <%= finalRs %>&nbsp;
                </td>
                <td class="tdtitle">
                    <strong>Current Result</strong>
                </td>
                <td class="tdrow">
                    <%= currRs %>&nbsp;
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>GPA</strong>
                </td>
                <td class="tdrow">
                    <%= gpa %>&nbsp;
                </td>
                <td class="tdtitle">
                    <strong>CPA</strong>
                </td>
                <td class="tdrow">
                    <%= cpa %>&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
    <div id="account">
        Sesi/Semester :
        <select name="asesisem" id="asesisem">
            <option></option>
            <option value="201620171">201620171</option>
        </select>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#asesisem").val("");
                $("#asesisem").change(function () {
                    $("#accountp").html("Loading...");
                    $.get("frmAccount.aspx", { session: this.value, icNo: <%= matrixNo %> }, function (x) {
                        $("#accountp").html(x);
                    });

                });
            });
        </script>
        <div id="accountp">
        </div>
    </div>
    <div id="program">
        Sesi/Semester :
        <select name="sesisem" id="sesisem">
            <option></option>
            <option value="201620171">201620171</option>
        </select>
        <script type="text/javascript">
    $(document).ready(function() {
        $("#sesisem").val("");
        $("#sesisem").change(function() {
            $("#programp").html("Loading...");
            $.get("frmGetProgram.aspx", 
		{sesisem : this.value, matrixNo: <%= matrixNo %> }, function(x) {
                $("#programp").html(x);
            });
            
        });
    });
        </script>
        <div id="programp">
           
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $("#tabs").tabs();
    });
</script>
</html>