<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    עוגות מוס וקרם – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    עוגות מוס וקרם
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="recipes-wrapper">

        <div style="max-width:900px; margin:20px auto 30px auto; background-color:white; padding:18px; border-radius:12px; box-shadow:0 4px 10px lightgray; text-align:center; color:dimgray;">
            בעמוד זה תוכלו למצוא מתכונים לעוגות מוס וקרם, עם מרכיבים ואופן הכנה ברור.
        </div>

        <div class="recipe-box">
            <img src="/picture/lotus_cream.jpg" class="recipe-img" alt="עוגת קסם לוטוס וקרם וניל" />

            <div class="recipe-text">
                <h3>עוגת קסם לוטוס וקרם וניל</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>200 גרם ביסקוויטים לוטוס טחונים</li>
                    <li>100 גרם חמאה מומסת</li>
                    <li>500 מ״ל שמנת מתוקה להקצפה</li>
                    <li>1/2 כוס אבקת סוכר</li>
                    <li>1 גביע שמנת וניל</li>
                    <li>1/2 כוס ממרח לוטוס</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מערבבים ביסקוויטים עם חמאה ומהדקים לתבנית.</li>
                    <li>מקציפים שמנת עם אבקת סוכר.</li>
                    <li>מקפלים שמנת וניל וממרח לוטוס.</li>
                    <li>יוצקים מעל הבסיס ומקררים 3 שעות.</li>
                </ol>
            </div>
        </div>

        <div class="recipe-box">
            <img src="/picture/tiramisu.jpg" class="recipe-img" alt="פס טירמיסו מהיר" />

            <div class="recipe-text">
                <h3>פס טירמיסו מהיר</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>1 חבילת בישקוטים</li>
                    <li>1 כוס קפה חזק מצונן</li>
                    <li>500 גרם מסקרפונה</li>
                    <li>1/2 כוס אבקת סוכר</li>
                    <li>250 מ״ל שמנת מתוקה להקצפה</li>
                    <li>קקאו לפיזור</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>טובלים בישקוטים בקפה ומסדרים בתבנית.</li>
                    <li>מערבבים מסקרפונה, סוכר ושמנת.</li>
                    <li>מורחים שכבת קרם מעל.</li>
                    <li>חוזרים על הפעולה ומקררים שעתיים.</li>
                </ol>
            </div>
        </div>

        <div class="recipe-box">
            <img src="/picture/choco_mousse.jpg" class="recipe-img" alt="עוגת מוס שוקולד" />

            <div class="recipe-text">
                <h3>עוגת מוס שוקולד</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>200 גרם שוקולד מריר</li>
                    <li>250 מ״ל שמנת מתוקה להקצפה</li>
                    <li>3 ביצים מופרדות</li>
                    <li>1/2 כוס סוכר</li>
                    <li>1 בסיס עוגת שוקולד מוכן</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>ממיסים שוקולד ומצננים מעט.</li>
                    <li>מקציפים חלבונים עם סוכר.</li>
                    <li>מקפלים שמנת ושוקולד.</li>
                    <li>יוצקים מעל הבסיס ומקררים 4 שעות.</li>
                </ol>
            </div>
        </div>

    </div>

</asp:Content>