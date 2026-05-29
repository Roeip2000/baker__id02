<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Videos.aspx.cs" Inherits="Videos" %>
<%-- דף זה מציג את סרטוני הקורס רק אחרי שהמשתמש מתחבר --%>
<!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>סרטונים - Ido Bakery & Pastry</title>
    <link href="/MainStyle.css" rel="stylesheet" />
    <link href="/CourseArea.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="members-master">

            <div class="top-header">
                <h1>Ido Bakery & Pastry</h1>
                <h2>סרטוני הקורס</h2>
            </div>

            <%-- תפריט למעבר בין דפי הקורס הפרטיים --%>
            <div class="members-menu">
                <a href="/main.aspx">דף ראשי</a>
                <span>|</span>
                <a href="/Course/CourseArea.aspx">אזור הקורס</a>
                <span>|</span>
                <a href="/Course/Videos.aspx">סרטונים</a>
            </div>

            <div class="container">
                <div class="video-frame-box">
                    <h3>סרטוני הקורס</h3>
                    <p>בחר סרטון מהרשימה לצפייה בתוך הדף.</p>
                </div>

                <div class="video-frame-box">
                    <h3>בחירת סרטון</h3>

                    <%-- קישורים אלו מחליפים את הסרטון בתוך ה-iframe שלמטה --%>
                    <div class="video-links">
                        <a href="https://www.youtube.com/embed/YO1EHTfIo3E" target="videoFrame" class="video-link">
                            <span class="video-number">סרטון 1</span>
                            <span class="video-title">עוגות בחושות</span>
                        </a>
                        <a href="https://www.youtube.com/embed/BW5qRBlAhCE" target="videoFrame" class="video-link">
                            <span class="video-number">סרטון 2</span>
                            <span class="video-title">עוגות קרם</span>
                        </a>
                        <a href="https://www.youtube.com/embed/4GuJmIeqs_w" target="videoFrame" class="video-link">
                            <span class="video-number">סרטון 3</span>
                            <span class="video-title">עוגות מוס</span>
                        </a>
                        <a href="https://www.youtube.com/embed/CqsRGwPsJJw" target="videoFrame" class="video-link">
                            <span class="video-number">סרטון 4</span>
                            <span class="video-title">עוגיות</span>
                        </a>
                    </div>
                </div>
              
                <div class="video-frame-box">
                    <h3>תצוגת הסרטון</h3>
                    <%-- ה-iframe מציג את סרטון הקורס שנבחר מ-YouTube --%>
                    <iframe
                        name="videoFrame"
                        src="https://www.youtube.com/embed/YO1EHTfIo3E"
                        title="סרטון הקורס"
                        frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen>
                    </iframe>
                </div>

                <p class="footer-text">© 2026 Ido Bakery & Pastry</p>
            </div>

        </div>
    </form>
</body>
</html>
