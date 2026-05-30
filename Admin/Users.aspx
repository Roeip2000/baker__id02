<%@ Page Title="רשימת נרשמים" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="baker_ido.Users" %>

<%-- דף ניהול זה מציג את המשתמשים הרשומים מתוך מסד הנתונים --%>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    רשימת נרשמים – Ido Bakery & Pastry
</asp:Content>
<asp:Content ID="Body1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-box">
        <h2>רשימת נרשמים לקורסים</h2>

        <%-- ה-GridView מציג את טבלת המשתמשים אחרי שקוד ה-C# טוען את הנתונים --%>
        <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="true"
            CssClass="users-grid" GridLines="None">
        </asp:GridView>
    </div>
</asp:Content>
