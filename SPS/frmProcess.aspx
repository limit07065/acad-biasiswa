<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmProcess.aspx.cs" Inherits="frmProcess" %>

<html>
<head runat="server">
    <title>Student Application Update</title>
    <link rel="shortcut icon" href="~/styles/images/utm.ico" />
    <script type="text/javascript" src="../Styles/sps/jquery-1.4.2.min.js"></script>
    <link href="../Styles/css/addon.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/sps/jquery-ui-1.8.6.custom.css" rel="stylesheet" type="text/css"
        media="screen" />
    <script src="../Styles/sps/jquery-ui-1.8.6.custom.min.js" type="text/javascript"></script>
    <link href="../Styles/sps/sps.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/sps/bootstrap-btn-min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body
        {
            background-image: url(http://spsapp3.utm.my:8080/biav2/images/headerbg.png);
            background-repeat: repeat-x;
            background-color: white;
        }
        td
        {
            text-align: left;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <div>
        <table width="70%" cellpadding="0" cellspacing="0" align="center">
            <tr>
                <td colspan="4" style="text-align: center; background-color: #990000; font-size: 20px;
                    color: White; border-radius: 5px; padding: 5px; font-weight: bold;">
                    Student Application Update -
                    <%= biaName%>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <form id="form1" runat="server">
    <table style="border: #CCCCCC 1px solid" width="90%" cellpadding="5" align="center">
        <tr>
            <td class="tdtitle" style="width: 17%">
                &nbsp;Name:
            </td>
            <td class="tdrow" colspan="3">
                <a href="#" onclick="viewStuInfo('<%= matrixNo %>')">
                    <asp:Label ID="lblName" runat="server" Text=""></asp:Label></a>
            </td>
            <td bgcolor="white" rowspan="7" width="17%">
                <img alt="Photo" width="152" height="202" border="0" src="../Styles/images/nophoto.png" />
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                &nbsp;Supervisor:
            </td>
            <td class="tdrow" colspan="3">
                <br />
                <asp:Repeater ID="svRepeater" runat="server" DataSourceID="svDataSource">
                    <ItemTemplate>
                        <%# Eval("SV_Name")%>
                        -
                        <%# Eval("Email")%><br />
                    </ItemTemplate>
                </asp:Repeater>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                &nbsp;Program:
            </td>
            <td class="tdrow" style="width: 22%">
                <asp:Label ID="lblProgram" runat="server" Text=""></asp:Label>
            </td>
            <td class="tdtitle" style="width: 17%">
                &nbsp;Session:
            </td>
            <td class="tdrow">
                <%= session%>
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                &nbsp;IC No / Passport:
            </td>
            <td class="tdrow">
                <asp:Label ID="lblICNo" runat="server" Text=""></asp:Label>
            </td>
            <td class="tdtitle">
                &nbsp;Matrix No:
            </td>
            <td class="tdrow">
                <%= matrixNo%>
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                &nbsp;E-mail:
            </td>
            <td class="tdrow">
                <asp:Label ID="lblEm" runat="server" Text=""></asp:Label>
            </td>
            <td class="tdtitle">
                &nbsp;Form:
            </td>
            <td class="tdrow">
                <!-- Linking to print preview of application form -->
                <asp:Button ID="btnForm" runat="server" Text="View" CssClass="btn btn-default"/>
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                &nbsp;Thesis Title:
            </td>
            <td class="tdrow">
                <asp:Label ID="lblThesis" runat="server" Text=""></asp:Label>
            </td>
            <td class="tdtitle">
                &nbsp;Mark:
            </td>
            <td class="tdrow">
                <a href="#" onclick="viewMark('<%= applicationNo %>', '<%= shortBiaName %>')"><asp:Label ID="lblMark" runat="server" Text=""></asp:Label></a>
            </td>
        </tr>
        <tr>
            <td class="tdtitle">
                &nbsp;Latest Status:
            </td>
            <td class="tdrow">
                <asp:Label ID="lblCurrStatus" runat="server" Text=""></asp:Label>&nbsp;&nbsp; <a
                    href="#" onclick="show(); return false;">Change Status</a>
                <div id="statusDiv" style="display: none;">
                    <span>Choose status:</span><br />
                    <asp:DropDownList ID="ddlStatus" runat="server" AutoPostBack="False" onchange="verifyStatus(); return false;">
                        <asp:ListItem Value="">Tiada Status</asp:ListItem>
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
                    <span>Choose Date:</span><br />
                    <asp:TextBox ID="tbDate" runat="server" Width="100px"></asp:TextBox>
                    <script type="text/javascript">
                        function show() {
                            if ($("#statusDiv").css("display") == "none")
                                $("#statusDiv").show();
                            else {
                                $("#statusDiv").hide();
                            }
                        }
                    </script>
                    <br />
                    <br />
                    <asp:Button ID="btnChange" runat="server" OnClick="Change_Status" Text="Update" CssClass="btn btn-default" />
                    &nbsp;&nbsp;
                    <button id="btnDismiss" onclick="show(); return false;" class="btn btn-default">
                        Cancel</button>
                </div>
            </td>
            <td class="tdtitle">
                &nbsp;Status:
            </td>
            <td class="tdgreen">
                <asp:Label ID="lblStatus" runat="server" Text="Pemohon Active"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <div style="padding: 0 0 75 0;">
        <center>
            <button onclick="window.print()" class="btn btn-default">
                Print</button>
            |
            <button onclick="window.close()" class="btn btn-default">
                Close</button></center>
        <table style="height: 80px" align="right">
            <tr>
                <td class="tdgreen" style="width: 70px">
                    &nbsp;
                </td>
                <td>
                    Success Application
                </td>
            </tr>
            <tr>
                <td class="tdred">
                    &nbsp;
                </td>
                <td>
                    Fail Application
                </td>
            </tr>
        </table>
    </div>
    <br />
    <div>
        <table style="border: #CCCCCC 1px solid" width="100%">
            <tr>
                <td valign="top" style="height: 80px; background-color: #D2D2D2;">
                    <b>1</b><br />
                    Permohonan diterima
                </td>
                <td valign="top" style="height: 80px; background-color: #D2D2D2;">
                    <b>2</b><br />
                    Permohonan dihantar kepada Penyelia
                </td>
                <td valign="top" style="height: 80px; background-color: #D2D2D2;">
                    <b>3</b><br />
                    Penyelia telah kemaskini permohonan
                </td>
                <td valign="top" style="height: 80px; background-color: #D2D2D2;">
                    <b>4</b><br />
                    Permohonan dihantar kepada Fakulti
                </td>
                <td valign="top" style="height: 80px; background-color: #D2D2D2;">
                    <b>5</b><br />
                    Permohohan disahkan oleh Fakulti
                </td>
                <td valign="top" style="height: 80px; background-color: #D2D2D2;">
                    <b>6</b><br />
                    Surat Panggil Temuduga dihantar
                </td>
                <td valign="top" style="height: 80px; background-color: #D2D2D2;">
                    <b>7</b><br />
                    Keputusan Permohonan
                </td>
                <td valign="top" style="height: 80px; background-color: #D2D2D2;">
                    <b>8</b><br />
                    Surat Tawaran / Dukacita
                </td>
                <td valign="top" style="height: 80px; background-color: #D2D2D2;">
                    <b>9</b><br />
                    Dokumen Perjanjian diterima
                </td>
            </tr>
            <tr>
                <td id="status1" valign="top" style="padding-top: 20px; padding-bottom: 20px" class="tdtitle" runat="server">
                    <b>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </b>
                    <br />
                </td>
                <td id="status2" valign="top" style="padding-top: 20px; padding-bottom: 20px" class="tdtitle" runat="server">
                    <b>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </b>
                    <br />
                </td>
                <td id="status3" valign="top" style="padding-top: 20px; padding-bottom: 20px" class="tdtitle" runat="server">
                    <b>
                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </b>
                    <br />
                </td>
                <td id="status4" valign="top" style="padding-top: 20px; padding-bottom: 20px" class="tdtitle" runat="server">
                    <b>
                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    </b>
                    <br />
                </td>
                <td id="status5" valign="top" style="padding-top: 20px; padding-bottom: 20px" class="tdtitle" runat="server">
                    <b>
                        <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                    </b>
                    <br />
                </td>
                <td id="status6" valign="top" style="padding-top: 20px; padding-bottom: 20px" class="tdtitle" runat="server">
                    <b>
                        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                    </b>
                    <br />
                </td>
                <td id="status7" valign="top" style="padding-top: 20px; padding-bottom: 20px" class="tdtitle" runat="server">
                    <b>
                        <asp:Label ID="Label7" runat="server" Text=""></asp:Label>
                    </b>
                    <br />
                </td>
                <td id="status8" valign="top" style="padding-top: 20px; padding-bottom: 20px" class="tdtitle" runat="server">
                    <b>
                        <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                    </b>
                    <br />
                </td>
                <td id="status9" valign="top" style="padding-top: 20px; padding-bottom: 20px" class="tdtitle" runat="server">
                    <b>
                        <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
                    </b>
                    <br />
                </td>
            </tr>
        </table>
    </div>
    <br />
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:GridView ID="statusGridView" runat="server" DataSourceID="statusDataSource"
                    AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None"
                    Width="80%" HorizontalAlign="Center" DataKeyNames="ID" OnRowDataBound="statusGV_RowDataBound"
                    EmptyDataText="&lt;center&gt;No record found&lt;/center&gt;">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="No">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="App_Status" HeaderText="Activity" ReadOnly="True" />
                        <asp:TemplateField HeaderText="Date">
                            <ItemTemplate>
                                <asp:Label ID="lblDate" runat="server"><%# ((DateTime)Eval("Date")).ToString("dd-MM-yyyy")%></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Remark">
                            <EditItemTemplate>
                                <asp:TextBox ID="tbRemark" Text='<%# Bind("Remark") %>' runat="server" Width="250px"></asp:TextBox>
                                &nbsp;<asp:Button ID="btnUpdate" CommandName="Update" runat="server" Text="Save" CssClass="btn btn-default" />
                                &nbsp;<asp:Button ID="btnCancel" CommandName="Cancel" runat="server" Text="Cancel" CssClass="btn btn-default" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblComment" runat="server" Text='<%# Eval("Remark") %>'></asp:Label>&nbsp;
                                <asp:LinkButton ID="btnEdit" runat="server" CommandName="Edit">(Edit)</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
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
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
    <script type="text/javascript">
        function viewStuInfo(str) {
            window.open("frmPersonalDetail.aspx?matrixNo=" + str, 'detailWindow', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes,width=700,height=550,left=20,top=20');
        }

        function viewMark(str, str2) {
            window.open("frmMark.aspx?appNo=" + str + "&type=" + str2, 'markWindow', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=800, height=550, left=20, top=20');
        }

         <%------- Enable DatePicker  -------%>
        $(function () {
            $("#tbDate").datepicker(
	            { duration: "", changeMonth: true, changeYear: true, dateFormat: "d-M-yy", showButtonPanel: true, showOn: "button", buttonImage: "http://spsapp3.utm.my:8080/biav2/images/calendar.gif", buttonImageOnly: true, onSelect: function (dateText, inst) { }
		    });
        });

        function verifyStatus() {
            var currStatus = "<%= recordStatus %>";
            var newStatus = $("#ddlStatus").val();
            if (currStatus[5] > newStatus[5]) {
                alert("Cannot change to earlier status!");
                $("#ddlStatus").val(currStatus);
            }
        }
    </script>
    <asp:SqlDataSource ID="svDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
        SelectCommand="SELECT * FROM [vw_Supervisor] WHERE [Matrix_No] = @matrixNo ORDER BY [Semester]">
        <SelectParameters>
            <asp:QueryStringParameter Name="matrixNo" QueryStringField="matrixNo" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="statusDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
        SelectCommand="SELECT * FROM [vw_Status] WHERE [Matrix_No] = @matrixNo AND [Session] = @session"
        UpdateCommand="UPDATE [vw_Status] SET [Remark] = @Remark WHERE [ID] = @ID">
        <SelectParameters>
            <asp:QueryStringParameter Name="matrixNo" QueryStringField="matrixNo" />
            <asp:QueryStringParameter Name="session" QueryStringField="session" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Remark" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</body>
</html>
