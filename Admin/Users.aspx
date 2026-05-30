<%@ Page Title="רשימת נרשמים" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="baker_ido.Users" %>

<%-- דף ניהול זה מציג את המשתמשים הרשומים מתוך מסד הנתונים --%>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    רשימת נרשמים – Ido Bakery & Pastry
</asp:Content>
<asp:Content ID="Body1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-box admin-box">
        <h2>רשימת נרשמים לקורסים</h2>
        
        <br />
        <div class="admin-count">
            מספר נרשמים: <strong><asp:Label ID="lblCount" runat="server" /></strong>
        </div>
    </div>
</asp:Content>
