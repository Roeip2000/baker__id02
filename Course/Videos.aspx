<%@ Page Language="C#" MasterPageFile="~/CourseArea2.Master" AutoEventWireup="true" CodeFile="Videos.aspx.cs" Inherits="Videos" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    סרטונים
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    סרטונים
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="video-frame-box">
        <h3>סרטוני הקורס</h3>
        <p>בחר סרטון מהרשימה לצפייה בתוך הדף.</p>
    </div>

    <div class="video-frame-box">
        <h3>רשימת הסרטונים</h3>

        <div class="presentation-links">
            <a href="https://www.youtube.com/embed/YO1EHTfIo3E" target="videoFrame" class="presentation-link">סרטון 1 – עוגות בחושות</a>
            <a href="https://www.youtube.com/embed/BW5qRBlAhCE" target="videoFrame" class="presentation-link">סרטון 2 – עוגות קרם</a>
            <a href="https://www.youtube.com/embed/4GuJmIeqs_w" target="videoFrame" class="presentation-link">סרטון 3 – עוגות מוס</a>
            <a href="https://www.youtube.com/embed/CqsRGwPsJJw" target="videoFrame" class="presentation-link">סרטון 4 – עוגיות</a>
            <a href="https://www.youtube.com/embed/Aib3pzEbx0A" target="videoFrame" class="presentation-link">סרטון 5 – פרלינים</a>
            <a href="https://www.youtube.com/embed/molXDy4E304" target="videoFrame" class="presentation-link">סרטון 6 – מקרונים</a>
            <a href="https://www.youtube.com/embed/EauC8tKbem0" target="videoFrame" class="presentation-link">סרטון 7 – אקלרים ופחזניות</a>
            <a href="https://www.youtube.com/embed/5Omk9TzMPtE" target="videoFrame" class="presentation-link">סרטון 8 – מאפי שמרים</a>
        </div>
    </div>

    <div class="video-frame-box">
        <h3>תצוגת הסרטון</h3>
        <iframe
            name="videoFrame"
            src="https://www.youtube.com/embed/YO1EHTfIo3E"
            title="סרטון הקורס"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen>
        </iframe>
    </div>

</asp:Content>