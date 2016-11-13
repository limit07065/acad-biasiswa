<%@ Page Title="" Language="C#" MasterPageFile="~/SV/SVMasterPage2.master" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="SV_View" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">


    <div class="row name-bgcolor" style="padding-bottom: 10px;" id="personal-info">
        <!-- BEGIN DISPLAY PHOTO -->
        <div class=" col-sm-3 col-xs-12" id="imgPhoto" runat="server">
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

    <br />

    <div class="row" id="academic-qualification">
        <div id="cssmenu2">
            <ul style="font-size: small">
                <li class="active"><a href="#">&nbsp;<span class="fa fa-user"></span>&nbsp;Academic Qualification</a></li>
            </ul>
        </div>

        <asp:GridView ID="GridView1" CssClass="col-xs-12" runat="server" DataSourceID="SMUTM" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NOKP" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="NOKP" HeaderText="NOKP" ReadOnly="True" SortExpression="NOKP" ItemStyle-CssClass="" HeaderStyle-CssClass="" />
                <asp:BoundField DataField="NAMA" HeaderText="NAMA" SortExpression="NAMA" ItemStyle-CssClass="" HeaderStyle-CssClass="" />
                <asp:BoundField DataField="TKHLAHIR" HeaderText="TKHLAHIR" SortExpression="TKHLAHIR" HeaderStyle-CssClass="hidden-md hidden-sm hidden-xs" ItemStyle-CssClass="hidden-md hidden-sm hidden-xs" />
                <asp:BoundField DataField="JANTINA" HeaderText="JANTINA" SortExpression="JANTINA" HeaderStyle-CssClass="hidden-md hidden-sm hidden-xs" ItemStyle-CssClass="hidden-md hidden-sm hidden-xs" />
                <asp:BoundField DataField="IDKKINI" HeaderText="IDKKINI" SortExpression="IDKKINI" HeaderStyle-CssClass="hidden-md hidden-sm hidden-xs" ItemStyle-CssClass="hidden-md hidden-sm hidden-xs" />
                <asp:BoundField DataField="TKHKKINI" HeaderText="TKHKKINI" SortExpression="TKHKKINI" HeaderStyle-CssClass="hidden-md hidden-sm hidden-xs" ItemStyle-CssClass="hidden-md hidden-sm hidden-xs" />
                <asp:HyperLinkField HeaderText="Action" NavigateUrl="~/SV/View.aspx" Text="View" ItemStyle-CssClass="" HeaderStyle-CssClass="" />
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
        <asp:SqlDataSource ID="SMUTM" runat="server" ConnectionString="<%$ ConnectionStrings:SMUTM %>" ProviderName="<%$ ConnectionStrings:SMUTM.ProviderName %>" SelectCommand="SELECT * FROM &quot;WEB_PERIBADI&quot;"></asp:SqlDataSource>
    </div>
    <br />
    <br />

    <div class="row " style="padding-bottom: 10px;" id="publication">
        <div id="cssmenu2">
            <ul style="font-size: small">
                <li class="active"><a href="#">&nbsp;<span class="fa fa-user"></span>&nbsp;Publication</a></li>
            </ul>
        </div>

        <br />

        <div class="col-sm-6 name-bgcolor" style="padding:15px 0px 15px 0px ">
            
                <div class="col-sm3">
                    <asp:Label ID="lblTextTitle" runat="server" Font-Bold="True" Text="Title:"></asp:Label>&nbsp
                                    <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="lblTextAuthor" runat="server" Font-Bold="True" Text="Author(s):"></asp:Label>&nbsp
                                    <asp:Label ID="lblAuthor" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="lblTextAuthorship" runat="server" Font-Bold="True" Text="Authorship:"></asp:Label>&nbsp
                                    <asp:Label ID="lblAuthorship" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="lblTextStatus" runat="server" Font-Bold="True" Text="Status:"></asp:Label>&nbsp
                                    <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
                    <br />
                </div>
                <div class="col-sm3">
                    <asp:Label ID="lblTextTypePublication" runat="server" Font-Bold="True" Text="Type of Publication:"></asp:Label>&nbsp
                                    <asp:Label ID="lblTypePublication" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="lblTextNameJournal" runat="server" Font-Bold="True" Text="Name of Journal:"></asp:Label>&nbsp
                                    <asp:Label ID="lblNameJournal" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="lblTextPublisherURL" runat="server" Font-Bold="True" Text="Publisher URL:"></asp:Label>&nbsp
                                    <asp:Label ID="lblPublisherURL" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="lblTextRemark" runat="server" Font-Bold="True" Text="Remark:"></asp:Label>&nbsp
                                    <asp:Label ID="lblRemark" runat="server" Text=""></asp:Label>                    
                </div>
           
        </div>
        <div class="col-sm-6 name-bgcolor" >
           
                <div class="col-sm3">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Title:"></asp:Label>&nbsp
                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Author(s):"></asp:Label>&nbsp
                                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Authorship:"></asp:Label>&nbsp
                                    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Status:"></asp:Label>&nbsp
                                    <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
                    <br />
                </div>
                <div class="col-sm3">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Type of Publication:"></asp:Label>&nbsp
                                    <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Name of Journal:"></asp:Label>&nbsp
                                    <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Publisher URL:"></asp:Label>&nbsp
                                    <asp:Label ID="Label14" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Remark:"></asp:Label>&nbsp
                                    <asp:Label ID="Label16" runat="server" Text=""></asp:Label>                    
                </div>
           
        </div>
        <br />

        
        
    </div>








</asp:Content>

