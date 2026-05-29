<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="CourseSignup.aspx.cs" Inherits="CourseSignup" %>

<%-- דף זה מאפשר למשתמש חדש להירשם לקורס אפייה --%>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    טופס הרשמה לקורס – Ido Bakery & Pastry
</asp:Content>
<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

<%-- טופס זה אוסף את פרטי המשתמש ושולח אותם לקוד ההרשמה ב-C# --%>
<div class="form-box">

    <h2>הרשמה לקורסים</h2>

    <asp:Label ID="lblMsg" runat="server" CssClass="msg-text"></asp:Label>

    <table class="form-table">

        <tr>
            <td>שם משתמש:</td>
            <td>
                <%-- ClientIDMode="Static" שומר על ה-id פשוט כדי שה-JavaScript ימצא את השדה --%>
                <asp:TextBox ID="txtUserName" runat="server" ClientIDMode="Static" CssClass="input-box" />
                <%-- הוולידטור מוודא שהשדה לא נשאר ריק --%>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserName"
                    ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td>סיסמה:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ClientIDMode="Static" CssClass="input-box" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td>שם פרטי:</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="input-box" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName"
                    ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td>מגדר:</td>
            <td>
                <%-- רשימה נפתחת נותנת למשתמש לבחור מתוך אפשרויות קבועות --%>
                <asp:DropDownList ID="ddlGender" runat="server" CssClass="input-box">
                    <asp:ListItem Value="male">זכר</asp:ListItem>
                    <asp:ListItem Value="female">נקבה</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td colspan="2" class="form-actions">
                <%-- כפתור זה מריץ את btnSubmit_Click בקובץ CourseSignup.aspx.cs --%>
                <%-- OnClientClick מריץ את בדיקת ה-JavaScript לפני השליחה; אם תחזיר false הטופס לא יישלח --%>
                <asp:Button ID="btnSubmit" runat="server"
                    Text="שלח הרשמה"
                    CssClass="main-button"
                    OnClientClick="return validateSignup();"
                    OnClick="btnSubmit_Click" />
            </td>
        </tr>

    </table>

</div>

<%-- בדיקת טופס בצד הלקוח: בודקת ששם המשתמש והסיסמה אינם ריקים לפני השליחה --%>
<script type="text/javascript">
    function validateSignup() {
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
