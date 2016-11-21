<%@ Page Title="" Language="C#" MasterPageFile="~/SV/SVMasterPage.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="SV_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">
    <div class="row" id="supervisor-recommendation">
        <div class="col-sm-12" id="cssmenu2">
            <ul style="font-size: small">
                <li class="active"><a href="#">&nbsp;Supervisor Recommendation</a></li>
            </ul>
        </div>



        <div class="col-sm-12" style="padding-bottom: 10px;" id="personal-info">


            <div class="col-sm-4" id="imgPhoto" runat="server">
                <!--student photo-->
                <img class="img-responsive" src="../Styles/images/nophoto.png" class="img-profile" alt="profileimage" />
                <br />
                <!--basic info-->
                <asp:Label ID="lblTextName" runat="server" Font-Bold="True" Font-Size="Large" Text="Name:"></asp:Label>&nbsp;
                            <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Size="Large" Text=""></asp:Label>
                <br />
                <asp:Label ID="lblTextProgramme" runat="server" Font-Italic="True" Font-Bold="True" ForeColor="#AC0000" Text="Program:"></asp:Label>&nbsp;
                            <asp:Label ID="lblProgramme" runat="server" Font-Italic="True" Font-Bold="True" ForeColor="#AC0000" Text=""></asp:Label>
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
                <div>
                    <br />
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Strongly Recommended" /><br />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Recommended" /><br />
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="Not Recommended" /><br />
                </div>

                <div>
                    <br />
                    <asp:Label ID="lblTextComment" runat="server" Text="Comment" Font-Bold="true"></asp:Label>
                    <br />
                    <asp:TextBox ID="TextAreaComment" TextMode="multiline" Rows="5" runat="server" Width="100%" />
                    <br />
                    <a href="Default.aspx" class="btn btn-primary pull-right">Submit</a>
                   
                    <!--<asp:Button ID="Button2" runat="server" CausesValidation="False" Text="Reset" UseSubmitBehavior="False" CssClass="btn btn-danger pull-right"/>-->
                </div>
            </div>

        </div>
    </div>

</asp:Content>

