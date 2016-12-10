<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="Biasiswa1.aspx.cs" Inherits="UGStudent_Biasiswa1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
   
    <asp:Panel ID="Panel1" runat="server">
        <link href="../Styles/css/scholarship.css" rel="stylesheet" type="text/css" />
        <script src="../Styles/js/scholarship.js" type="text/javascript"></script>

<div class="wrapper">
      <div class="col_third"> 
        <div class="hover panel">
          <div class="front">
            <div class="box1">
              <asp:Label ID="Label2" runat="server" Text="
                UTM ZAMALAH
                 " ForeColor="White"></asp:Label> 
                   
            </div>
          </div>
          <div class="back">
            <div class="box2">
              <p align="left">1.Malaysian Citizen.<br/><br/>
2.Open to full-time PhD student<br/><br/>
3.Not under any emploayment or receiving any form of financial aid from other sources<br/><br/>
4.35 years old and below.<br/><br/>
5.The award covers tuition fees and monthly allowances (RM2000)<br/><br/>
Open Date: 12 oct 2016 <br/>
Closing Date: 12 Nov 2016<br/>

               <asp:Button ID="Button1" runat="server" Height="35px" Text="Apply"  
                        Width="205px" ForeColor="Maroon" 
                      BackColor="#FFFFCC" Font-Bold="True" Font-Names="Mangal" 
                      onclick="Button1_Click" />
            </div>
          </div>
        </div>
		</div>

		<div class="col_third">
        <div class="hover panel">
          <div class="front">
            <div class="box1">
              <asp:Label ID="Label1" runat="server" Text="
                 International Doctoral Fellowship(IDF)
                 " Font-Size="Large" ForeColor="White"></asp:Label>
            </div>
          </div>
          <div class="back">
            <div class="box2">
              <p align="left">1. International who registered as full time PhD student at the
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
                    
               <asp:Button ID="Button2" runat="server" Height="35px" Text="Apply" OnClientClick="return false;"
                        Width="205px" ForeColor="Maroon" 
                      BackColor="#FFFFCC" Font-Bold="True" 
    Font-Names="Mangal" onclick="Button2_Click" />
    
            </div>
          </div>
        </div>
		</div>

		<div class="col_third end">
        <div class="hover panel">
          <div class="front">
            <div class="box1">
              <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="White" Font-Size="Larger">
                 UTM National Post Graduate Fund</asp:Label>
            </div>
          </div>
          <div class="back">
            <div class="box2" align="left">
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
                    
               <asp:Button ID="Button3" runat="server" Height="35px" Text="Apply" 
                        Width="205px" ForeColor="Maroon" 
                      BackColor="#FFFFCC" Font-Bold="True" 
    Font-Names="Mangal" />
            
                  <p>
                  </p>
                  <p>
                  </p>
                  <p>
                  </p>
                  <p>
                  </p>
               
            </div>
          </div>
        </div>
      </div>

     
	 </div>
    </asp:Panel>
</asp:Content>

