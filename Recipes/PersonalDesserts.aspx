<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    קינוחים אישיים – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    קינוחים אישיים
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="recipes-wrapper">

        <div style="max-width:900px; margin:20px auto 30px auto; background-color:white; padding:18px; border-radius:12px; box-shadow:0 4px 10px lightgray; text-align:center; color:dimgray;">
            בעמוד זה תוכלו למצוא מתכונים לקינוחים אישיים, צבעוניים ומיוחדים, עם מרכיבים ואופן הכנה ברור.
        </div>

        <div class="recipe-box">
            <img src="/picture/cupcake_carambo.jpg" class="recipe-img" alt="קאפקייק קרמבו" />

            <div class="recipe-text">
                <h3>קאפקייק קרמבו – קאפקייקס עם מרנג וקרמבו (גרסה ביתית)</h3>

                <p><b>מרכיבים (לקאפקייקס):</b></p>
                <ul>
                    <li>2 ביצים</li>
                    <li>1/2 כוס סוכר</li>
                    <li>1/2 כוס שמן</li>
                    <li>1/2 כוס חלב</li>
                    <li>1 ו־1/2 כוס קמח</li>
                    <li>1 שקית אבקת אפייה</li>
                    <li>1 כפית תמצית וניל</li>
                </ul>

                <p><b>מרכיבים (למרנג):</b></p>
                <ul>
                    <li>2 חלבונים</li>
                    <li>1/2 כוס סוכר</li>
                    <li>1 כפית מיץ לימון (אופציונלי)</li>
                </ul>

                <p><b>לציפוי "קרמבו":</b></p>
                <ul>
                    <li>150–200 גרם שוקולד מריר / חלב</li>
                    <li>1–2 כפות שמן</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מערבבים ביצים וסוכר, מוסיפים שמן, חלב ווניל ואז קמח ואבקת אפייה.</li>
                    <li>ממלאים מנג'טים עד 2/3 ואופים 170°C כ־15–20 דקות.</li>
                    <li>מקציפים חלבונים, מוסיפים סוכר בהדרגה עד קצף יציב.</li>
                    <li>מזלפים מרנג על כל קאפקייק.</li>
                    <li>ממיסים שוקולד עם שמן, טובלים או מוזגים מעל ונותנים להתקשות.</li>
                </ol>
            </div>
        </div>

        <div class="recipe-box">
            <img src="/picture/mm_roll.jpeg" class="recipe-img" alt="רולדת M&M" />

            <div class="recipe-text">
                <h3>רולדת M&M – רולדה לשיתוף (גרסה ביתית)</h3>

                <p><b>מרכיבים (לביסקוויט):</b></p>
                <ul>
                    <li>4 ביצים</li>
                    <li>1/2 כוס סוכר</li>
                    <li>1/2 כוס קמח</li>
                    <li>2 כפות קקאו (אופציונלי)</li>
                    <li>1 כפית תמצית וניל</li>
                    <li>קורט מלח</li>
                </ul>

                <p><b>מרכיבים (קרם):</b></p>
                <ul>
                    <li>250 מ"ל שמנת מתוקה להקצפה</li>
                    <li>2–3 כפות אבקת סוכר</li>
                    <li>1 כפית וניל</li>
                    <li>1/2–1 כוס M&M</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מקציפים ביצים וסוכר 6–8 דקות עד תפיחה.</li>
                    <li>מקפלים קמח (וקקאו אם רוצים) בעדינות.</li>
                    <li>אופים 180°C כ־10–12 דקות.</li>
                    <li>מגלגלים לגלגול ראשוני ומצננים.</li>
                    <li>מקציפים שמנת, מורחים, מפזרים M&M ומגלגלים.</li>
                    <li>מקררים שעה ופורסים.</li>
                </ol>
            </div>
        </div>

        <div class="recipe-box">
            <img src="/picture/bubblegum_popsicle.jpeg" class="recipe-img" alt="ארטיק מסטיק נוסטלגי" />

            <div class="recipe-text">
                <h3>ארטיק מסטיק נוסטלגי (גרסה ביתית)</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>2 כוסות חלב</li>
                    <li>1 כוס שמנת מתוקה</li>
                    <li>3–4 כפות סוכר</li>
                    <li>1 כפית תמצית וניל</li>
                    <li>תמצית או סירופ מסטיק</li>
                    <li>צבע מאכל (אופציונלי)</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מערבבים חלב, שמנת, סוכר ווניל עד המסה.</li>
                    <li>מוסיפים טעם מסטיק וצבע.</li>
                    <li>יוצקים לתבניות ומקפיאים 6 שעות לפחות.</li>
                </ol>
            </div>
        </div>

    </div>

</asp:Content>