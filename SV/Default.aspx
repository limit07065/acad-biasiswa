<%@ Page Title="" Language="C#" MasterPageFile="~/SV/SVMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="SV_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" runat="Server">

    <div class="row">
        <div id="cssmenu2" >
            <ul style="font-size: small">
                <li class="active"><a href="#">&nbsp;<span class="fa fa-user"></span>&nbsp;Scholarship Application</a></li>

            </ul>
        </div>

        
        <asp:GridView ID="GridView1" CssClass="col-xs-12" runat="server" DataSourceID="SMUTM" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NOKP" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="NOKP" HeaderText="NOKP" ReadOnly="True" SortExpression="NOKP" ItemStyle-CssClass="" HeaderStyle-CssClass="" />
                <asp:BoundField DataField="NAMA" HeaderText="NAMA" SortExpression="NAMA" ItemStyle-CssClass="" HeaderStyle-CssClass="" />
                <asp:BoundField DataField="TKHLAHIR" HeaderText="TKHLAHIR" SortExpression="TKHLAHIR" HeaderStyle-CssClass="hidden-md hidden-sm hidden-xs" ItemStyle-CssClass="hidden-md hidden-sm hidden-xs"/>
                <asp:BoundField DataField="JANTINA" HeaderText="JANTINA" SortExpression="JANTINA" HeaderStyle-CssClass="hidden-md hidden-sm hidden-xs" ItemStyle-CssClass="hidden-md hidden-sm hidden-xs"/>
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

</asp:Content>

