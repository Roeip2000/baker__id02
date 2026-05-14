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

        <%-- מתכון פעיל 1 --%>
        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="/Recipes/SimpleMixCakes.aspx" style="color: black; text-decoration: none; font-size: 24px; font-weight: bold;">
                    עוגות בחושות 🍰
                </a>
            </div>
        </div>

        <%-- מתכון פעיל 2 --%>
        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="/Recipes/Macarons.aspx" style="color: black; text-decoration: none; font-size: 24px; font-weight: bold;">
                    מקרונים 🍭
                </a>
            </div>
        </div>

        <%-- כל שאר המתכונים נשלחים לדף בקרוב --%>
        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="/CmingSoon.aspx" style="color: Gray; text-decoration: none; font-size: 22px;">
                    עוגות מוס וקרם
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="/CmingSoon.aspx" style="color: Gray; text-decoration: none; font-size: 22px;">
                    מאפי שמרים
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="/CmingSoon.aspx" style="color: Gray; text-decoration: none; font-size: 22px;">
                    קינוחים אישיים
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="/CmingSoon.aspx" style="color: Gray; text-decoration: none; font-size: 22px;">
                    עוגיות
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="/CmingSoon.aspx" style="color: Gray; text-decoration: none; font-size: 22px;">
                    אקלרים ופחזניות
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="/CmingSoon.aspx" style="color: Gray; text-decoration: none; font-size: 22px;">
                    פרלינים
                </a>
            </div>
        </div>

    </div>

    <div class="intro-box">
        <p>
            בקרוב נעדכן את שאר הקטגוריות עם מתכונים חדשים ומפתיעים. 
            המטרה היא לתת לכם גישה לעולם רחב של טעמים שתוכלו ליישם בקלות במטבח הביתי.
        </p>
    </div>

</asp:Content>