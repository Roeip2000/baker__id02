<%@ Page Language="C#" MasterPageFile="~/all.Master" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    עוגיות – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    עוגיות
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="recipes-wrapper">

       
        <div class="recipe-box">
            <img src="/picture/amsterdam_cookies.jpg" class="recipe-img" />

            <div class="recipe-text">
                <h3>עוגיות אמסטרדם קלאסיות</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>200 גרם חמאה רכה</li>
                    <li>1 כוס סוכר חום</li>
                    <li>1/2 כוס סוכר לבן</li>
                    <li>2 ביצים</li>
                    <li>2 ו־1/2 כוסות קמח</li>
                    <li>1 כפית סודה לשתייה</li>
                    <li>1 כפית מלח</li>
                    <li>300 גרם שוקולד מריר קצוץ</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מערבבים חמאה וסוכרים עד קרמי.</li>
                    <li>מוסיפים ביצים אחת אחת.</li>
                    <li>מוסיפים קמח, סודה ומלח.</li>
                    <li>מקפלים שוקולד קצוץ.</li>
                    <li>יוצרים כדורים גדולים.</li>
                    <li>אופים 180°C כ־12–15 דקות (מרכז רך).</li>
                </ol>
            </div>
        </div>


        <div class="recipe-box">
            <img src="/picture/choc_chip_cookies.jpg" class="recipe-img" />

            <div class="recipe-text">
                <h3>עוגיות שוקולד צ'יפס קלאסיות</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>2 כוסות קמח</li>
                    <li>1 כוס סוכר חום</li>
                    <li>1/2 כוס סוכר לבן</li>
                    <li>1 כוס שוקולד צ'יפס</li>
                    <li>1 כוס חמאה רכה</li>
                    <li>2 ביצים</li>
                    <li>1 כפית תמצית וניל</li>
                    <li>1 כפית אבקת אפייה</li>
                    <li>1/2 כפית מלח</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מחממים תנור ל־180°C.</li>
                    <li>מערבבים חמאה, סוכר חום וסוכר לבן עד קרמי.</li>
                    <li>מוסיפים ביצים אחת אחת ווניל.</li>
                    <li>מוסיפים קמח, אבקת אפייה ומלח.</li>
                    <li>מקפלים שוקולד צ'יפס בעדינות.</li>
                    <li>יוצרים כדורים ומניחים על נייר אפייה.</li>
                    <li>אופים 10–12 דקות עד זהוב קל.</li>
                </ol>
            </div>
        </div>

       
        <div class="recipe-box">
            <img src="/picture/tahini_cookies.jpg" class="recipe-img" />

            <div class="recipe-text">
                <h3>עוגיות טחינה ביתיות</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>1 כוס טחינה גולמית</li>
                    <li>3/4 כוס סוכר</li>
                    <li>1/2 כוס שמן</li>
                    <li>1 ביצה</li>
                    <li>1 כפית תמצית וניל</li>
                    <li>1 כפית אבקת אפייה</li>
                    <li>1/4 כפית מלח</li>
                    <li>אפשר תוספת שוקולד צ'יפס או אגוזים (לא חובה)</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מחממים תנור ל־180°C.</li>
                    <li>מערבבים טחינה, סוכר ושמן עד חלק.</li>
                    <li>מוסיפים ביצה ווניל ומערבבים היטב.</li>
                    <li>מוסיפים אבקת אפייה ומלח.</li>
                    <li>יוצרים כדורים ומשטחים מעט על נייר אפייה.</li>
                    <li>אופים כ־10–12 דקות עד קצוות מזהיבים קלות.</li>
                </ol>
            </div>
        </div>

    </div>

</asp:Content>
