<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="CourseArea.aspx.cs" Inherits="CourseArea" %>

<%-- אזור הקורס למשתמשים מחוברים: ברכה אישית + מתכוני הקורס (כל מתכון עם סרטון בסופו) --%>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    אזור הקורס – Ido Bakery & Pastry
</asp:Content>
<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <%-- ברכה אישית: השם הפרטי מגיע מה-Session דרך CourseArea.aspx.cs --%>
    <div class="intro-box">
        <h2>שלום, <asp:Label ID="lblName" runat="server" CssClass="user-name" /></h2>
        <p>ברוך הבא לאזור הקורס. כאן נמצאים מתכוני הקורס – כל מתכון כולל מרכיבים, אופן הכנה וסרטון הדגמה בסוף הדף.</p>
    </div>

    <%-- מתכוני הקורס: כל כרטיס מוביל לדף מתכון עם הסבר מלא וסרטון בסוף --%>
    <div class="topics-grid">

        <div class="topic-box">
            <img src="/picture/chocolet.jpeg" alt="עוגת שוקולד בחושה" />
            <div class="recipe-topic-content">
                <a href="/Recipes/SimpleMixCakes.aspx" class="recipe-topic-link">
                    עוגת שוקולד בחושה
                </a>
            </div>
        </div>

        <div class="topic-box">
            <img src="/picture/choc_chip_cookies.jpg" alt="עוגיות שוקולד צ'יפס" />
            <div class="recipe-topic-content">
                <a href="/Recipes/Cookies.aspx" class="recipe-topic-link">
                    עוגיות שוקולד צ'יפס
                </a>
            </div>
        </div>

    </div>

</asp:Content>
