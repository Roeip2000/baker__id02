<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseArea.aspx.cs" Inherits="CourseArea" %>
<%-- דף זה הוא אזור הקורס הפרטי למשתמשים מחוברים --%>
<!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>אזור הקורס - Ido Bakery & Pastry</title>
    <link href="/MainStyle.css" rel="stylesheet" />
    <link href="/CourseArea.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="members-master">

            <div class="top-header">
                <h1>Ido Bakery & Pastry</h1>
                <h2>אזור הקורס</h2>
            </div>

            <%-- תפריט לדפי הקורס של המשתמשים המחוברים --%>
            <div class="members-menu">
                <a href="/main.aspx">דף ראשי</a>
                <span>|</span>
                <a href="/Course/CourseArea.aspx">אזור הקורס</a>
                <span>|</span>
                <a href="/Course/Videos.aspx">סרטונים</a>
            </div>

            <div class="container members-home">
                <div class="intro-box">
                    <%-- התווית מתמלאת מתוך ה-Session בקובץ CourseArea.aspx.cs --%>
                    <h2>שלום, <asp:Label ID="lblName" runat="server" CssClass="user-name" /></h2>
                    <p>ברוך הבא לאזור הקורס. כאן אפשר לצפות בסרטונים.</p>

                    <div class="course-links">
                        <a href="/Course/Videos.aspx" class="course-link">מעבר לסרטוני הקורס</a>
                    </div>
                </div>

                <p class="footer-text">© 2026 Ido Bakery & Pastry</p>
            </div>

        </div>
    </form>
</body>
</html>
