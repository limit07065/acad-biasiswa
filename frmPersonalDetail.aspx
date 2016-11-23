<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmPersonalDetail.aspx.cs"
    Inherits="frmPersonalDetails" %>

<html>
<head runat="server">
<title>Detail AIMS</title>
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
                    <asp:label id="lblName" runat="server" text=""></asp:label>
                </td>
                <td rowspan="8" class="tdrow">
                    <img width="192" alt="Photo" border="0" height="256" src="Styles/images/nophoto.png" />
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Matrix Number</strong>
                </td>
                <td class="tdrow" width="34%">
                    <asp:label id="lblMatrix" runat="server" text=""></asp:label>
                </td>
                <td class="tdtitle" width="20%">
                    <strong>Gender</strong>
                </td>
                <td class="tdrow" width="32%">
                    <asp:label id="lblGender" runat="server" text=""></asp:label>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Date of Birth</strong>
                </td>
                <td class="tdrow">
                    <asp:label ID="lblDOB" runat="server" text=""></asp:label>
                </td>
                <td class="tdtitle">
                    <strong>State of Birth</strong>
                </td>
                <td class="tdrow">
                    <asp:label ID="lblStateOfBirth" runat="server" text=""></asp:label>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Religion</strong>
                </td>
                <td class="tdrow">
                    <asp:label ID="lblReligion" runat="server" text=""></asp:label>
                </td>
                <td class="tdtitle">
                    <strong>Race</strong>
                </td>
                <td class="tdrow">
                    <asp:label ID="lblRace" runat="server" text=""></asp:label>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Nationality</strong>
                </td>
                <td class="tdrow">
                    <asp:label ID="lblNationality" runat="server" text=""></asp:label>
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
                    <asp:label ID="lblCountry" runat="server" text=""></asp:label>
                </td>
                <td class="tdtitle">
                    <strong>Current Country</strong>
                </td>
                <td class="tdrow">
                    <asp:label ID="lblCurrCountry" runat="server" text=""></asp:label>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Marriage Status</strong>
                </td>
                <td class="tdrow">
                    1 - Bujang
                </td>
                <td class="tdtitle">
                    <strong>Date of Marriage</strong>
                </td>
                <td class="tdrow">
                    -
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Date of Registration</strong>
                </td>
                <td class="tdrow">
                    <asp:label ID="lblRegDate" runat="server" text=""></asp:label>
                </td>
                <td class="tdtitle">
                    <strong>Staff UTM</strong>
                </td>
                <td class="tdrow">
                    No
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
                    <asp:label ID="lblMailAddr1" runat="server" text=""></asp:label>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    &nbsp;
                </td>
                <td colspan="3" class="tdrow">
                    <asp:label ID="lblMailAddr2" runat="server" text=""></asp:label>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Postcode</strong>
                </td>
                <td class="tdrow" width="34%">
                    <asp:label ID="lblMailPostcode" runat="server" text=""></asp:label>
                </td>
                <td class="tdtitle" width="20%">
                    <strong>City</strong>
                </td>
                <td class="tdrow" width="32%">
                    <asp:label ID="lblMailCity" runat="server" text=""></asp:label>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>State</strong>
                </td>
                <td colspan="3" class="tdrow">
                    <asp:label ID="lblMailState" runat="server" text=""></asp:label>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Phone Number</strong>
                </td>
                <td class="tdrow" colspan="3">
                    <asp:label ID="lblMailTelNo" runat="server" text=""></asp:label>
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
                    <asp:label id="lblAddr1" runat="server" text=""></asp:label>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    &nbsp;
                </td>
                <td colspan="3" class="tdrow">
                    <asp:label ID="lblAddr2" runat="server" text=""></asp:label>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Postcode</strong>
                </td>
                <td class="tdrow" width="34%">
                    <asp:label ID="lblPostcode" runat="server" text=""></asp:label>
                </td>
                <td class="tdtitle" width="20%">
                    <strong>City</strong>
                </td>
                <td class="tdrow" width="32%">
                    <asp:label ID="lblCity" runat="server" text=""></asp:label>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>State</strong>
                </td>
                <td colspan="3" class="tdrow">
                    <asp:label id="lblState" runat="server" text=""></asp:label>
                </td>
            </tr>
            <tr>
                <td class="tdtitle">
                    <strong>Phone Number</strong>
                </td>
                <td class="tdrow" colspan="3">
                    <asp:label ID="lblTelNo" runat="server" text=""></asp:label>
                </td>
            </tr>
        </table>
    </div>

    <!-- Start of SV Tab -->
    <div id="penyelia">
        <asp:Repeater ID="svRepeater" runat="server" DataSourceID="svDataSource" onitemdatabound="svRepeater_ItemDataBound">
            <ItemTemplate>
                <table width="100%">
                    <tr>
                        <td width="100%" colspan="4" class="ui-widget-header ui-corner-top" style="padding: 10px">
                            Supervisor
                        </td>
                    </tr>
                    <tr>
                        <td width="14%" class="tdtitle">
                            <strong>Staff No</strong>
                        </td>
                        <td width="86%" class="tdrow">
                            <%# Eval("Staff_No") %>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdtitle">
                            <strong>Sesi Semester</strong>
                        </td>
                        <td class="tdrow">
                            Session :
                            <%# formatSession((string)DataBinder.Eval(Container, "DataItem.Semester"))%><br />
                            Semester :
                            <%# formatSemester((string)DataBinder.Eval(Container, "DataItem.Semester"))%>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdtitle">
                            <strong>Name</strong>
                        </td>
                        <td class="tdrow">
                            <%# Eval("SV_Name") %>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdtitle">
                            <strong>Position</strong>
                        </td>
                        <td class="tdrow">
                            <%# Eval("Position")%>
                        </td>
                    </tr>
                    <tr>
                        <td class="tdtitle">
                            <strong>email</strong>
                        </td>
                        <td class="tdrow">
                            <%# Eval("Email") %>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="tdrow">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <FooterTemplate>
                <%-- Assign Text attribute only when no record is found --%>
                <asp:Label ID="emptySV" runat="server" Text=""></asp:Label>
            </FooterTemplate>
        </asp:Repeater>
    </div>

    <!-- Start of Exam Tab -->
    <div id="exam">
        <asp:Repeater ID="exRepeater" runat="server" DataSourceID="exDataSource" onitemdatabound="exRepeater_ItemDataBound">
            <ItemTemplate>
                <table width="100%">
                    <tr>
                        <td width="100%" colspan="4" class="ui-widget-header ui-corner-top" style="padding: 10px">
                            Examination Results
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4" class="ui-state-default">
                            <h2 align="center">
                                Session :
                                <%# formatSession((string)DataBinder.Eval(Container, "DataItem.Session")) %><br />
                                Semester :
                                <%# formatSemester((string)DataBinder.Eval(Container, "DataItem.Session"))%>
                            </h2>
                        </td>
                    </tr>
                    <tr>
                        <td width="30%" class="tdtitle">
                            <strong>Status</strong>
                        </td>
                        <td width="20%" class="tdrow">
                            A - Active
                        </td>
                        <td width="30%" class="tdtitle">
                            <strong>Sponsor</strong>
                        </td>
                        <td width="20%" class="tdrow">
                            111 - Self Sponsored
                        </td>
                    </tr>
                    <tr>
                        <td class="tdtitle">
                            <strong>Final Result</strong>
                        </td>
                        <td class="tdrow">
                            &nbsp;
                        </td>
                        <td class="tdtitle">
                            <strong>Current Result</strong>
                        </td>
                        <td class="tdrow">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="tdtitle">
                            <strong>GPA</strong>
                        </td>
                        <td class="tdrow">
                            <%# Eval("GPA") %>&nbsp;
                        </td>
                        <td class="tdtitle">
                            <strong>CPA</strong>
                        </td>
                        <td class="tdrow">
                            <%# Eval("CPA") %>&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <FooterTemplate>
                <%-- Assign Text attribute only when no record is found --%>
                <asp:Label ID="emptyEX" runat="server" Text=""></asp:Label>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    <div id="account">
        Sesi/Semester :
        <select name="sesisem" id="asesisem" runat="server">
            <option selected></option>
        </select>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#asesisem").val("");
                $("#asesisem").change(function () {
                    $("#accountp").html("Loading...");
                    $.get("frmAccount.aspx", { session: this.value, matrixNo: "<%= matrixNo %>" }, function (x) {
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
        <select name="sesisem" id="sesisem" runat="server">
            <option></option>
        </select>
        <script type="text/javascript">
    $(document).ready(function() {
        $("#sesisem").val("");
        $("#sesisem").change(function() {
            $("#programp").html("Loading...");
            $.get("frmGetProgram.aspx",
		{ session: this.value, matrixNo: "<%= matrixNo %>" }, function (x) {
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

  <button class="button" onclick="window.close()">Close</button>
    <asp:SqlDataSource ID="svDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
        SelectCommand="SELECT * FROM [vw_Supervisor] WHERE [Matrix_No] = @matrixNo ORDER BY [Semester]">
        <SelectParameters>
            <asp:QueryStringParameter Name="matrixNo" QueryStringField="matrixNo" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="exDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
        SelectCommand="SELECT * FROM [EXAM] WHERE [Matrix_No] = @matrixNo ORDER BY [Session]">
        <SelectParameters>
            <asp:QueryStringParameter Name="matrixNo" QueryStringField="matrixNo" />
        </SelectParameters>
    </asp:SqlDataSource>
</body>
</html>
