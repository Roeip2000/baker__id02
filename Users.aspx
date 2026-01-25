<%@ Page Title="רשימת נרשמים"
    Language="C#"
    MasterPageFile="~/Site.master"
    AutoEventWireup="true"
    CodeBehind="Users.aspx.cs"
    Inherits="baker_ido.Users" %>

<asp:Content ID="Body1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>רשימת נרשמים לקורסים</h2>

    <%= usersList%>

    <br /><br />

    מספר הרשומות:
    <strong><%= usersCount %></strong>

</asp:Content>
