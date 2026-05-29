<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="CourseArea.aspx.cs" Inherits="CourseArea" %>

<%-- אזור הקורס למשתמשים מחוברים: ברכה אישית + סרטוני הקורס באותו עמוד --%>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    אזור הקורס – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    אזור הקורס
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <%-- ברכה אישית: השם הפרטי מגיע מה-Session דרך CourseArea.aspx.cs --%>
    <div class="intro-box">
        <h2>שלום, <asp:Label ID="lblName" runat="server" CssClass="user-name" /></h2>
        <p>ברוך הבא לאזור הקורס. כאן אפשר לצפות בסרטוני הקורס.</p>
    </div>

    <%-- בחירת סרטון: כל קישור מחליף את הסרטון בתוך ה-iframe שלמטה --%>
    <div class="video-frame-box">
        <h3>בחירת סרטון</h3>
        <div class="video-links">
            <a href="https://www.youtube.com/embed/YO1EHTfIo3E" target="videoFrame" class="video-link">
                <span class="video-number">סרטון 1</span>
                <span class="video-title">עוגות בחושות</span>
            </a>
            <a href="https://www.youtube.com/embed/CqsRGwPsJJw" target="videoFrame" class="video-link">
                <span class="video-number">סרטון 2</span>
                <span class="video-title">עוגיות</span>
            </a>
        </div>
    </div>

    <%-- תצוגת הסרטון שנבחר --%>
    <div class="video-frame-box">
        <h3>תצוגת הסרטון</h3>
        <iframe name="videoFrame"
                src="https://www.youtube.com/embed/YO1EHTfIo3E"
                title="סרטון הקורס"
                allowfullscreen>
        </iframe>
    </div>

</asp:Content>
