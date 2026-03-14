<%@ Page Language="C#" MasterPageFile="~/CourseArea2.Master" AutoEventWireup="true" CodeFile="CourseArea.aspx.cs" Inherits="CourseArea" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    אזור הקורס למנויים
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    אזור הקורס
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="members-home">

        <div class="intro-box">
            <h2>
                שלום
                <span class="user-name">
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </span>
            </h2>

            <p>
                ברוך הבא לאזור המנויים. כאן תוכל לצפות בסרטונים של הקורס
                ולעיין במצגות שהועלו עבורך.
            </p>
        </div>

        <div class="text-box">
            <h3>בחר את סוג התוכן שברצונך לפתוח</h3>

            <div class="course-links">
                <a href="/Course/Videos.aspx" class="course-link">🎥 סרטונים</a>
                <a href="/Course/Presentations.aspx" class="course-link">📂 מצגות</a>
            </div>
        </div>


    </div>

</asp:Content>