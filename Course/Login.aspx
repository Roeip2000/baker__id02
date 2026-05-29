<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login" %>

<%-- דף זה מאפשר למשתמש קיים להתחבר --%>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    התחברות – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    התחברות לאזור הקורס
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <%-- טופס זה שולח את שם המשתמש והסיסמה אל Login.aspx.cs --%>
    <div class="form-box">
        <h2>התחברות</h2>

        <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>

        <table>
            <tr>
                <td>שם משתמש:</td>
                <td>
                    <%-- תיבת טקסט זו מקבלת את שם המשתמש מהמשתמש --%>
                    <%-- ClientIDMode="Static" שומר על ה-id פשוט כדי שה-JavaScript ימצא את השדה --%>
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="input-box" ClientIDMode="Static" />
                    <%-- ולידטור זה יוצר בדיקה פשוטה בצד הלקוח לשם משתמש ריק --%>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserName"
                        ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>סיסמה:</td>
                <td>
                    <%-- מצב סיסמה מסתיר את הסיסמה בזמן שהמשתמש מקליד --%>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="input-box" ClientIDMode="Static" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                        ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="form-actions">
                    <%-- כפתור זה מריץ את btnLogin_Click בקובץ Login.aspx.cs --%>
                    <%-- OnClientClick מריץ את בדיקת ה-JavaScript לפני השליחה; אם תחזיר false הטופס לא יישלח --%>
                    <asp:Button ID="btnLogin" runat="server" Text="התחבר" CssClass="main-button" OnClientClick="return validateLogin();" OnClick="btnLogin_Click" />
                </td>
            </tr>
        </table>
    </div>

<%-- בדיקת טופס בצד הלקוח: בודקת ששם המשתמש והסיסמה אינם ריקים לפני השליחה --%>
<script type="text/javascript">
    function validateLogin() {
        // קוראים את הערכים מהשדות לפי ה-id הפשוט
        var userName = document.getElementById("txtUserName").value;
        var password = document.getElementById("txtPassword").value;

        // אם שם המשתמש ריק - מציגים הודעה ועוצרים את השליחה
        if (userName == "") {
            alert("יש להזין שם משתמש");
            return false;
        }

        // אם הסיסמה ריקה - מציגים הודעה ועוצרים את השליחה
        if (password == "") {
            alert("יש להזין סיסמה");
            return false;
        }

        // הכל תקין - מאפשרים את שליחת הטופס
        return true;
    }
</script>

</asp:Content>