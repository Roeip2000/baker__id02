<%@ Page Title="גישה נחסמה" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" %>

<asp:Content ID="ContentTitle" ContentPlaceHolderID="TitleContent" runat="server">
    אין הרשאת גישה
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="server">
    אין הרשאת גישה
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-box permission-box">
        
        <h2 class="permission-title">אין לך הרשאה</h2>
        <p class="permission-text">
            הדף הזה מיועד למנהל האתר בלבד.
            <br />
            אפשר לחזור לדף הראשי ולהמשיך לגלוש באתר.
        </p>
        
        <br />
        
        <a href="/main.aspx" class="main-link-button">
            חזרה לדף הבית
        </a>
    </div>
</asp:Content>
