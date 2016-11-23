<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmGetProgram.aspx.cs" Inherits="frmGetProgram" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style type="text/css">
        .style1
        {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <table style="width:100%;">
        <tr>
            <td width="100%" colspan="2" class="ui-widget-header ui-corner-top" style="padding: 10px">
                BASIC INFORMATION SESSION / SEMESTER - <%= session %>
            </td>
        </tr>
        <tr>
            <td class="tdtitle" style="width: 20%">
                Program</td>
            <td class="tdrow" >
                <asp:Label ID="lblProgram" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td class="tdtitle" style="width: 20%">
                Faculty</td>
            <td class="tdrow" >
                <asp:Label ID="lblFaculty" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
    
    </form>
</body>
</html>
