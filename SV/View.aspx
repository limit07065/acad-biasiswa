<%@ Page Title="" Language="C#" MasterPageFile="~/SV/SVMasterPage2.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="SV_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">


    
        <div class="name-bgcolor">
            <div class="row">
                <!-- BEGIN DISPLAY PHOTO -->
                <div class=" col-sm-3 col-xs-6" id="imgPhoto" runat="server">
                </div>

                <!-- END DISPLAY PHOTO -->
                <div class="col-sm-9 col-xs-12 ">
                    <div class="row">
                        <div class="name-row">
                            <asp:Label ID="lblName" runat="server" Font-Bold="True" Font-Size="Large" Text=""></asp:Label>
                            <br />
                            <asp:Label ID="lblProgramme" runat="server" Font-Bold="True" ForeColor="#AC0000"
                                Text=""></asp:Label>
                            <br />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6" style="margin-left: -10px">
                            <asp:Label ID="lblTxtMatric" runat="server" Font-Bold="True" Text="Matric No.:"></asp:Label>&nbsp
                                    <asp:Label ID="lblMatric" runat="server" Text=""></asp:Label>
                            <br />
                            <asp:Label ID="lblTxtIcPassport" runat="server" Font-Bold="True" Text="IC/ Passport No.:"></asp:Label>&nbsp
                                    <asp:Label ID="lblIcPassport" runat="server" Text=""></asp:Label>
                            <br />
                            <asp:Label ID="lblTextContactNo" runat="server" Font-Bold="True" Text="Contact No.:"></asp:Label>&nbsp
                                    <asp:Label ID="lblContactNo" runat="server" Text=""></asp:Label>
                            <br />
                            <asp:Label ID="lblTxtEmail" runat="server" Font-Bold="True" Text="Email:"></asp:Label>&nbsp
                                    <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                            <br />
                        </div>

                        <div class="col-sm-6" style="margin-left: -10px">
                            <asp:Label ID="lblSessionText" runat="server" Font-Bold="True" Text="Current Session:"></asp:Label>&nbsp
                                    <asp:Label ID="lblSession" runat="server" Text=""></asp:Label>
                            <br />
                            <asp:Label ID="lblTxtResearchTitle" runat="server" Font-Bold="True" Text="Title of Research:"></asp:Label>&nbsp
                                    <asp:Label ID="lblResearchTitle" runat="server" Text=""></asp:Label>
                            <br />
                        </div>

                    </div>
                </div>
            </div>
            <br />
        </div>

   


</asp:Content>

