<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    עוגות בחושות – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    עוגות בחושות
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="recipes-wrapper">

        <div style="max-width:900px; margin:20px auto 30px auto; background-color:white; padding:18px; border-radius:12px; box-shadow:0 4px 10px lightgray; text-align:center; color:dimgray;">
            בעמוד זה תוכלו למצוא מתכונים לעוגות בחושות אהובות, עם מרכיבים ואופן הכנה ברור.
        </div>

        <div class="recipe-box">
            <img src="/picture/carot.jpeg" class="recipe-img" alt="עוגת גזר בחושה" />

            <div class="recipe-text">
                <h3>עוגת גזר בחושה</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>3 ביצים</li>
                    <li>1 כוס סוכר</li>
                    <li>1/2 כוס שמן</li>
                    <li>1 כוס גזר מגורד דק</li>
                    <li>2 כוסות קמח</li>
                    <li>1 שקית אבקת אפייה</li>
                    <li>1 כפית קינמון</li>
                    <li>קורט מלח</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>טורפים ביצים וסוכר עד תערובת בהירה.</li>
                    <li>מוסיפים שמן וגזר ומערבבים.</li>
                    <li>מוסיפים קמח, אבקת אפייה, קינמון ומלח ומערבבים עד אחיד.</li>
                    <li>יוצקים לתבנית ואופים ב־170°C כ־40 דקות עד שקיסם יוצא יבש.</li>
                </ol>
            </div>
        </div>

        <div class="recipe-box">
            <img src="/picture/chocolet.jpeg" class="recipe-img" alt="עוגת שוקולד בחושה" />

            <div class="recipe-text">
                <h3>עוגת שוקולד בחושה</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>2 ביצים</li>
                    <li>1 כוס סוכר</li>
                    <li>1 כוס חלב</li>
                    <li>1/2 כוס שמן</li>
                    <li>1 ו־1/2 כוס קמח</li>
                    <li>1 שקית אבקת אפייה</li>
                    <li>3 כפות קקאו</li>
                    <li>קורט מלח</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מערבבים ביצים וסוכר.</li>
                    <li>מוסיפים חלב ושמן.</li>
                    <li>מוסיפים קמח, אבקת אפייה, קקאו ומלח ומערבבים עד בלילה חלקה.</li>
                    <li>יוצקים לתבנית ואופים ב־170°C כ־35–45 דקות.</li>
                </ol>
            </div>
        </div>

        <div class="recipe-box">
            <img src="/picture/vanil.jpg" class="recipe-img" alt="עוגת וניל בחושה" />

            <div class="recipe-text">
                <h3>עוגת וניל בחושה</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>3 ביצים</li>
                    <li>1 כוס סוכר</li>
                    <li>1 גביע יוגורט</li>
                    <li>1/2 כוס שמן</li>
                    <li>2 כוסות קמח</li>
                    <li>1 שקית אבקת אפייה</li>
                    <li>1 כפית תמצית וניל</li>
                    <li>קורט מלח</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>טורפים ביצים וסוכר עד תערובת בהירה.</li>
                    <li>מוסיפים יוגורט, שמן ותמצית וניל ומערבבים.</li>
                    <li>מוסיפים קמח, אבקת אפייה ומלח ומערבבים עד אחיד.</li>
                    <li>יוצקים לתבנית ואופים ב־170°C כ־40 דקות עד שקיסם יוצא יבש.</li>
                </ol>
            </div>
        </div>

    </div>

</asp:Content>