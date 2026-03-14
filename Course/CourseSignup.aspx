<%@ Page Title="" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="CourseSignup.aspx.cs" Inherits="baker__id02.CourseSignup" %>

<asp:Content ID="cTitle" ContentPlaceHolderID="TitleContent" runat="server">
    הרשמה – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="cHeader" ContentPlaceHolderID="PageHeader" runat="server">
    הרשמה לקורסי אפייה
</asp:Content>

<asp:Content ID="c1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color:white; padding:30px; border-radius:15px; width:650px; margin:auto; text-align:right; direction:rtl; border:2px solid saddlebrown; font-family:Arial; box-shadow:0 6px 16px lightgray;">
        <h2 style="color:saddlebrown; text-align:center;">טופס הרשמה לקורסי אפייה</h2>
        <p style="text-align:center; color:dimgray; margin-top:5px; margin-bottom:15px;">
            מלאו את פרטיכם האישיים כדי להצטרף לקורס.
        </p>
        <hr style="border:1px solid saddlebrown;" />

        <table style="width:100%; border-spacing:10px;">
            <tr><td><b>ת"ז / שם משתמש:</b></td><td><asp:TextBox ID="uName" runat="server" Width="100%" /></td></tr>
            <tr><td><b>שם פרטי:</b></td><td><asp:TextBox ID="fName" runat="server" Width="100%" /></td></tr>
            <tr><td><b>שם משפחה:</b></td><td><asp:TextBox ID="lName" runat="server" Width="100%" /></td></tr>
            <tr><td><b>אימייל:</b></td><td><asp:TextBox ID="email" runat="server" Width="100%" TextMode="Email" /></td></tr>
            <tr><td><b>שנת לידה:</b></td><td><asp:TextBox ID="yearBorn" runat="server" Width="100%" TextMode="Number" /></td></tr>
    
            <tr>
                <td><b>טלפון:</b></td>
                <td>
                    <asp:DropDownList ID="prefix" runat="server">
                        <asp:ListItem>050</asp:ListItem><asp:ListItem>052</asp:ListItem><asp:ListItem>054</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="phone" runat="server" MaxLength="7" Width="60%" />
                </td>
            </tr>
            <tr><td><b>עיר:</b></td><td><asp:TextBox ID="city" runat="server" Width="100%" /></td></tr>
            <tr><td><b>סיסמה:</b></td><td><asp:TextBox ID="pw" runat="server" Width="100%" TextMode="Password" /></td></tr>
            <tr>
                <td colspan="2">
                    <b>תחומי עניין:</b><br />
                    <asp:CheckBox ID="hob1" runat="server" Text=" שוקולד " /> 
                    <asp:CheckBox ID="hob2" runat="server" Text=" שמרים " /> 
                    <asp:CheckBox ID="hob3" runat="server" Text=" מוסים " />
                    <asp:CheckBox ID="hob4" runat="server" Text=" לחמים " />
                    <asp:CheckBox ID="hob5" runat="server" Text=" טבעוני " />
                </td>
            </tr>
        </table>

        <div style="text-align:center; margin-top:20px;">
            <asp:Button ID="btnSubmit" runat="server" Text="בצע הרשמה" OnClick="btnSubmit_Click" 
                style="background-color:#8B4513; color:white; font-weight:bold; padding:10px 30px; border-radius:5px; cursor:pointer;" />
            <br /><br />
            <asp:Label ID="lblMsg" runat="server" />
        </div>
    </div>
</asp:Content>