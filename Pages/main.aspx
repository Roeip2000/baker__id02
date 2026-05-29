<%@ Page Language="C#" MasterPageFile="~/all.Master" %>

<%-- זהו דף הבית של האתר --%>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    דף ראשי – Ido Bakery & Pastry
</asp:Content>
<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="body">
        <div class="text-box">
            <h1>Ido Bakery & Pastry</h1>
            <img src="/picture/bake picture (1).jpg" alt="מאפים טריים במאפייה" class="main-image" />

            <h2>ברוכים הבאים לעידו – אפייה וקונדיטוריה</h2>

            <p>
                זהו אתר בית ספרי בנושא אפייה וקונדיטוריה, שבו אני משתף את המתכונים והטיפים שאני הכי אוהב.
                המטרה היא אתר ברור ונוח, שגם מי שלא אפה אף פעם יוכל להיכנס, לעקוב אחרי השלבים ולהצליח.
            </p>

            <p>
                הרשומים לקורס מקבלים גישה לאזור אישי עם מתכונים מלאים – רשימת מרכיבים מסודרת,
                שלבי הכנה לפי הסדר, וסרטון הדגמה קצר לכל מתכון.
                כדי להתחיל אפשר להירשם בלחיצה אחת, או להתחבר אם כבר יש לך משתמש.
            </p>

            <%-- קריאה לפעולה: הרשמה או התחברות, מובילות לדפים המתאימים --%>
            <div class="home-actions">
                <a href="/Course/CourseSignup.aspx" class="main-link-button">להרשמה לחץ כאן</a>
                <a href="/Course/Login.aspx" class="main-link-button">להתחברות לחץ כאן</a>
            </div>

        </div>
    </div>

</asp:Content>
