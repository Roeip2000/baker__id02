<%@ Page Language="C#" MasterPageFile="~/all.Master" %>

<%-- דף תוכן זה מסביר מי בנה את האתר ומה הוא כולל --%>
<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    אודות עידו – קונדיטוריה
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    אודות עידו
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="text-box">

        <h1>דף היכרות – עידו</h1>

        <%-- תמונה זו גורמת לדף "אודות" להיראות כמו דף נושא אמיתי --%>
        <img src="/picture/WhatsApp Image 2025-11-24 at 21.58.35.jpeg" alt="תמונה של עידו" class="main-image" />

        <h2>אודות</h2>
        <p>
            שמי עידו ואני אוהב לאפות.
            באתר הזה אני מציג מתכונים פשוטים, תמונות וטופס הרשמה לקורס.
            בחרתי בנושא הזה כי אני נהנה להכין קינוחים וללמוד דברים חדשים במטבח.
        </p>

        <h2>מה יש באתר?</h2>
        <p>
            דף ראשי עם הסבר קצר על האתר.<br />
            דף מתכונים עם עוגה ועוגיות.<br />
            טופס הרשמה לקורס אפייה.<br />
            אזור קורס למשתמשים מחוברים.
        </p>

        <h2>למה בחרתי בנושא?</h2>
        <p>
            אפייה היא נושא שמחבר בין יצירתיות, דיוק וסבלנות.
            דרך האתר אפשר לראות איך בניתי דפים, טפסים, התחברות וניהול משתמשים.
        </p>

        <a href="/main.aspx">לחזור לדף הראשי</a>

    </div>

</asp:Content>
