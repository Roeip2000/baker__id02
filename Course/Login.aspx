<%@ Page Title="" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="baker__id02.Login" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    התחברות – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    התחברות
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div style="background-color:white; padding:30px; border-radius:16px; width:600px; margin:auto; text-align:right; direction:rtl; border:2px solid steelblue; font-family:Arial; box-shadow:0 6px 16px lightgray;">

        <h2 style="color:steelblue; text-align:center; margin-bottom:8px;">התחברות למערכת</h2>
        <p style="text-align:center; color:dimgray; margin-top:0; margin-bottom:20px;">
            הזן שם משתמש וסיסמה כדי להיכנס לאזור הקורסים.
        </p>

        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>

        <table style="width:100%; border-spacing:12px;">
            <tr>
                <td style="font-weight:bold;">שם משתמש:</td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td style="font-weight:bold;">סיסמה:</td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="100%"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="2" style="text-align:center; padding-top:12px;">
                    <asp:Button ID="btnLogin" runat="server"
                        Text="התחבר"
                        CssClass="main-button"
                        OnClick="btnLogin_Click" />
                </td>
            </tr>
        </table>

        <div style="margin-top:25px; text-align:center; padding-top:15px; border-top:1px solid lightgray;">
            <span style="color:dimgray; font-size:16px;">אין לך עדיין חשבון?</span>
            <a href="/Course/CourseSignup.aspx" style="color:royalblue; font-weight:bold; text-decoration:none; margin-right:6px;">
                לחץ כאן להרשמה
            </a>
        </div>

    </div>

</asp:Content>