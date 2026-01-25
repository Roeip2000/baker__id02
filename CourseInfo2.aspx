<%@ Page Language="C#" MasterPageFile="~/all.master" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    מידע על הקורסים – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    מידע על הקורסים
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

<div class="text-box">

    <div class="intro-box">
        <p>
            קורסי הקונדיטוריה של עידו מיועדים לכל מי שאוהב אפייה ורוצה ללמוד בצורה מקצועית,
            מסודרת וחווייתית. הקורסים משלבים לימוד יסודות, טכניקות מתקדמות, עבודה עם חומרי גלם
            איכותיים ותרגול מעשי בכל מפגש.
        </p>
    </div>

  
    <div class="topic-box" style="margin-top:40px;">

        <div style="text-align:center; margin-bottom:20px;">
            <img src="picture/DESERT1.jpg" style="max-width:90%; border-radius:16px;" />
        </div>

        <h2>קורס קינוחים אישיים</h2>

        <p>
            קורס מעשי וחווייתי להכנת קינוחים אישיים ברמה מקצועית.  
            מיועד לחובבי אפייה שמעוניינים ללמוד טכניקות מתקדמות, עיצוב והגשה מרשימה.
        </p>

        <p><b>מה לומדים בקורס:</b></p>
        <ul>
            <li>קאפקייקס מעוצבים</li>
            <li>קינוחים בכוסות (טרייפל, מוסים, שכבות)</li>
            <li>פחזניות ואקלרים במילויים שונים</li>
            <li>רולדות וקינוחים אישיים לשיתוף</li>
            <li>ציפויים, זיגוגים ועיטורים</li>
            <li>עבודה עם שוקולד וקרמים</li>
            <li>טכניקות זילוף והגשה</li>
        </ul>

        <p><b>פרטי הקורס:</b></p>
        <ul>
            <li>משך הקורס: 8 מפגשים</li>
            <li>אורך מפגש: כשעתיים</li>
            <li>רמת קושי: בינונית–מתקדמת</li>
            <li>אין צורך בידע מוקדם</li>
            <li>כל חומרי הגלם כלולים</li>
            <li>כל משתתף יוצא עם הקינוחים שהכין</li>
        </ul>

    </div>

    
    <div class="topic-box" style="margin-top:50px;">

        <div style="text-align:center; margin-bottom:20px;">
            <img src="picture/begin1.jpg" style="max-width:90%; border-radius:16px;" />
        </div>

        <h2>קורס קונדיטוריה למתחילים</h2>

        <p>
            קורס יסודות האפייה והקונדיטוריה למי שעושה את צעדיו הראשונים בעולם האפייה.  
            מתאים לבני נוער ולמבוגרים ללא ניסיון קודם.
        </p>

        <p><b>מה לומדים בקורס:</b></p>
        <ul>
            <li>עוגות בחושות ועוגות בסיס</li>
            <li>עוגות שמרים ורוגלך</li>
            <li>בצק פריך ובצק רבוך</li>
            <li>עוגיות ומאפים מתוקים</li>
            <li>קרמים בסיסיים (וניל, שוקולד)</li>
            <li>עבודה נכונה עם תנור ומדידות</li>
            <li>טיפים למניעת טעויות נפוצות</li>
        </ul>

        <p><b>פרטי הקורס:</b></p>
        <ul>
            <li>משך הקורס: 10 מפגשים</li>
            <li>אורך מפגש: כשעתיים</li>
            <li>רמת קושי: מתחילים</li>
            <li>אין צורך בניסיון קודם</li>
            <li>כל חומרי הגלם כלולים</li>
            <li>כל משתתף יוצא עם המאפים שהכין</li>
        </ul>

    </div>

   
    <div style="text-align:center; margin:50px 0;">
        <img src="picture/courses22.jpg" style="max-width:90%; border-radius:18px;" />
    </div>

    
    <div class="topic-box" style="text-align:center; margin-bottom:40px;">
        <a href="CourseSignup.aspx" class="main-button">להרשמה לקורסים</a>
    </div>

    <p class="footer-text">© 2026 Ido Bakery & Pastry</p>
    <a href="main.aspx">לחזור לדף הראשי</a>

</div>

</asp:Content>
