<%-- שורת ההגדרה: מקשרת למאסטר פייג' ומגדירה שהקוד ירוץ בתוך הדף למניעת שגיאות קבצים חסרים --%>
<%@ Page Title="בקרוב" Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" %>

<script runat="server">
    // פונקציה שמופעלת בלחיצה על הכפתור
    protected void btnBack_Click(object sender, EventArgs e)
    {
        // Response.Redirect - פקודה להעברת המשתמש לדף אחר. הסימן ~ מייצג את תיקיית השורש של האתר
        Response.Redirect("~/Default.aspx");
    }
</script>

<%-- Content1: מגדיר את הכותרת שמופיעה בלשונית של הדפדפן --%>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    דף בבנייה - Ido Bakery
</asp:Content>

<%-- Content2: כותרת הדף (Header) שמופיעה בראש העמוד --%>
<asp:Content ID="Content2" ContentPlaceHolderID="PageHeader" runat="server">
    עמוד בבנייה
</asp:Content>

<%-- Content3: התוכן המרכזי של הדף --%>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center; padding: 40px; color: Black; font-family: sans-serif;">
        
        <h2 style="font-size: 24px; margin-bottom: 20px;">אנחנו עובדים קשה על התוכן</h2>
        
        <%-- TextBox במצב MultiLine עם ReadOnly="true": מציג הודעה שלא ניתן לשנות, נראה כמו מסמך רשמי --%>
        <asp:TextBox ID="txtStatus" runat="server" TextMode="MultiLine" Rows="5" ReadOnly="true" 
            style="width: 80%; max-width: 500px; padding: 15px; border: 1px solid Gray; border-radius: 10px; 
            background-color: WhiteSmoke; font-family: sans-serif; font-size: 16px; color: Black; text-align: center; overflow: hidden;">
דף זה נמצא כרגע בתהליך פיתוח ועיצוב. 
אנו משקיעים מאמצים רבים כדי להעלות את התוכן המושלם עבורכם.
נשתדל שהכל יעלה לאתר עד תחילת 2027.
        </asp:TextBox>

        <div style="margin-top: 30px;">
            <%-- asp:Button - פקד שרת שמבצע Postback ומפעיל את הפונקציה btnBack_Click --%>
            <asp:Button ID="btnBack" runat="server" Text="חזרה לדף הבית" OnClick="btnBack_Click"
                style="background-color: DodgerBlue; color: White; padding: 12px 30px; border: None; border-radius: 25px; font-weight: bold; cursor: pointer;" />
        </div>
        
    </div>
</asp:Content>