<%@ Page Language="C#" MasterPageFile="~/all.master" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    דף ראשי – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    דף ראשי
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="body">
        <div class="text-box">
            <h1>Ido Bakery & Pastry</h1>
            <img src="picture/bake picture (1).jpg" width="350" />

            <h2>ברוכים הבאים לעידו – אפייה וקונדיטוריה</h2>

            <p>
                הפרויקט מציג אתר למאפייה וקונדיטוריה, המציג מידע על עידו, מוצרים,
                שירותים,
                האתר כולל מידע על עולם האפייה, טכניקות בסיסיות ומתקדמות, סוגי קינוחים
                שונים, קורסים, וכן דפים שמסבירים על חוויית היצירה והדרך שלי במטבח.
                בנוסף, האתר מאפשר לגולשים לקבל ידע חשוב על המרכיבים, הציוד הדרוש
                וטיפים מקצועיים לכל מי שרוצה להתחיל לאפות בבית.
            </p>

            <h3>קישורים לדפי התוכן:</h3>

            <ul>
                <li>
                    <a href="/About.aspx" class="topic-box">
                        <img src="picture/WhatsApp Image 2025-11-24 at 21.58.35.jpeg" />
                    </a>
                </li>
                <li>
                    <a href="/Course/CourseSignup.aspx" class="topic-box">
                        <img src="picture/course.jpeg" />
                    </a>
                </li>
                <li>
                    <a href="/products.aspx" class="topic-box">
                        <img src="picture/recpies.jpeg" />
                    </a>
                </li>
            </ul>

            <p class="footer-text">© 2026 Ido Bakery & Pastry – כל הזכויות שמורות</p>
        </div>
    </div>

</asp:Content>
