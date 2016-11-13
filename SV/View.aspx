<%@ Page Title="" Language="C#" MasterPageFile="~/SV/SVMasterPage2.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="SV_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">

    <div id="sumInfo" class="container-fluid">
        <div class="row">
            <div class="col-sm-12 spadding">
                <div class="name-bgcolor">
                    <div class="row">
                        <!-- BEGIN DISPLAY PHOTO -->
                        <div class=" col-sm-3 col-xs-12 " id="imgPhoto" runat="server">
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
                                    <asp:Label ID="lblFaculty" runat="server" Font-Bold="True" ForeColor="#AD0000" Text=""></asp:Label>
                                    <p class="filler">
                                        &nbsp;
                                    </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6" style="margin-left: -10px">
                                    <asp:Label ID="lblTxtMatric" runat="server" Font-Bold="True" Text="Matric No.:"></asp:Label>&nbsp
                                    <asp:Label ID="lblMatric" runat="server" Text=""></asp:Label>
                                    <div class="xsfiller">
                                    </div>
                                    <asp:Label ID="lblTxtBilSemester" runat="server" Font-Bold="True" Text="	Semester/Norm:"></asp:Label>&nbsp
                                    <asp:Label ID="lblBilSemester" runat="server" Text=""></asp:Label>
                                    <div class="xsfiller">
                                    </div>
                                    <asp:Label ID="lblTextAA" runat="server" Font-Bold="True" Text="AA:"></asp:Label>&nbsp
                                    <asp:Label ID="lblAA" runat="server" Text=""></asp:Label>
                                    <br />
                                    <div class="statfiller">
                                    </div>
                                </div>
                                <div class="col-sm-6" style="margin-left: -10px">
                                    <asp:Label ID="lblTxtToS" runat="server" Font-Bold="True" Text="Type of Study:"></asp:Label>&nbsp
                                    <asp:Label ID="lblToS" runat="server" Text=""></asp:Label>
                                    <div class="xsfiller">
                                    </div>
                                    <asp:Label ID="lblTxtEmail" runat="server" Font-Bold="True" Text="E-mail:"></asp:Label>&nbsp
                                    <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                                    <div class="xsfiller">
                                    </div>
                                    <asp:Label ID="lblTxtPhone" runat="server" Font-Bold="True" Text="Phone:"></asp:Label>&nbsp
                                    <asp:Label ID="lblPhone" runat="server" Text=""></asp:Label>
                                    <br />
                                    <div class="statfiller">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="statfiller">
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

