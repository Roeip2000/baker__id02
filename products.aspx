<%@ Page Language="C#" MasterPageFile="~/all.Master" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    מתכונים – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    שני מתכונים פשוטים
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="intro-box">
        <p>
            בעמוד זה מופיעים שני מתכונים קלים וברורים:
            עוגת שוקולד בחושה ועוגיות שוקולד צ'יפס.
        </p>
    </div>

    <div class="topics-grid">

        <div class="topic-box">
            <div class="recipe-topic-content">
                <a href="/Recipes/SimpleMixCakes.aspx" class="recipe-topic-link">
                    עוגת שוקולד בחושה
                </a>
            </div>
        </div>

        <div class="topic-box">
            <div class="recipe-topic-content">
                <a href="/Recipes/Cookies.aspx" class="recipe-topic-link">
                    עוגיות שוקולד צ'יפס
                </a>
            </div>
        </div>

    </div>

    <div class="intro-box">
        <p>
            כל מתכון כולל רשימת מרכיבים קצרה ושלבי הכנה לפי הסדר.
        </p>
    </div>

</asp:Content>
