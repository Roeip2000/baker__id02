<%@ Page Title="רשימת נרשמים" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeFile="Users.aspx.cs" Inherits="baker_ido.Users" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    רשימת נרשמים – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    רשימת נרשמים לקורסים
</asp:Content>

<asp:Content ID="Body1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-box">
        <h2>רשימת נרשמים לקורסים</h2>
        <%= usersList%>
        <br /><br />
        מספר הרשומות: <strong><%= usersCount %></strong>
    </div>
</asp:Content>
