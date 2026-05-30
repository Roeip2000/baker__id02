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
    עוגיות שוקולד צ'יפס – Ido Bakery & Pastry
</asp:Content>
<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

        <div class="recipe-box">

            <div class="recipe-text">

                <h3>עוגיות שוקולד צ'יפס קלאסיות</h3>

                <%-- התמונה מתחת לכותרת המתכון --%>
                <img src="/picture/choc_chip_cookies.jpg" class="recipe-img" alt="עוגיות שוקולד צ'יפס" />
                <p class="recipe-intro">
                    עוגיות קלאסיות עם שוליים פריכים ומרכז רך ומלא שוקולד – מתכון פשוט וזריז שמתאים גם למתחילים,
                    ויוצא ממנו כ־20 עוגיות.
                </p>

                <p><b>מרכיבים:</b></p>
                <table class="recipe-ingredients">
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

                <%-- סרטון הדגמה בסוף המתכון --%>
                <div class="recipe-video">
                    <h3>סרטון הכנה</h3>
                    <iframe src="https://www.youtube.com/embed/CqsRGwPsJJw"
                            title="סרטון הכנה – עוגיות שוקולד צ'יפס"
                            allowfullscreen></iframe>
                </div>

            </div>
        </div>

</asp:Content>
