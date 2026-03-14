<%@ Page Language="C#" MasterPageFile="~/all.master" %>

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
            מסודרים וטיפים חשובים להצלחה. המתכונים מתאימים למתחילים ולמנוסים
            וכוללים מגוון תחומים מעולם הקונדיטוריה.
        </p>
    </div>

    <div class="topics-grid">

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="SimpleMixCakes.aspx" style="color: black; text-decoration: none; font-size: 24px;">
                    Simple Mix Cakes
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="CreamCakes.aspx" style="color: black; text-decoration: none; font-size: 24px;">
                    Cream Cakes
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="SweetYeastPastries.aspx" style="color: black; text-decoration: none; font-size: 24px;">
                    Sweet Yeast Pastries
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="PersonalDesserts.aspx" style="color: black; text-decoration: none; font-size: 24px;">
                    Personal Desserts
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="Cookies.aspx" style="color: black; text-decoration: none; font-size: 24px;">
                    Cookies
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="EclairsAndChoux.aspx" style="color: black; text-decoration: none; font-size: 24px;">
                    Eclairs &amp; Choux
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="Macarons.aspx" style="color: black; text-decoration: none; font-size: 24px;">
                    Macarons
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div style="text-align: center; margin: 20px 0;">
                <a href="Pralines.aspx" style="color: black; text-decoration: none; font-size: 24px;">
                    Pralines
                </a>
            </div>
        </div>

    </div>

    <div class="intro-box">
        <p>
            בעמודים הבאים נרחיב על כל קטגוריה ונציג מתכונים מלאים ומפורטים.
            המטרה שלי היא לתת לכם גישה לעולם רחב של טכניקות, טעמים ורעיונות
            שתוכלו ליישם בקלות במטבח הביתי.
        </p>
    </div>

</asp:Content>
