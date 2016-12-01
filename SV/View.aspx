<%@ Page Title="" Language="C#" MasterPageFile="~/SV/SVMasterPage.master" AutoEventWireup="true"
    CodeFile="View.aspx.cs" Inherits="SV_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">
    <%//Datasource to check if the student is under the SV supervision  %>
    <asp:SqlDataSource ID="SqlDataSourceSupervise" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
        SelectCommand="SELECT * FROM [SUPERVISE] WHERE (([Matrix_No] = @Matrix_No) AND ([Semester] = @Session) AND ([Staff_No] = @Staff_No)) ">
        <SelectParameters>
            <asp:QueryStringParameter Name="Matrix_No" QueryStringField="mat" Type="String" />
            <asp:QueryStringParameter Name="Session" QueryStringField="ses" Type="String" />
            <asp:SessionParameter Name="Staff_No" SessionField="staffNo" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <%//Datasource to get student basic info %>
    <asp:SqlDataSource ID="SqlDataSourceStudent" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
        SelectCommand="SELECT * FROM [STUDENT] WHERE ([Matrix_No] = @Matrix_No)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Matrix_No" QueryStringField="mat" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <%//Datasource to update application status to reviewed by SV %>
    <asp:SqlDataSource ID="SqlDataSourceApplication" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
        UpdateCommand="UPDATE [APPLICATION] SET [Status] = @Status WHERE [App_No] = @App_No">
        <UpdateParameters>
            <asp:Parameter Name="Status" Type="String" DefaultValue="BIA_03" />
            <asp:QueryStringParameter Name="App_No" QueryStringField="app" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="row" id="supervisor-recommendation">
        <div class="col-sm-12" id="cssmenu2">
            <ul style="font-size: small">
                <li class="active"><a href="#">&nbsp;Supervisor Recommendation</a></li>
            </ul>
        </div>
        <div class="col-sm-12" style="padding-bottom: 10px;" id="personal-info">
            <div class="col-sm-4" id="imgPhoto" runat="server">
                <!--student photo-->
                <img class="img-responsive " src="../Styles/images/nophoto.png" alt="profileimage" />
                <br />
                <!--basic info-->
                <asp:Label ID="lblTextName" runat="server" Font-Bold="True" Font-Size="Large" Text="Name:"></asp:Label>&nbsp;
                <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Size="Large" Text=""></asp:Label>
                <br />
                <asp:Label ID="lvlTextContactNo" runat="server" Font-Bold="True" Text="Contact No.:"></asp:Label>&nbsp;
                <asp:Label ID="lblContactNo" runat="server" Text=""></asp:Label>
                <br />
                <asp:Label ID="lblTextEmail" runat="server" Font-Bold="True" Text="Email:"></asp:Label>&nbsp;
                <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                <br />
            </div>
            <div class="col-sm-8" id="supervisor-action">
                <div>
                    <br />
                    <a href="#" class="btn btn-default">View Full Info</a>
                </div>
                <%// datasource to get supervisor recommendation %>
                <asp:SqlDataSource ID="SqlDataSourceSupervisorRecommendation" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>"
                    SelectCommand="SELECT * FROM [SUPERVISOR_RECOMMENDATION] WHERE ([id] = @id) "
                    InsertCommand="INSERT INTO [SUPERVISOR_RECOMMENDATION] ([id],[comment], [recommendation],[supervisor_id]) VALUES (@id,@comment, @recommendation,@supervisor_id)"
                    UpdateCommand="UPDATE [SUPERVISOR_RECOMMENDATION] SET [comment] = @comment, [recommendation] = @recommendation ,[supervisor_id] = @supervisor_id WHERE ([id] = @id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="id" QueryStringField="app" Type="String" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:QueryStringParameter Name="id" QueryStringField="app" />
                        <asp:ControlParameter Name="comment" ControlID="TextAreaComment" Type="String" />
                        <asp:ControlParameter Name="recommendation" ControlID="RadioButtonListRecommendation"
                            PropertyName="SelectedValue" />
                        <asp:SessionParameter Name="supervisor_id" SessionField="staffNo" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:QueryStringParameter Name="id" QueryStringField="app" />
                        <asp:ControlParameter Name="comment" ControlID="TextAreaComment" Type="String" />
                        <asp:ControlParameter Name="recommendation" ControlID="RadioButtonListRecommendation"
                            PropertyName="SelectedValue" />
                        <asp:SessionParameter Name="supervisor_id" SessionField="staffNo" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:RadioButtonList ID="RadioButtonListRecommendation" runat="server">
                    <asp:ListItem Value="2">Strongly Recommended</asp:ListItem>
                    <asp:ListItem Value="1">Recommended</asp:ListItem>
                    <asp:ListItem Value="0">Not Recommended</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:Label ID="lblTextComment" runat="server" Text="Comment" Font-Bold="true"></asp:Label>
                <br />
                <asp:TextBox ID="TextAreaComment" TextMode="multiline" Rows="5" runat="server" Width="100%" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonListRecommendation"
                    Display="Static" ErrorMessage="Please choose a recommendation." />
                <asp:Button ID="btn" OnClick="btn_click" runat="server" CssClass="btn btn-primary pull-right"
                    Text="Submit"></asp:Button>
            </div>
        </div>
    </div>
</asp:Content>
