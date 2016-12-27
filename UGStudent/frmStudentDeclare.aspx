<%@ Page Title="" Language="C#" MasterPageFile="~/UGStudent/UGMasterPage.master" AutoEventWireup="true" CodeFile="frmStudentDeclare.aspx.cs" Inherits="UGStudent_frmDeclare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="BodyContent" Runat="Server">
 
<div id="cssmenu2">
       <p align="center" style="font-style: normal; font-variant: normal; text-transform: uppercase; font-weight: normal; ">UTM ZAMALAH Scholarship Application</p>
        <br/> <ul style="font-size: small; top: 1px; left: -4px; height: 16px;">
            <li><a href="frmStudentDetails.aspx"><span class="fa fa-user"></span> Personal Details</a></li>
            <li><a href="frmStudentActivities.aspx"><span class="fa fa-user"></span> Activities</a></li>
            <li  class="active"><a href="frmStudentDeclare.aspx"><span class="fa fa-user"></span> Student Declaration</a></li>
            </ul></div>

    <div>
        <table __designer:mapid="78d" style="width: 73%; height: 194px">
            <tr __designer:mapid="78e">
                <td __designer:mapid="78f">
                    1. Please check all your information again.<asp:HyperLink ID="HyperLink2" 
                runat="server" NavigateUrl="~/UGStudent/frmCompleteForm.aspx" Target="_blank">View Complete Form</asp:HyperLink>
                </td>
                <td __designer:mapid="791">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="792">
                <td __designer:mapid="793">
            2. If there any outdated information, kindly update your details in Profile 
            section or click here.
                </td>
                <td __designer:mapid="794">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="795">
                <td __designer:mapid="796">
            <asp:CheckBox ID="CheckBox1" runat="server" 
                Text="I declare that this information is correct and complete." 
                oncheckedchanged="CheckBox1_CheckedChanged" />
            <asp:CustomValidator ID="CustomValidator2" runat="server" 
                ErrorMessage="Please check here." ForeColor="Red" 
                onservervalidate="CustomValidator2_ServerValidate">*</asp:CustomValidator>
                </td>
                <td __designer:mapid="797">
                    &nbsp;</td>
            </tr>
            <tr __designer:mapid="798">
                <td __designer:mapid="799">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ForeColor="#CC0000" Width="237px" />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </td>
                <td __designer:mapid="79a">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <asp:SqlDataSource ID="sql" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LocalDB %>" 

        DeleteCommand="DELETE FROM [APPLICATION] WHERE [App_No] = @App_No" 
        InsertCommand="INSERT INTO [APPLICATION] ([Matrix_No], [Session], [App_Date],[Type]) VALUES (@Matrix_No, @Session, @App_Date,@Type)" 
        SelectCommand="SELECT * FROM [APPLICATION] WHERE ([Matrix_No] = @Matrix_No AND [Type] = @type)  ORDER BY [App_Date] DESC " 
        UpdateCommand="UPDATE [APPLICATION] SET [Matrix_No] = @Matrix_No, [Session] = @Session, [App_Date] = @App_Date, [Mark] = @Mark, [Comment] = @Comment, [Achievement] = @Achievement, [Award] = @Award, [Type] = @Type, [Faculty_Approval] = @Faculty_Approval, [Selected] = @Selected WHERE [App_No] = @App_No">
         <SelectParameters>
            <asp:SessionParameter Name="Matrix_No" SessionField="matricNo" Type="String" />
            <asp:SessionParameter Name="type" SessionField="scholarshipType" Type="String" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="App_No" Type="Int32" />
        </DeleteParameters>
   
        <UpdateParameters>
            <asp:Parameter Name="Matrix_No" Type="String" />
            <asp:Parameter Name="Session" Type="String" />
            <asp:Parameter DbType="Date" Name="App_Date" />
            <asp:Parameter Name="Mark" Type="Decimal" />
            <asp:Parameter Name="Comment" Type="String" />
            <asp:Parameter Name="Achievement" Type="String" />
            <asp:Parameter Name="Award" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Faculty_Approval" Type="Byte" />
            <asp:Parameter Name="Selected" Type="Byte" />
            <asp:Parameter Name="App_No" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sql1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LocalDB %>"        
        
        SelectCommand="SELECT [Email] FROM [vw_Supervisor] WHERE (([Matrix_No] = @Matrix_No) AND ([Semester] = @Semester))" >
        <SelectParameters>
            <asp:SessionParameter Name="Matrix_No" SessionField="matricNo" Type="String" />
            <asp:Parameter DefaultValue="201620171" Name="Semester" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
     <asp:SqlDataSource ID="sql0" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
        DeleteCommand="DELETE FROM [APP_STATUS_DETAILS] WHERE [ID] = @ID" 
        InsertCommand="INSERT INTO [APP_STATUS_DETAILS] ([App_Code], [Status], [Remark], [Date], [Active]) VALUES (@App_Code, @Status, @Remark, @Date, @Active)" 
        SelectCommand="SELECT * FROM [APP_STATUS_DETAILS]" 
        
        UpdateCommand="UPDATE [APP_STATUS_DETAILS] SET [App_Code] = @App_Code, [Status] = @Status, [Remark] = @Remark, [Date] = @Date, [Active] = @Active WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="App_Code" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Remark" Type="String" />
            <asp:Parameter Name="Date" DbType="Date" />
            <asp:Parameter Name="Active" Type="Byte" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="App_Code" Type="Int32" />
            <asp:Parameter Name="Status" Type="String" />
            <asp:Parameter Name="Remark" Type="String" />
            <asp:Parameter Name="Date" DbType="Date" />
            <asp:Parameter Name="Active" Type="Byte" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

     <asp:SqlDataSource ID="sqlScholarship" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LocalDB %>"> 
        </asp:SqlDataSource>
         <asp:SqlDataSource ID="sqlPublication" runat="server" 
        ConnectionString="<%$ ConnectionStrings:LocalDB %>" 
        SelectCommand="SELECT * FROM [PUBLICATION] WHERE ([matrix_no] = @matrix_no)">
             <SelectParameters>
                 <asp:SessionParameter Name="matrix_no" SessionField="matricNo" Type="String" />
             </SelectParameters>
        </asp:SqlDataSource>
</asp:Content>

