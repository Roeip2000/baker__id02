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
                <%-- טבלת מרכיבים פשוטה --%>
                <table class="users-grid" style="max-width:420px; margin:0 auto;">
                    <tr><th>מרכיב</th><th>כמות</th></tr>
                    <tr><td>קמח</td><td>2 כוסות</td></tr>
                    <tr><td>סוכר חום</td><td>1 כוס</td></tr>
                    <tr><td>סוכר לבן</td><td>1/2 כוס</td></tr>
                    <tr><td>שוקולד צ'יפס</td><td>1 כוס</td></tr>
                    <tr><td>חמאה רכה</td><td>1 כוס</td></tr>
                    <tr><td>ביצים</td><td>2</td></tr>
                    <tr><td>תמצית וניל</td><td>1 כפית</td></tr>
                    <tr><td>אבקת אפייה</td><td>1 כפית</td></tr>
                    <tr><td>מלח</td><td>1/2 כפית</td></tr>
                </table>

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
