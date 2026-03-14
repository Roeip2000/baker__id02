<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    פרלינים – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    פרלינים
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="recipes-wrapper">

        <div style="max-width:900px; margin:20px auto 30px auto; background-color:white; padding:18px; border-radius:12px; box-shadow:0 4px 10px lightgray; text-align:center; color:dimgray;">
            בעמוד זה תוכלו למצוא מתכונים לפרלינים מיוחדים, עם הסבר על המרכיבים ואופן ההכנה.
        </div>

        <div class="recipe-box">
            <img src="/picture/21pralines_espresso.png" class="recipe-img" alt="פרלינים שוקולד מריר ואספרסו" />

            <div class="recipe-text">
                <h3>פרלינים שוקולד מריר ואספרסו</h3>

                <p><b>מרכיבים (גנאש):</b></p>
                <ul>
                    <li>150 מ"ל שמנת מתוקה</li>
                    <li>30 מ"ל אספרסו</li>
                    <li>200 גרם שוקולד מריר קצוץ</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מחממים שמנת מתוקה ואספרסו עד רתיחה קלה.</li>
                    <li>יוצקים על שוקולד קצוץ ומערבבים עד גנאש חלק.</li>
                    <li>מצננים, ממלאים תבניות פרלין ומקררים עד התקשות.</li>
                </ol>
            </div>
        </div>

        <div class="recipe-box">
            <img src="/picture/pralines_marzipan_cherries.jpg" class="recipe-img" alt="פרלינים מרציפן ודובדבנים" />

            <div class="recipe-text">
                <h3>פרלינים מרציפן ודובדבנים בציפוי שוקולד</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>250 גרם מרציפן מוכן</li>
                    <li>100 גרם דובדבנים מיובשים, קצוצים</li>
                    <li>200 גרם שוקולד מריר (לציפוי)</li>
                    <li>1 כפית שמן או חמאה (להברקה)</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מערבבים מרציפן ודובדבנים עד תערובת אחידה.</li>
                    <li>יוצרים כדורים קטנים.</li>
                    <li>ממיסים שוקולד עם מעט שמן.</li>
                    <li>טובלים כל כדור בשוקולד ומניחים להתייצבות.</li>
                </ol>
            </div>
        </div>

        <div class="recipe-box">
            <img src="/picture/coffee_pralines.jpg" class="recipe-img" alt="פרלין שוקולד מריר במילוי קרם קפה" />

            <div class="recipe-text">
                <h3>פרלין שוקולד מריר במילוי קרם קפה</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>200 גרם שוקולד חלב (למלית)</li>
                    <li>80 מ"ל שמנת מתוקה</li>
                    <li>20 גרם חמאה</li>
                    <li>3 כפות קפה מגורען איכותי</li>
                    <li>30 מ"ל ליקר שוקולד (אופציונלי)</li>
                    <li>300 גרם שוקולד מריר (לציפוי)</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מחממים שמנת וחמאה, מוסיפים קפה ומערבבים.</li>
                    <li>יוצקים על שוקולד חלב קצוץ ומערבבים לגנאש.</li>
                    <li>מוסיפים ליקר (אופציונלי) ומקררים עד סמיך.</li>
                    <li>מצפים תבניות בשוקולד מריר.</li>
                    <li>ממלאים בגנאש עד ¾ וסוגרים בשוקולד.</li>
                    <li>מקררים עד התקשות וחולצים.</li>
                </ol>
            </div>
        </div>

    </div>

</asp:Content>