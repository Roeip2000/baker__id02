<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeFile="CourseArea.aspx.cs" Inherits="CourseArea" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    אזור הקורס – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    אזור הקורס
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-box">
        <h2>שלום, <asp:Label ID="lblName" runat="server" /></h2>
        <p>ברוך הבא לאזור המנויים. כאן תוכל לצפות בסרטונים ובמצגות של הקורס.</p>

        <div style="text-align:center; margin-top:20px;">
            <a href="/Course/Videos.aspx" class="main-button" style="text-decoration:none; margin:10px; display:inline-block;">סרטונים</a>
            <a href="/Course/Presentations.aspx" class="main-button" style="text-decoration:none; margin:10px; display:inline-block;">מצגות</a>
        </div>
    </div>

</asp:Content>
