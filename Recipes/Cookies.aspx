<%@ Page Language="C#" MasterPageFile="~/all.Master" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    עוגיות שוקולד צ'יפס – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    עוגיות שוקולד צ'יפס
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="recipes-wrapper">

        <div class="recipe-box">
            <img src="/picture/choc_chip_cookies.jpg" class="recipe-img" alt="עוגיות שוקולד צ'יפס" />

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

    </div>

</asp:Content>
