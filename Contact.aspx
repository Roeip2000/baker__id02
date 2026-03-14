<%@ Page Language="C#" MasterPageFile="~/all.master" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    דף ראשי – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    דף ראשי
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <main role="main" dir="rtl" lang="he">
        <section class="hero">
            <h1 id="site-title">Ido Bakery &amp; Pastry</h1>

            <figure class="hero-figure">
                <img src="picture/bake picture (1).jpg"
                     alt="מבחר מאפים בעבודה במאפייה"
                     class="hero-image"
                     loading="lazy" />
                <figcaption class="visually-hidden">תצוגת מאפים של Ido Bakery &amp; Pastry</figcaption>
            </figure>

            <h2>ברוכים הבאים לעידו – אפייה וקונדיטוריה</h2>

            <p>
                הפרויקט מציג אתר למאפייה וקונדיטוריה, המציג מידע על עידו, מוצרים,
                שירותים. האתר כולל מידע על עולם האפייה, טכניקות בסיסיות ומתקדמות, סוגי
                קינוחים שונים, קורסים, וכן דפים שמסבירים על חוויית היצירה והדרך שלי במטבח.
                בנוסף, האתר מאפשר לגולשים לקבל ידע חשוב על המרכיבים, הציוד הדרוש וטיפים
                מקצועיים לכל מי שרוצה להתחיל לאפות בבית.
            </p>
        </section>

        <section aria-labelledby="topics-heading" class="topics-section">
            <h3 id="topics-heading">קישורים לדפי התוכן:</h3>

            <ul class="topics-list">
                <li>
                    <a href="about.aspx" class="topic-box" aria-label="אודות עידו">
                        <img src="picture/WhatsApp Image 2025-11-24 at 21.58.35.jpeg"
                             alt="תמונת אודות - עידו"
                             loading="lazy" />
                    </a>
                </li>
                <li>
                    <a href="CourseInfo2.aspx" class="topic-box" aria-label="מידע על קורסים">
                        <img src="picture/course.jpeg"
                             alt="תמונה של קורס אפייה"
                             loading="lazy" />
                    </a>
                </li>
                <li>
                    <a href="products.aspx" class="topic-box" aria-label="מוצרים ומתכונים">
                        <img src="picture/recpies.jpeg"
                             alt="דוגמאות מתכונים וקינוחים"
                             loading="lazy" />
                    </a>
                </li>
            </ul>
        </section       >

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
    </main>
</asp:Content>
