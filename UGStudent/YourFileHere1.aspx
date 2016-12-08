<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="YourFileHere1.aspx.cs" Inherits="UGStudent_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
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
    <div style="min-height: 180px">
        <table style="width: 100%;">
            <tr>
                <td class="style158">
                    <table style="width: 100%;">
                        <tr>
                            
                            <div>
	<table cellspacing="0" cellpadding="4" id="MainContent_BodyContent_GridView1" style="color:#333333;font-size:Small;width:100%;border-collapse:collapse;">
		<tr>
			<td colspan="7">
                <table style="width: 100%">
                    <tr>
                        <td bgcolor="#990000" style="color: #FFFFFF">
                            Application</td>
                        <td bgcolor="#990000" style="color: #FFFFFF">
                            Date</td>
                        <td bgcolor="#990000" style="color: #FFFFFF">
                            Status</td>
                        <td bgcolor="#990000" style="color: #FFFFFF">
                            View</td>
                    </tr>
                    <tr>
                        <td bgcolor="#FFFFCC" style="width: 166px">
                            UTM Zamalah Scholarship</td>
                        <td bgcolor="#FFFFCC" style="width: 152px">
                            08/12/2016</td>
                        <td bgcolor="#FFFFCC" style="width: 222px">
                            Submited</td>
                        <td bgcolor="#FFFFCC">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="frmPersonal.aspx">View Full Form</asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </td>
		</tr>
	</table>
</div>  
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div class="row">
        <span id="MainContent_BodyContent_startTimeline" style="font-size:Small;"></span>
        <!-- BEGIN TIMELINE -->
        <div id="MainContent_BodyContent_divTimeline" class="timelineFlat tl"><div class="item  " data-id="28/08/2016" data-name="28th" data-description="Registration of New Students (UG)"><h5 class=" "><strong>28 AUGUST</strong></h5><span>Registration of New Students (UG)</span></div><div class="item  " data-id="28/08/2016" data-name="28th" data-description="Student Orientation Week"><h5 class=" "><strong>28 AUGUST</strong></h5><span>Student Orientation Week</span></div><div class="item  " data-id="02/09/2016" data-name="2nd" data-description="Course Registration for Semester I, 2016/2017 Academic Session (UG)"><h5 class=" "><strong>02 SEPTEMBER</strong></h5><span>Course Registration for Semester I, 2016/2017 Academic Session (UG)</span></div><div class="item  " data-id="04/09/2016" data-name="4th" data-description="SEMESTER I"><h5 class=" "><strong>04 SEPTEMBER</strong></h5><span>SEMESTER I</span></div><div class="item  " data-id="04/09/2016" data-name="4th" data-description="Lectures Semester I ( First Half )"><h5 class=" "><strong>04 SEPTEMBER</strong></h5><span>Lectures Semester I ( First Half )</span></div><div class="item  " data-id="07/09/2016" data-name="7th" data-description="*Senate Meeting"><h5 class=" "><strong>07 SEPTEMBER</strong></h5><span>*Senate Meeting</span></div><div class="item  " data-id="03/10/2016" data-name="3rd" data-description="*Senate Meeting"><h5 class=" "><strong>03 OCTOBER</strong></h5><span>*Senate Meeting</span></div><div class="item  " data-id="22/10/2016" data-name="22th" data-description="UTM 57th Convocation Ceremony"><h5 class=" "><strong>22 OCTOBER</strong></h5><span>UTM 57th Convocation Ceremony</span></div><div class="item  " data-id="28/10/2016" data-name="28th" data-description="Mid – Semester Break Semester I"><h5 class=" "><strong>28 OCTOBER</strong></h5><span>Mid – Semester Break Semester I</span></div><div class="item active" data-id="02/11/2016" data-name="2nd" data-description="*Senate Meeting"><h5 class="active"><strong>02 NOVEMBER</strong></h5><span>*Senate Meeting</span></div><div class="item active" data-id="06/11/2016" data-name="6th" data-description="Lectures Semester I ( Second Half )"><h5 class="active"><strong>06 NOVEMBER</strong></h5><span>Lectures Semester I ( Second Half )</span></div><div class="item  " data-id="07/12/2016" data-name="7th" data-description="*Senate Meeting"><h5 class=" "><strong>07 DECEMBER</strong></h5><span>*Senate Meeting</span></div><div class="item  " data-id="14/12/2016" data-name="14th" data-description="Course Pre – Registration for Semester II, 2016/2017 Academic Session ( UG )"><h5 class=" "><strong>14 DECEMBER</strong></h5><span>Course Pre – Registration for Semester II, 2016/2017 Academic Session ( UG )</span></div><div class="item  " data-id="16/12/2016" data-name="16th" data-description="Revision Period Semester I"><h5 class=" "><strong>16 DECEMBER</strong></h5><span>Revision Period Semester I</span></div><div class="item  " data-id="26/12/2016" data-name="26th" data-description="Final Examination for Semester I"><h5 class=" "><strong>26 DECEMBER</strong></h5><span>Final Examination for Semester I</span></div><div class="item  " data-id="04/01/2017" data-name="4th" data-description="*Senate Meeting"><h5 class=" "><strong>04 JANUARY</strong></h5><span>*Senate Meeting</span></div><div class="item  " data-id="13/01/2017" data-name="13th" data-description="Final Break for Semester I"><h5 class=" "><strong>13 JANUARY</strong></h5><span>Final Break for Semester I</span></div><div class="item  " data-id="08/02/2017" data-name="8th" data-description="*Senate Meeting"><h5 class=" "><strong>08 FEBRUARY</strong></h5><span>*Senate Meeting</span></div><div class="item  " data-id="08/02/2017" data-name="8th" data-description="Course Registration Semester II, 2016/2017 Academic Session"><h5 class=" "><strong>08 FEBRUARY</strong></h5><span>Course Registration Semester II, 2016/2017 Academic Session</span></div><div class="item  " data-id="12/02/2017" data-name="12th" data-description="Special Examination for Semester I, 2016/2017 Academic Session"><h5 class=" "><strong>12 FEBRUARY</strong></h5><span>Special Examination for Semester I, 2016/2017 Academic Session</span></div></div>
        <div id="MainContent_BodyContent_divTimelineScript"><script type="text/javascript">                                                                $(window).load(function () { $('.tl').timeline({ startItem: '02/11/2016' }); });</script></div>
        <!-- END TIMELINE -->
    </div>

             

</asp:Content>

