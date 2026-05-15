<%@ Page Language="C#" MasterPageFile="~/all.Master" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    מתכונים – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    ספר המתכונים שלי
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="intro-box">
        <p>
            עמוד המתכונים נועד לאפשר לכם להיחשף למתכונים קלים, ברורים וטעימים
            שתוכלו להכין בבית. כל מתכון כולל רשימת מרכיבים ברורה, שלבי הכנה
            מסודרים וטיפים חשובים להצלחה.
        </p>
    </div>

    <div class="topics-grid">

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="/Recipes/SimpleMixCakes.aspx" style="color: black; text-decoration: none; font-size: 24px; font-weight: bold;">
                    עוגות בחושות 🍰
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="/Recipes/Cookies.aspx" style="color: black; text-decoration: none; font-size: 24px; font-weight: bold;">
                    עוגיות 🍪
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="/Recipes/CreamCakes.aspx" style="color: black; text-decoration: none; font-size: 24px; font-weight: bold;">
                    עוגות קרם 🎂
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="/Recipes/PersonalDesserts.aspx" style="color: black; text-decoration: none; font-size: 24px; font-weight: bold;">
                    קינוחים אישיים 🍮
                </a>
            </div>
        </div>

    </div>

    <div class="intro-box">
        <p>
            כל המתכונים כוללים רשימת מרכיבים מדויקת והוראות הכנה שלב אחר שלב.
            המטרה היא לתת לכם גישה לעולם רחב של טעמים שתוכלו ליישם בקלות במטבח הביתי.
        </p>
    </div>

</asp:Content>