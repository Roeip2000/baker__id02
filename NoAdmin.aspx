<%@ Page Title="גישה נחסמה" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PageHeader" runat="server">
    שגיאת הרשאה
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-box" style="text-align: center; padding: 40px; background-color: White; border-radius: 15px; max-width: 500px; margin: 50px auto; box-shadow: 0 4px 10px rgba(0,0,0,0.1);">
        
        <h2 style="color: Red; margin-bottom: 20px;">עצור! ✋</h2>
        <p style="font-size: 18px; color: Black; line-height: 1.6;">
            הדף אליו ניסית להיכנס מיועד ל**מנהלי מערכת** בלבד.
            <br />
            נראה שאין לך את ההרשאות המתאימות.
        </p>
        
        <br />
        
        <a href="/main.aspx" style="display: inline-block; background-color: DodgerBlue; color: White; padding: 12px 25px; text-decoration: none; border-radius: 25px; font-weight: bold; transition: background 0.3s;">
            חזרה לדף הבית
        </a>
    </div>
</asp:Content>