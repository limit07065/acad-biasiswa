<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmPublication.aspx.cs" Inherits="frmPublication" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>List of Publication</title>
    <script type="text/javascript" src="Styles/sps/jquery-1.4.2.min.js"></script>
    <link href="Styles/sps/jquery-ui-1.8.6.custom.css" rel="stylesheet" media="screen" />
    <!--<link href="Styles/bootsrap/bootstrap.min.css" rel="stylesheet" media="screen" />-->
    <link href="Styles/sps/bootstrap-btn-min.css" rel="stylesheet" media="screen" />
    <link href="Styles/sps/sps.css" rel="stylesheet" media="screen" />
    <link href="Styles/sps/gsmsv2.css" rel="stylesheet" media="screen" />
    <link rel="shortcut icon" href="~/styles/images/utm.ico" />
    <script type="text/javascript" src="Styles/sps/jquery-ui-1.8.6.custom.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LocalDB %>">
        </asp:SqlDataSource>
        <div class="ui-corner-all fill_yellow">
            <div class="jumbotron">
                List of Publications</div>
            <br />
        </div>
        <div class="ui-widget-header ui-corner-top" style="padding: 10px; text-align: left;">
            &nbsp;Personal Particulars</div>
        <table align="center" cellpadding="0" cellspacing="0" width="100%">
            <tbody>
                <tr>
                    <td width="17%" valign="top" class="tdtitle">
                        <b>Matric No.</b>
                    </td>
                    <td width="33%" valign="top" class="tdrow" colspan="3">
                        <asp:Label ID="lblMatricNo" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td valign="top" class="tdtitle">
                        <b>Full Name</b>
                    </td>
                    <td valign="top" class="tdrow">
                        <asp:Label ID="lblFullName" runat="server" Text=""></asp:Label>
                    </td>
                    <td valign="top" class="tdtitle">
                        <b>Supervisor</b>
                    </td>
                    <td valign="top" class="tdrow">
                        <asp:Label ID="lblSupervisor" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <div class="ui-widget-header ui-corner-top" style="padding: 10px; text-align: left;">
            &nbsp;Publications
        </div>
    </div>
    </form>
</body>
</html>
