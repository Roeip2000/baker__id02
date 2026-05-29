<%@ Page Language="C#" MasterPageFile="~/all.Master" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    עוגת שוקולד בחושה – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    עוגת שוקולד בחושה
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="recipes-wrapper">

        <div class="recipe-box">
            <img src="/picture/chocolet.jpeg" class="recipe-img" alt="עוגת שוקולד בחושה" />

            <div class="recipe-text">
                <h3>עוגת שוקולד בחושה</h3>

                <p><b>מרכיבים:</b></p>
                <%-- טבלת מרכיבים: עמודה אחת למרכיב ועמודה אחת לכמות. class="users-grid" מעצב אותה דרך ה-CSS הקיים --%>
                <table class="users-grid" style="max-width:420px; margin:0 auto;">
                    <tr><th>מרכיב</th><th>כמות</th></tr>
                    <tr><td>ביצים</td><td>2</td></tr>
                    <tr><td>סוכר</td><td>1 כוס</td></tr>
                    <tr><td>חלב</td><td>1 כוס</td></tr>
                    <tr><td>שמן</td><td>1/2 כוס</td></tr>
                    <tr><td>קמח</td><td>1.5 כוס</td></tr>
                    <tr><td>אבקת אפייה</td><td>1 שקית</td></tr>
                    <tr><td>קקאו</td><td>3 כפות</td></tr>
                    <tr><td>מלח</td><td>קורט</td></tr>
                </table>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מערבבים ביצים וסוכר.</li>
                    <li>מוסיפים חלב ושמן.</li>
                    <li>מוסיפים קמח, אבקת אפייה, קקאו ומלח ומערבבים עד בלילה חלקה.</li>
                    <li>יוצקים לתבנית ואופים ב־170°C כ־35–45 דקות.</li>
                </ol>
            </div>
        </div>

    </div>

</asp:Content>
