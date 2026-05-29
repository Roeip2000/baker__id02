<%@ Page Language="C#" MasterPageFile="~/all.Master" %>

<%-- This page links to the recipe topic pages --%>
<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    מתכונים – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    שני מתכונים פשוטים
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        /* Small page-level style used only on this page */
        .products-note {
            text-align: center;
        }
    </style>

    <div class="intro-box products-note">
        <p>
            בעמוד זה מופיעים שני מתכונים קלים וברורים:
            עוגת שוקולד בחושה ועוגיות שוקולד צ'יפס.
        </p>
    </div>

    <%-- These cards link to the two recipe pages --%>
    <div class="topics-grid">

        <div class="topic-box">
            <img src="/picture/chocolet.jpeg" alt="עוגת שוקולד בחושה" />
            <div class="recipe-topic-content">
                <a href="/Recipes/SimpleMixCakes.aspx" class="recipe-topic-link">
                    עוגת שוקולד בחושה
                </a>
            </div>
        </div>

        <div class="topic-box">
            <img src="/picture/choc_chip_cookies.jpg" alt="עוגיות שוקולד צ'יפס" />
            <div class="recipe-topic-content">
                <a href="/Recipes/Cookies.aspx" class="recipe-topic-link">
                    עוגיות שוקולד צ'יפס
                </a>
            </div>
        </div>

    </div>

    <div class="intro-box products-note">
        <p>
            כל מתכון כולל רשימת מרכיבים קצרה ושלבי הכנה לפי הסדר.
        </p>
    </div>

</asp:Content>
