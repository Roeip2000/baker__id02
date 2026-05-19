<%@ Page Title="גישה נחסמה" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="server">
    שגיאת הרשאה
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-box permission-box">
        
        <h2 class="permission-title">עצור! ✋</h2>
        <p class="permission-text">
            הדף אליו ניסית להיכנס מיועד ל<strong>מנהלי מערכת</strong> בלבד.
            <br />
            נראה שאין לך את ההרשאות המתאימות.
        </p>
        
        <br />
        
        <a href="/main.aspx" class="main-link-button">
            חזרה לדף הבית
        </a>
    </div>
</asp:Content>
