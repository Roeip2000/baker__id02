<%@ Page Title="רשימת נרשמים" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="baker_ido.Users" %>

<%-- This admin page shows the registered users from the database --%>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    רשימת נרשמים – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    ניהול
</asp:Content>

<asp:Content ID="Body1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-box admin-box">
        <h2>רשימת נרשמים לקורסים</h2>
        
        <%-- GridView displays the users table after the C# code loads the data --%>
        <div class="table-wrapper">
            <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="true"
                CssClass="users-grid"
                GridLines="Both" BorderColor="Gray">
                
                <HeaderStyle BackColor="Brown" ForeColor="White" Font-Bold="true" Height="40px" />
                <RowStyle BackColor="White" Height="35px" />
                <AlternatingRowStyle BackColor="Beige" />
            </asp:GridView>
        </div>

        <br />
        <div class="admin-count">
            מספר נרשמים: <strong><asp:Label ID="lblCount" runat="server" /></strong>
        </div>
    </div>
</asp:Content>
