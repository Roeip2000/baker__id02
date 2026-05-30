<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" %>
<%-- גישה למתכונים רק למשתמשים מחוברים --%>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uName"] == null)
        {
            Response.Redirect("~/Course/Login.aspx");
        }
    }
</script>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    עוגת שוקולד בחושה – Ido Bakery & Pastry
</asp:Content>
<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

        <div class="recipe-box">

            <div class="recipe-text">

                <h3>עוגת שוקולד בחושה</h3>

                <%-- התמונה מתחת לכותרת המתכון --%>
                <img src="/picture/chocolet.jpeg" class="recipe-img" alt="עוגת שוקולד בחושה" />
                <p class="recipe-intro">
                    עוגת שוקולד עשירה וקלה להכנה – מערבבים הכול בקערה אחת ואופים, בלי מיקסר ובלי שלבים מסובכים.
                    מושלמת כשרוצים משהו מתוק וביתי מהר.
                </p>

                <p><b>מרכיבים:</b></p>
                <table class="recipe-ingredients">
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

                <%-- סרטון הדגמה בסוף המתכון --%>
                <div class="recipe-video">
                    <h3>סרטון הכנה</h3>
                    <iframe src="https://www.youtube.com/embed/YO1EHTfIo3E"
                            title="סרטון הכנה – עוגת שוקולד בחושה"
                            allowfullscreen></iframe>
                </div>

            </div>
        </div>

</asp:Content>
