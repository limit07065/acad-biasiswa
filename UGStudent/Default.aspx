<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master"
    AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="UGStudent_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">
    <div id="cssmenu2">
        <ul style="font-size: small">
            <li class="active"><a href="#">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Non Active/ic_mail_white_24dp.png" />&nbsp;Inbox</a></li>
            <li><a href="Activity.aspx">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Active/ic_directions_run_black_24dp.png" />Activity</a></li>
            <li><a href="CV.aspx">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Active/ic_description_black_24dp.png" />&nbsp;Slip</a></li>
            <li><a href="Profile.aspx">
                <img alt="" class="tab-icon" src="../Styles/images/NavBtn/Active/ic_account_circle_black_24dp.png" />&nbsp;Profile</a></li>
        </ul>
    </div>
    <asp:SqlDataSource ID="application" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
        SelectCommand="SELECT * FROM [vw_Application] WHERE (([Session] = @Session) AND ([Matrix_No] = @Matrix_No))">
        <SelectParameters>
            <asp:SessionParameter Name="Session" SessionField="session" Type="String" />
            <asp:SessionParameter Name="Matrix_No" SessionField="matrixNo" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" CssClass="col-sm-12" AutoGenerateColumns="False"
        CellPadding="4" DataSourceID="application" ForeColor="#333333" GridLines="None"
        DataKeyNames="Matrix_No" OnRowDataBound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Type" HeaderText="Application" SortExpression="Type" />
            <asp:BoundField DataField="App_Date" HeaderText="Apply Date" SortExpression="App_Date" />
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="lblStatus" runat="server"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="View">
                <ItemTemplate>
                    <asp:LinkButton ID="viewCompleteForm" runat="server">View Full Form</asp:LinkButton>
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
    <div class="row">
        <span id="MainContent_BodyContent_startTimeline" style="font-size: Small;"></span>
        <!-- BEGIN TIMELINE -->
        <div id="MainContent_BodyContent_divTimeline" class="timelineFlat tl">
            <div class="item  " data-id="28/08/2016" data-name="28th" data-description="Registration of New Students (UG)">
                <h5 class=" ">
                    <strong>28 AUGUST</strong></h5>
                <span>Registration of New Students (UG)</span></div>
            <div class="item  " data-id="28/08/2016" data-name="28th" data-description="Student Orientation Week">
                <h5 class=" ">
                    <strong>28 AUGUST</strong></h5>
                <span>Student Orientation Week</span></div>
            <div class="item  " data-id="02/09/2016" data-name="2nd" data-description="Course Registration for Semester I, 2016/2017 Academic Session (UG)">
                <h5 class=" ">
                    <strong>02 SEPTEMBER</strong></h5>
                <span>Course Registration for Semester I, 2016/2017 Academic Session (UG)</span></div>
            <div class="item  " data-id="04/09/2016" data-name="4th" data-description="SEMESTER I">
                <h5 class=" ">
                    <strong>04 SEPTEMBER</strong></h5>
                <span>SEMESTER I</span></div>
            <div class="item  " data-id="04/09/2016" data-name="4th" data-description="Lectures Semester I ( First Half )">
                <h5 class=" ">
                    <strong>04 SEPTEMBER</strong></h5>
                <span>Lectures Semester I ( First Half )</span></div>
            <div class="item  " data-id="07/09/2016" data-name="7th" data-description="*Senate Meeting">
                <h5 class=" ">
                    <strong>07 SEPTEMBER</strong></h5>
                <span>*Senate Meeting</span></div>
            <div class="item  " data-id="03/10/2016" data-name="3rd" data-description="*Senate Meeting">
                <h5 class=" ">
                    <strong>03 OCTOBER</strong></h5>
                <span>*Senate Meeting</span></div>
            <div class="item  " data-id="22/10/2016" data-name="22th" data-description="UTM 57th Convocation Ceremony">
                <h5 class=" ">
                    <strong>22 OCTOBER</strong></h5>
                <span>UTM 57th Convocation Ceremony</span></div>
            <div class="item  " data-id="28/10/2016" data-name="28th" data-description="Mid – Semester Break Semester I">
                <h5 class=" ">
                    <strong>28 OCTOBER</strong></h5>
                <span>Mid – Semester Break Semester I</span></div>
            <div class="item active" data-id="02/11/2016" data-name="2nd" data-description="*Senate Meeting">
                <h5 class="active">
                    <strong>02 NOVEMBER</strong></h5>
                <span>*Senate Meeting</span></div>
            <div class="item active" data-id="06/11/2016" data-name="6th" data-description="Lectures Semester I ( Second Half )">
                <h5 class="active">
                    <strong>06 NOVEMBER</strong></h5>
                <span>Lectures Semester I ( Second Half )</span></div>
            <div class="item  " data-id="07/12/2016" data-name="7th" data-description="*Senate Meeting">
                <h5 class=" ">
                    <strong>07 DECEMBER</strong></h5>
                <span>*Senate Meeting</span></div>
            <div class="item  " data-id="14/12/2016" data-name="14th" data-description="Course Pre – Registration for Semester II, 2016/2017 Academic Session ( UG )">
                <h5 class=" ">
                    <strong>14 DECEMBER</strong></h5>
                <span>Course Pre – Registration for Semester II, 2016/2017 Academic Session ( UG )</span></div>
            <div class="item  " data-id="16/12/2016" data-name="16th" data-description="Revision Period Semester I">
                <h5 class=" ">
                    <strong>16 DECEMBER</strong></h5>
                <span>Revision Period Semester I</span></div>
            <div class="item  " data-id="26/12/2016" data-name="26th" data-description="Final Examination for Semester I">
                <h5 class=" ">
                    <strong>26 DECEMBER</strong></h5>
                <span>Final Examination for Semester I</span></div>
            <div class="item  " data-id="04/01/2017" data-name="4th" data-description="*Senate Meeting">
                <h5 class=" ">
                    <strong>04 JANUARY</strong></h5>
                <span>*Senate Meeting</span></div>
            <div class="item  " data-id="13/01/2017" data-name="13th" data-description="Final Break for Semester I">
                <h5 class=" ">
                    <strong>13 JANUARY</strong></h5>
                <span>Final Break for Semester I</span></div>
            <div class="item  " data-id="08/02/2017" data-name="8th" data-description="*Senate Meeting">
                <h5 class=" ">
                    <strong>08 FEBRUARY</strong></h5>
                <span>*Senate Meeting</span></div>
            <div class="item  " data-id="08/02/2017" data-name="8th" data-description="Course Registration Semester II, 2016/2017 Academic Session">
                <h5 class=" ">
                    <strong>08 FEBRUARY</strong></h5>
                <span>Course Registration Semester II, 2016/2017 Academic Session</span></div>
            <div class="item  " data-id="12/02/2017" data-name="12th" data-description="Special Examination for Semester I, 2016/2017 Academic Session">
                <h5 class=" ">
                    <strong>12 FEBRUARY</strong></h5>
                <span>Special Examination for Semester I, 2016/2017 Academic Session</span></div>
        </div>
        <div id="MainContent_BodyContent_divTimelineScript">
            <script type="text/javascript">
                $(window).load(function () { $('.tl').timeline({ startItem: '02/11/2016' }); });

                function viewCompleteForm(str) {
                    window.open("frmCompleteForm.aspx?mat=" + str, 'detailWindow', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes');
                }
            </script>
        </div>
        <!-- END TIMELINE -->
    </div>
</asp:Content>
