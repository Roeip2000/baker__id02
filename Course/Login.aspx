<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login" %>

<%-- This page lets an existing user log in --%>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    התחברות – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    התחברות לאזור הקורס
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <%-- This form sends the username and password to Login.aspx.cs --%>
    <div class="form-box">
        <h2>התחברות</h2>

        <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>

        <table>
            <tr>
                <td>שם משתמש:</td>
                <td>
                    <%-- This TextBox gets the username from the user --%>
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="input-box" />
                    <%-- This validator creates a simple client-side check for an empty username --%>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserName"
                        ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>סיסמה:</td>
                <td>
                    <%-- Password mode hides the password while the user types --%>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-box" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                        ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="form-actions">
                    <%-- This Button runs btnLogin_Click in Login.aspx.cs --%>
                    <asp:Button ID="btnLogin" runat="server" Text="התחבר" CssClass="main-button" OnClick="btnLogin_Click" />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
