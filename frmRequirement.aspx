<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmRequirement.aspx.cs" Inherits="frmRequirement" %>

<form runat="server">
<table style="width: 100%;" border="2">
    <tr>
        <th colspan="4" class="thtitle">
            Scholarship Information
        </th>
    </tr>
    <tr>
        <td class="tdtitle" style="width: 16%">
            Scholarship Code
        </td>
        <td class="tdrow" style="width: 21%">
            <%= code %>
        </td>
        <td class="tdtitle" style="width: 16%">
            Scholarship Name
        </td>
        <td class="tdrow" style="width: 47%">
            <%= name %>
        </td>
    </tr>
    <tr>
        <td class="tdtitle">
            Address and Tel No.
        </td>
        <td colspan="3" class="tdrow">
            <strong>Address 1: &nbsp;</strong><%= addr1 %><br />
            <strong>Address 2: &nbsp;</strong><%= addr2 %><br />
            <strong>Postcode: &nbsp;</strong><%= postcode %><br />
            <strong>City: &nbsp;</strong><%= city %><br />
            <strong>State: &nbsp;</strong><%= state %><br />
            <strong>Telephone No: &nbsp;</strong><%= telNo %>
        </td>
    </tr>
    <tr>
        <th colspan="4" class="thtitle">
            Scholarship Requirement
        </th>
    </tr>
    <tr>
        <td class="tdtitle">
            By the age of
        </td>
        <td class="tdrow">
            <% if (Request.QueryString["edit"] == "1")
               { %>
            <input id="txtAge" type="text" value="<%= ageLimit %>" />
            <%}
               else
               { %>
            <%= ageLimit %>
            <% } %>
        </td>
        <td class="tdtitle">
            Registration Type
        </td>
        <td class="tdrow">
            <% if (Request.QueryString["edit"] == "1")
               { %>
            <input id="txtReg" type="text" value="<%= regLimit %>" />
            <%}
               else
               { %>
            <%= regLimit %>
            <% } %>
        </td>
    </tr>
    <tr>
        <td class="tdtitle">
            Job
        </td>
        <td class="tdrow">
            <% if (Request.QueryString["edit"] == "1")
               { %>
            <asp:dropdownlist id="ddlJob" runat="server">
            <asp:ListItem Text="No restriction" Value="-" />
            <asp:ListItem Text="Employed" Value="Employed" />
            <asp:ListItem Text="Unemployed" Value="Unemployed" />
            </asp:dropdownlist>
            <%}
               else
               { %>
            <%= jobLimit %>
            <% } %>
        </td>
        <td class="tdtitle">
            Min CPA
        </td>
        <td class="tdrow">
            <% if (Request.QueryString["edit"] == "1")
               { %>
            <input id="txtCPA" type="text" value="<%= cpaLimit %>" />
            <%}
               else
               { %>
            <%= cpaLimit %>
            <% } %>
        </td>
    </tr>
    <tr>
        <td class="tdtitle">
            Min semester left
        </td>
        <td class="tdrow">
            <% if (Request.QueryString["edit"] == "1")
               { %>
            <input id="txtSem" type="text" value="<%= semLimit %>" />
            <%}
               else
               { %>
            <%= semLimit %>
            <% } %>
        </td>
        <td class="tdtitle">
            Nationality
        </td>
        <td class="tdrow">
            <% if (Request.QueryString["edit"] == "1")
               { %>
            <asp:dropdownlist id="ddlNationality" runat="server">
            <asp:ListItem Text="Malaysian" Value="Malaysian" />
            <asp:ListItem Text="Non-Malaysian" Value="Non-Malaysian" />
            </asp:dropdownlist>
            <%}
               else
               { %>
            <%= nationality %>
            <% } %>
        </td>
    </tr>
</table>
</form>
