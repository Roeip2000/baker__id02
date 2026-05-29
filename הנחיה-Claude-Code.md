# הנחיה ל‑Claude Code — התאמת פרויקט הגמר "Ido Bakery & Pastry" לדרישות (כיתה י')

> **איך משתמשים בקובץ הזה:** פותחים טרמינל בתיקיית הפרויקט, מריצים `claude`, ומדביקים את כל התוכן של הקובץ הזה כהודעה ראשונה. Claude Code יבצע את השינויים, יבנה ויבדוק. אפשר גם לבקש ממנו "תתחיל ממשימה 1".

---

## 1. רקע

זהו פרויקט גמר בתכנות באינטרנט של תלמיד כיתה י' בישראל.
- **טכנולוגיה:** ASP.NET **WebForms**, C#, ‎.NET Framework 4.8.
- **שפה:** עברית, כיוון RTL.
- **מסד נתונים:** SQL Server LocalDB, קובץ `App_Data/Database1.mdf`, טבלה `Users`.
- **מבנה:** דף Master משותף (`all.Master`), דפי תוכן ציבוריים, אזור קורס למחוברים, ואזור ניהול.

**המטרה שלך:** לסגור את הפערים מול מחוון המורה (סעיף 3), לתקן באג קטן, ולהוסיף שתי הוספות קלות — **בלי לשבור** מה שכבר עובד, ותוך **שמירה על פשטות מרבית** (זה פרויקט של כיתה י', לא צריך over‑engineering).

---

## 2. עקרונות עבודה (חשוב!)

1. **פשטות מעל הכול.** מינימום שינויים, קוד קריא, מתאים לרמת כיתה י'. אל תוסיף ספריות/פריימוורקים חדשים.
2. **אל תשבור מה שעובד.** ההתחברות, ההרשמה, אזור הניהול ומסד הנתונים פועלים — שמור עליהם.
3. **שמור על אבטחת השאילתות הקיימת.** כל הגישה ל‑DB משתמשת בפרמטרים (`AddWithValue`). אל תחזור לשרשור מחרוזות.
4. **אין צורך ב‑UPDATE/DELETE, ב‑Application, או ב‑Master נוסף** (לפי המחוון). אל תוסיף אותם.
5. **שמור על העיצוב הקיים ופשט אותו.** סגנון חום/בז' (`MainStyle.css`, `CourseArea.css`). אל תעשה רדיזיין מלא — רק ליטוש וצמצום כפילויות אם צריך.
6. **עברית ו‑RTL** בכל טקסט שמוצג למשתמש.
7. **בנה ובדוק אחרי כל משימה** (ראה סעיף 4 — בדיקה).
8. עבוד **משימה‑משימה** לפי הסדר למטה, וסמן לי מה שינית בכל קובץ.

---

## 3. מיפוי המחוון מול המצב הקיים

| # | דרישת המחוון | מצב נוכחי | פעולה נדרשת |
|---|---|---|---|
| 1 | טופס הרשמה עם TextBox + לפחות אחד מ‑ComboBox/RadioButton/CheckBox | יש DropDownList (=ComboBox) ✔️ | **לחזק:** להוסיף CheckBox "אישור תקנון" (משימה 2) |
| 2 | דף כניסה (Login) | קיים `Course/Login.aspx` ✔️ | אין |
| 3 | מסד נתונים ≥5 עמודות, עמודה אחת `bit` בשם isAdmin | טבלה `Users` עם 13 עמודות + `isAdmin` ✔️ | רק לוודא שהעמודה היא `bit` |
| 4 | 5 דפי נושא עם כותרות, תמונות, **לפחות טבלה אחת**, עיצוב ברמת תגית, דף בודד, גיליון CSS | 5 דפים עם כותרות+תמונות ✔️, CSS ✔️, דף בודד (CourseArea/Videos) ✔️ | **חסר:** טבלת HTML אמיתית בדף נושא (משימה 3) |
| 5 | שימוש ב‑Session לשמירת שם משתמש | `Session["uName"]`, `["fName"]`, `["isAdmin"]` ✔️ | אין |
| 6 | שימוש ב‑Session למניעת כניסה ללא‑מנהל | `Admin/Users.aspx` מפנה ל‑`NoAdmin.aspx` ✔️ | אין |
| 7 | **JavaScript** לבדיקת הטופס בצד הלקוח לפני שליחה | יש רק Validators של ASP.NET ❌ | **חסר — הכי חשוב:** ולידציית JS ידנית (משימה 1) |

**מסקנה:** הפער המהותי היחיד הוא **סעיף 7 (JavaScript)**. כל השאר מתקיים או דורש הוספה קטנה.

---

## 4. משימות לביצוע (לפי סדר עדיפויות)

### ✅ משימה 1 — חובה: ולידציית JavaScript ידנית בטפסים
**קבצים:** `Course/CourseSignup.aspx`, `Course/Login.aspx`

המטרה: פונקציית JavaScript שכותב התלמיד, שרצה **לפני** השליחה ובודקת את השדות. שומרים גם את ה‑Validators הקיימים (הם נותנים בדיקה גם בשרת).

**שלבים בטופס ההרשמה (`CourseSignup.aspx`):**

1. הוסף `ClientIDMode="Static"` לשדות שה‑JS קורא, כדי שאפשר יהיה לפנות אליהם ב‑ID פשוט. למשל:
   ```aspx
   <asp:TextBox ID="txtUserName" runat="server" ClientIDMode="Static" />
   <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" ClientIDMode="Static" />
   <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" ClientIDMode="Static" />
   <asp:TextBox ID="txtYearBorn" runat="server" TextMode="Number" ClientIDMode="Static" />
   ```

2. חבר את הכפתור הקיים לפונקציה (הוסף את `OnClientClick`):
   ```aspx
   <asp:Button ID="btnSubmit" runat="server" Text="שלח הרשמה" CssClass="main-button"
       OnClientClick="return validateSignup();" OnClick="btnSubmit_Click" />
   ```

3. הוסף בתחתית ה‑`<asp:Content ... ID="c3">` (לפני סגירת ה‑Content) בלוק סקריפט:
   ```html
   <script type="text/javascript">
       // בדיקת הטופס בצד הלקוח לפני השליחה לשרת
       function validateSignup() {
           var user  = document.getElementById('txtUserName').value.trim();
           var pass  = document.getElementById('txtPassword').value.trim();
           var email = document.getElementById('txtEmail').value.trim();
           var year  = document.getElementById('txtYearBorn').value.trim();
           var terms = document.getElementById('chkTerms');

           if (user === "" || pass === "") {
               alert("יש למלא שם משתמש וסיסמה");
               return false;
           }
           if (pass.length < 4) {
               alert("הסיסמה חייבת להכיל לפחות 4 תווים");
               return false;
           }
           if (email.indexOf("@") === -1 || email.indexOf(".") === -1) {
               alert("כתובת אימייל לא תקינה");
               return false;
           }
           if (year === "" || isNaN(year)) {
               alert("שנת לידה חייבת להיות מספר");
               return false;
           }
           if (terms && !terms.checked) {
               alert("יש לאשר את תקנון האתר");
               return false;
           }
           return true; // הכול תקין – הטופס נשלח
       }
   </script>
   ```

**שלבים בדף הכניסה (`Login.aspx`):** אותו רעיון, פשוט יותר.
1. הוסף `ClientIDMode="Static"` ל‑`txtUserName` ו‑`txtPassword`.
2. בכפתור: `OnClientClick="return validateLogin();"`.
3. סקריפט:
   ```html
   <script type="text/javascript">
       function validateLogin() {
           var user = document.getElementById('txtUserName').value.trim();
           var pass = document.getElementById('txtPassword').value.trim();
           if (user === "" || pass === "") {
               alert("יש למלא שם משתמש וסיסמה");
               return false;
           }
           return true;
       }
   </script>
   ```

> שים לב: ב‑WebForms ה‑`OnClientClick` רץ לפני ה‑postback; החזרת `false` מבטלת את השליחה. השאר את ה‑`RequiredFieldValidator`‑ים כמו שהם.

---

### ✅ משימה 2 — מומלץ: הוספת CheckBox "אישור תקנון" לטופס ההרשמה
**קובץ:** `Course/CourseSignup.aspx` (+ אופציונלי `CourseSignup.aspx.cs`)

המחוון כבר מסומן ✔️ דרך ה‑DropDownList, אבל CheckBox מדגים את הדרישה בצורה ברורה ונותן ל‑JS מה לבדוק. הוסף שורה בטבלת הטופס, **לפני** שורת הכפתור:
```aspx
<tr>
    <td>תקנון:</td>
    <td>
        <asp:CheckBox ID="chkTerms" runat="server" ClientIDMode="Static"
            Text="אני מאשר את תקנון האתר" />
    </td>
</tr>
```
(אופציונלי, בשרת) אפשר גם לבדוק ב‑`btnSubmit_Click` בתחילתו:
```csharp
if (!chkTerms.Checked)
{
    lblMsg.ForeColor = System.Drawing.Color.Red;
    lblMsg.Text = "יש לאשר את תקנון האתר";
    return;
}
```

> **רשות בלבד (אל תעשה אם רוצים מינימום שינוי):** אפשר להמיר את שדה המגדר מ‑`DropDownList ddlGender` ל‑`RadioButtonList rblGender` כדי להדגים גם RadioButton. אם עושים זאת — לעדכן גם את `CourseSignup.aspx.cs` לקרוא `rblGender.SelectedValue` במקום `ddlGender.SelectedValue`.

---

### ✅ משימה 3 — חובה: טבלת HTML אמיתית בדף נושא
**קובץ:** `Recipes/SimpleMixCakes.aspx` (ואפשר גם `Recipes/Cookies.aspx`)

המחוון דורש "לפחות טבלה אחת" בדפי הנושא, וגם "עיצוב ברמת תגית". הפוך את רשימת המרכיבים (`<ul>`) לטבלה עם עמודות מרכיב/כמות, עם `style` ישיר על התגית (כך מכוסה גם "עיצוב ברמת תגית"):
```html
<p><b>מרכיבים:</b></p>
<table class="users-grid" style="width:100%; max-width:420px; margin:0 auto;">
    <tr><th>מרכיב</th><th>כמות</th></tr>
    <tr><td>ביצים</td><td>2</td></tr>
    <tr><td>סוכר</td><td>1 כוס</td></tr>
    <tr><td>חלב</td><td>1 כוס</td></tr>
    <tr><td>שמן</td><td>1/2 כוס</td></tr>
    <tr><td>קמח</td><td>1.5 כוס</td></tr>
    <tr><td>אבקת אפייה</td><td>1 שקית</td></tr>
    <tr><td>קקאו</td><td>3 כפות</td></tr>
    <tr><td>מלח</td><td>קורט</td></tr>
</table>
```
(הסגנון `users-grid` כבר קיים ב‑`MainStyle.css` ויעצב את הטבלה יפה.)

---

### ✅ משימה 4 — תיקון באג: דף הבית הריק
**קובץ:** `Default.aspx`

כרגע `Default.aspx` ריק לגמרי, ולכן כניסה לכתובת הראשית של האתר מציגה דף לבן. הוסף הפניה אוטומטית לדף הבית האמיתי:
```aspx
<%@ Page Language="C#" AutoEventWireup="true" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Redirect("~/main.aspx");
    }
</script>
```

---

### ✅ משימה 5 — ליטוש קטן: הצגת קישור "ניהול" רק למנהל
**קבצים:** `all.Master`, `all.Master.cs`

כרגע הקישור "ניהול" מוצג לכולם בתפריט (גם לאורח). זה עובד (יש הפניה ל‑Login/NoAdmin), אבל נקי יותר להציגו רק למנהל מחובר.

ב‑`all.Master`, החלף את הקישור הסטטי:
```aspx
<a href="/Admin/Users.aspx">ניהול</a>
```
ב‑HyperLink עם שרת:
```aspx
<asp:HyperLink ID="lnkAdmin" runat="server" NavigateUrl="~/Admin/Users.aspx" Visible="false">ניהול</asp:HyperLink>
```
וב‑`all.Master.cs` בתוך `Page_Load`, הוסף:
```csharp
bool isAdmin = Session["isAdmin"] != null && (bool)Session["isAdmin"];
lnkAdmin.Visible = isAdmin;
```

---

### ◻️ משימה 6 — רשות: ניקוי קוד לפישוט
**קובץ:** `App_Start/Helper.cs`

המתודות `DoQuery` ו‑`IsExist` אינן בשימוש בשום מקום בפרויקט (ההתחברות וההרשמה משתמשות ב‑`SqlCommand` עם פרמטרים ישירות, וה‑Admin משתמש ב‑`ExecuteDataTable`). אם רוצים קוד נקי יותר — אפשר למחוק את שתי המתודות האלה. **לא חובה**; אם זה מסבך, השאר.

---

## 5. דברים שאסור לעשות

- ❌ אל תוסיף שאילתות `UPDATE` / `DELETE` (לא נדרש).
- ❌ אל תוסיף `Application` state, Master page נוסף, או ספריות JS/CSS חיצוניות חדשות.
- ❌ אל תכתוב מחדש את כל הפרויקט ואל תשנה את מבנה התיקיות.
- ❌ אל תשנה את סכמת מסד הנתונים (העמודות מספיקות). אל תמחק נתונים.
- ❌ אל תחזיר שרשור מחרוזות בשאילתות — שמור על פרמטרים.
- ⚠️ סיסמאות נשמרות כטקסט גלוי. המחוון לא דורש הצפנה — **השאר פשוט**. (אפשר לציין זאת כ"שיפור עתידי" בתיעוד הפרויקט בלבד.)

---

## 6. בדיקה סופית (חובה לפני סיום)

1. **בנייה:** בנה את הפרויקט עם MSBuild (למשל מ‑Developer Command Prompt: `msbuild baker__id02.sln /t:Build`) או דרך Visual Studio. ודא שאין שגיאות קומפילציה.
2. **הרצה:** הרץ ב‑IIS Express ובדוק ידנית את הזרימות:
   - דף הבית נפתח (כניסה לכתובת הראשית מפנה ל‑`main.aspx`).
   - **הרשמה:** השאר שדה ריק / סיסמה קצרה / אימייל בלי `@` / בלי סימון תקנון → אמורה לקפוץ הודעת JavaScript והטופס לא נשלח. מילוי תקין → "ההרשמה בוצעה בהצלחה!" והשורה נוספת לטבלה.
   - **כניסה:** משתמש לא קיים → הודעת שגיאה. משתמש רגיל → אזור הקורס. מנהל → אזור הניהול.
   - **הרשאות:** כניסה ל‑`Admin/Users.aspx` כמשתמש רגיל → הפניה ל‑`NoAdmin.aspx`.
   - **קישור ניהול** מופיע בתפריט רק כשמחוברים כמנהל.
   - דף מתכון מציג את טבלת המרכיבים.
3. **צ'קליסט מול המחוון** — ודא ✔️ לכל שורה:
   - [ ] טופס הרשמה עם TextBox + CheckBox/ComboBox
   - [ ] דף כניסה עובד
   - [ ] DB עם ≥5 עמודות + `isAdmin` מסוג `bit`
   - [ ] 5 דפי נושא עם כותרות, תמונות, טבלה, עיצוב ברמת תגית, דף בודד, גיליון CSS
   - [ ] Session שומר שם משתמש
   - [ ] Session מונע כניסה ללא‑מנהל
   - [ ] **JavaScript בודק את הטופס לפני השליחה**
4. דווח לי בסוף סיכום קצר של מה שונה בכל קובץ.

---

*ההנחיה הוכנה אוטומטית על בסיס סקירה של כל קבצי הפרויקט והמחוון. עבוד לפי הסדר, שמור על פשטות, ובדוק אחרי כל שלב.*
