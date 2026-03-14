<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    התחברות – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    התחברות לאזור הקורס
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-box">
        <h2>התחברות</h2>

        <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>

        <table>
            <tr>
                <td>שם משתמש:</td>
                <td><asp:TextBox ID="txtUserName" runat="server" CssClass="input-box" /></td>
            </tr>
            <tr>
                <td>סיסמה:</td>
                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-box" /></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align:center; padding-top:15px;">
                    <asp:Button ID="btnLogin" runat="server" Text="התחבר" CssClass="main-button" OnClick="btnLogin_Click" />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
