<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    מתכונים – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    ספר המתכונים שלי
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="intro-box">
        <p>
            עמוד המתכונים נועד לאפשר לכם להיחשף למתכונים קלים, ברורים וטעימים שתוכלו להכין בבית.
            כל מתכון כולל רשימת מרכיבים ברורה, שלבי הכנה מסודרים וטיפים חשובים להצלחה.
            המתכונים מתאימים למתחילים ולמנוסים וכוללים מגוון תחומים מעולם הקונדיטוריה.
        </p>
    </div>
 
<div style="max-width:900px; margin:20px auto 30px auto; background-color:white; padding:22px; border-radius:14px; box-shadow:0 6px 14px lightgray; text-align:center; border:2px solid cornflowerblue;">
    <span style="font-size:32px; font-weight:bold; color:steelblue; letter-spacing:0.5px;">
        קטגוריות המתכונים
    </span>
</div>

    <div class="topics-grid">

        <a href="/Recipes/SimpleMixCakes.aspx" class="topic-box">
            <div class="topic-title">עוגות בחושות</div>
        </a>

        <a href="/Recipes/CreamCakes.aspx" class="topic-box">
            <div class="topic-title">עוגות קרם</div>
        </a>

        <a href="/Recipes/SweetYeastPastries.aspx" class="topic-box">
            <div class="topic-title">מאפי שמרים</div>
        </a>

        <a href="/Recipes/PersonalDesserts.aspx" class="topic-box">
            <div class="topic-title">קינוחים אישיים</div>
        </a>

        <a href="/Recipes/Cookies.aspx" class="topic-box">
            <div class="topic-title">עוגיות</div>
        </a>

        <a href="/Recipes/EclairsAndChoux.aspx" class="topic-box">
            <div class="topic-title">אקלרים ופחזניות</div>
        </a>

        <a href="/Recipes/Macarons.aspx" class="topic-box">
            <div class="topic-title">מקרונים</div>
        </a>

        <a href="/Recipes/Pralines.aspx" class="topic-box">
            <div class="topic-title">פרלינים</div>
        </a>

    </div>

    <div class="intro-box">
        <p>
            בעמודים הבאים נרחיב על כל קטגוריה ונציג מתכונים מלאים ומפורטים.
            המטרה שלי היא לתת לכם גישה לעולם רחב של טכניקות, טעמים ורעיונות
            שתוכלו ליישם בקלות במטבח הביתי.
        </p>
    </div>

</asp:Content>