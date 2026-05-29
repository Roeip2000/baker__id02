<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" CodeBehind="CourseSignup.aspx.cs" Inherits="CourseSignup" %>

<%-- דף זה מאפשר למשתמש חדש להירשם לקורס אפייה --%>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    טופס הרשמה לקורס – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    טופס הרשמה לקורס
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

<%-- טופס זה אוסף את פרטי המשתמש ושולח אותם לקוד ההרשמה ב-C# --%>
<div class="form-box">

    <h2>הרשמה לקורסים</h2>

    <asp:Label ID="lblMsg" runat="server" CssClass="msg-text"></asp:Label>

    <table class="form-table">

        <%-- פקדי תיבת הטקסט אוספים את פרטי המשתמש העיקריים --%>

        <tr>
            <td>שם משתמש:</td>
            <td>
                <%-- ClientIDMode="Static" שומר על ה-id פשוט כדי שה-JavaScript ימצא את השדה --%>
                <asp:TextBox ID="txtUserName" runat="server" ClientIDMode="Static" />
                <%-- הוולידטורים מוודאים ששדות החובה מולאו לפני שהטופס נשמר --%>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtUserName"
                    ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td>סיסמה:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ClientIDMode="Static" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword"
                    ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td>שם פרטי:</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtFirstName"
                    ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td>שם משפחה:</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLastName"
                    ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td>אימייל:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td>שנת לידה:</td>
            <td>
                <asp:TextBox ID="txtYearBorn" runat="server" TextMode="Number" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtYearBorn"
                    ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td>מגדר:</td>
            <td>
                <%-- רשימה נפתחת נותנת למשתמש אפשרויות קבועות במקום טקסט חופשי --%>
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem Value="male">זכר</asp:ListItem>
                    <asp:ListItem Value="female">נקבה</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>טלפון:</td>
            <td>
                <asp:DropDownList ID="ddlPrefix" runat="server">
                    <asp:ListItem>050</asp:ListItem>
                    <asp:ListItem>052</asp:ListItem>
                    <asp:ListItem>054</asp:ListItem>
                </asp:DropDownList>
                -
                <asp:TextBox ID="txtPhone" runat="server" MaxLength="7" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPhone"
                    ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td>עיר:</td>
            <td>
                <asp:TextBox ID="txtCity" runat="server" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCity"
                    ErrorMessage="שדה חובה" ForeColor="Red" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td>בחר קורס:</td>
            <td>
                <%-- רשימה נפתחת זו מאפשרת למשתמש לבחור לאיזה קורס להירשם --%>
                <asp:DropDownList ID="ddlCourse" runat="server">
                    <asp:ListItem Value="">בחר קורס</asp:ListItem>
                    <asp:ListItem Value="קורס קינוחים אישיים">קורס קינוחים אישיים</asp:ListItem>
                    <asp:ListItem Value="קורס קונדיטוריה למתחילים">קורס קונדיטוריה למתחילים</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlCourse"
                    InitialValue="" ErrorMessage="בחר קורס" ForeColor="Red" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td>הערות:</td>
            <td><asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Rows="4" /></td>
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
