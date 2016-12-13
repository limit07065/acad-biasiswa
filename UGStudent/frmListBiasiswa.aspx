<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="frmListBiasiswa.aspx.cs" Inherits="UGStudent_frmListBiasiswa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
    <link href="../Styles/css/ListBiasiswa.css" rel="stylesheet" type="text/css" />
<script src="../Styles/js/ListBiasiswa.js" type="text/javascript"></script>
<div id="cssmenu2"></div>
<div>
 <table style="width: 100%">
        <tr>
            <td style="width: 288px">
                &nbsp;</td>
            <td align="center" style="width: 344px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
                    Text="UTM SCHOLARSHIP"></asp:Label>
            </td>
            <td align="center">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px">
                &nbsp;</td>
            <td style="width: 344px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px">
                &nbsp;</td>
            <td align="left" style="width: 344px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 24px; width: 288px;">
            <div id= "btn" style="font-size: medium; width: 239px;">
                <img alt="" src="../Styles/images/resources.png" 
                    />&nbsp;| UTM Zamalah</div>
                  <div id="modal"> 
                <table>
                <tr>
                    <td>&nbsp;</td>
                    <td style="text-decoration: underline; font-weight: bold">Requirement</td>
                </tr>
                <tr>
                    <td> &nbsp;</td>
                    <td>
                     1. Malaysian Citizen.<br/><br/>
                     2. Open to full-time PhD student<br/><br/>
                     3. Not under any emploayment or receiving any form of financial aid from other sources<br/><br/>
                     4. 35 years old and below.<br/><br/>
                     5. The award covers tuition fees and monthly allowances (RM2000)<br/><br/>
                    Open Date: 12 oct 2016 <br/>
                    Closing Date: 12 Nov 2016<br/></td>
                    </tr></table>
                      <asp:Button ID="Button1" runat="server" Text="Apply" BorderColor="#BA1F59" BorderStyle="Outset" BackColor="#FFFFCC" onclick="Button1_Click"/>
                    
                    </div>
      
                </td>
            <td style="height: 24px; width: 344px;">
                <div  id="btn2" style="font-size: medium; width: 272px;">
                <img alt="" src="../Styles/images/resources.png" 
                    />|International Doctoral
                    <br />
                    Fellowship (IDF)</div>

                    <div id="modal2"> 
                <table>
                <tr>
                    <td>&nbsp;</td>
                    <td style="text-decoration: underline; font-weight: bold">Requirement</td>
                </tr>
                <tr>
                    <td> &nbsp;</td>
                    <td>
                     1. International who registered as full time PhD student at the
                 Universiti Teknologi Malaysia. 
                 <br/>
                 <br/>
                 2. Currently in 2nd Semester until 6th Semester only.<br/> 3. Required to be in Malaysia within 2 months from 1 August 
                    2016and be available at anytime during the ... MORE...
                    <br/>
                    <br/>
                    Open Date: 26 Aug 2016
                    <br />
                    Closed date: 8 Sept2016.
                    <br />
                    <br/>
                    </tr></table>
                    -Closed-<br/>
                      <asp:Button ID="Button2" runat="server" Text="Apply" BorderColor="#BA1F59" BorderStyle="Outset" BackColor="#FFFFCC" OnClientClick="return false" />
                    
                    </div>



                </td>
            <td style="height: 24px">
                 <div  id="btn3" style="font-size: medium; width: 239px;">
                <img alt="" src="../Styles/images/resources.png" 
                    />|UTM National Post 
                     <br />
&nbsp;&nbsp;&nbsp;&nbsp; Graduate Fund</div>

                <div id="modal3"> 
                <table>
                <tr>
                    <td>&nbsp;</td>
                    <td style="text-decoration: underline; font-weight: bold">Requirement</td>
                </tr>
                <tr>
                    <td> &nbsp;</td>
                    <td>
                    1. Malaysian Citizen<br/>                 
                    2.Not under any employment
                   <br />
                    or receiving any form of financial aid from other sources .<br />
                    <br />
                    <br />
                    Open Date: 26 Jan 2016<br />Closed date: 8 Feb 2016.<br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    </tr></td>
                    
                    
                    </table>
                      -Closed-<br/><asp:Button ID="Button3" runat="server" Text="Apply" BorderColor="#BA1F59" BorderStyle="Outset" BackColor="#FFFFCC" OnClientClick="return false" />
                    
                    </div>


                </td>
        </tr>
        <tr>
            <td style="width: 288px">
                &nbsp;</td>
            <td align="left" style="width: 344px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px">
                &nbsp;</td>
            <td style="width: 344px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px">
                &nbsp;</td>
            <td align="left" style="width: 344px">
                 &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    
</div>
</asp:Content>

