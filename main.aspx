<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    דף ראשי – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    דף ראשי
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="home-page">
        <div class="text-box">
            <h1>Ido Bakery & Pastry</h1>
            <img src="picture/bake picture (1).jpg" width="350" alt="Ido Bakery & Pastry" />

            <h2>ברוכים הבאים ל־Ido Bakery & Pastry</h2>

            <p>
                האתר מציג מאפייה וקונדיטוריה אישית, וכולל מידע על עולם האפייה, סוגי קינוחים,
                טכניקות בסיסיות ומתקדמות, קורסים, מוצרים וטיפים שימושיים. בנוסף, ניתן למצוא
                באתר דפי תוכן שמציגים את חוויית היצירה במטבח, מידע על ציוד וחומרי גלם,
                והשראה לכל מי שאוהב לאפות בבית.
            </p>

            <h3>קישורים לדפי התוכן:</h3>

            <ul>
                <li>
                    <a href="About.aspx" class="topic-box">
                        <img src="picture/WhatsApp Image 2025-11-24 at 21.58.35.jpeg" alt="אודות" />
                        <div class="topic-title">אודות</div>
                    </a>
                </li>
                <li>
                    <a href="/Course/CourseSignup.aspx" class="topic-box">
                        <img src="picture/course.jpeg" alt="קורסים" />
                        <div class="topic-title">קורסים</div>
                    </a>
                </li>
                <li>
                    <a href="Products.aspx" class="topic-box">
                        <img src="picture/recpies.jpeg" alt="מוצרים" />
                        <div class="topic-title">ספר המתכונים</div>
                    </a>
                </li>
            </ul>

            <p class="footer-text">© 2026 Ido Bakery & Pastry – כל הזכויות שמורות</p>
        </div>
    </div>

</asp:Content>