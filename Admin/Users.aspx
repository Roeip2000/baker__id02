<%@ Page Title="רשימת נרשמים" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="baker_ido.Users" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    רשימת נרשמים – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    ניהול מערכת
</asp:Content>

<asp:Content ID="Body1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-box" style="max-width: 1000px; margin: 0 auto; text-align: center;">
        <h2 style="color: Black;">רשימת נרשמים לקורסים</h2>
        
        <%-- שימוש ב-GridView במקום Literal כדי למנוע בלאגן --%>
        <div style="overflow-x: auto; background-color: White; border-radius: 10px; padding: 10px;">
            <asp:GridView ID="gvUsers" runat="server" AutoGenerateColumns="true" 
                style="width: 100%; border-collapse: collapse; text-align: center; color: Black;"
                GridLines="Both" BorderColor="Gray">
                
                <HeaderStyle BackColor="DodgerBlue" ForeColor="White" Font-Bold="true" Height="40px" />
                <RowStyle BackColor="WhiteSmoke" Height="35px" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </div>

        <br />
        <div style="font-size: 16px; color: Black;">
            מספר נרשמים במערכת: <strong><asp:Label ID="lblCount" runat="server" /></strong>
        </div>
    </div>
</asp:Content>