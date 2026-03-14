<%@ Page Language="C#" MasterPageFile="~/CourseArea2.Master" AutoEventWireup="true" CodeFile="Presentations.aspx.cs" Inherits="Presentations" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    מצגות
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    מצגות
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="presentation-box">
        <h3>מצגות הקורס</h3>
        <p>בחר מצגת מהרשימה לצפייה בתוך הדף.</p>
    </div>

    <div class="presentation-box">
        <h3>רשימת המצגות</h3>

        <div class="presentation-links">
            <a href="/course_presentations/The_Baker_s_Blueprint.pdf" target="pdfFrame" class="presentation-link">מצגת 1 – עוגות בחושות</a>
            <a href="/course_presentations/Cream_Cake_Masterclass.pdf" target="pdfFrame" class="presentation-link">מצגת 2 – עוגות קרם</a>
            <a href="/course_presentations/Mousse_Blueprint.pdf" target="pdfFrame" class="presentation-link">מצגת 3 – עוגות מוס</a>
            <a href="/course_presentations/The_Cookie_Blueprint.pdf" target="pdfFrame" class="presentation-link">מצגת 4 – עוגיות</a>
            <a href="/course_presentations/Gourmet_Chocolate_Masterclass.pdf" target="pdfFrame" class="presentation-link">מצגת 5 – שוקולד ופרלינים</a>
            <a href="/course_presentations/The_Macaron_Blueprint.pdf" target="pdfFrame" class="presentation-link">מצגת 6 – מקרונים</a>
            <a href="/course_presentations/The_Choux_Blueprint.pdf" target="pdfFrame" class="presentation-link">מצגת 7 – אקלרים ופחזניות</a>
            <a href="/course_presentations/The_Yeast_Blueprint.pdf" target="pdfFrame" class="presentation-link">מצגת 8 – מאפי שמרים</a>
        </div>
    </div>

    <div class="presentation-box">
        <h3>תצוגת המצגת</h3>
        <iframe
            name="pdfFrame"
            src="/course_presentations/The_Baker_s_Blueprint.pdf">
        </iframe>
    </div>

</asp:Content>