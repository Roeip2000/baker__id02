<%@ Page Title="ניהול משתמשים" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="baker__id02.Users" %>

<asp:Content ID="cTitle" ContentPlaceHolderID="TitleContent" runat="server">
    ניהול משתמשים – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="cHeader" ContentPlaceHolderID="PageHeader" runat="server">
    רשימת לקוחות רשומים
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align:center; direction:rtl; font-family:Arial; padding:30px;">

        <div style="background-color:white; max-width:1000px; margin:auto; padding:30px; border-radius:18px; box-shadow:0 6px 18px lightgray; border:1px solid lightgray;">

            <h2 style="color:steelblue; margin-top:0; margin-bottom:10px;">
                רשימת הלקוחות הרשומים
            </h2>

            <p style="color:dimgray; margin-top:0; margin-bottom:25px; font-size:16px;">
                כאן ניתן לצפות בכל המשתמשים שנרשמו למערכת.
            </p>

            <div style="overflow-x:auto; width:100%; margin:auto; background-color:white; border:1px solid lightgray; border-radius:12px; box-shadow:0 4px 12px whitesmoke; padding:10px;">
                <%= usersTableHtml %>
            </div>

            <div style="margin-top:25px;">
                <div style="background-color:aliceblue; display:inline-block; padding:14px 28px; border:1px solid lightblue; border-radius:14px; font-size:18px; box-shadow:0 4px 10px whitesmoke;">
                    <b style="color:steelblue;">סה"כ לקוחות במערכת:</b>
                    <span style="color:royalblue; font-weight:bold;"><%= usersCount %></span>
                </div>
            </div>

        </div>

    </div>
</asp:Content>