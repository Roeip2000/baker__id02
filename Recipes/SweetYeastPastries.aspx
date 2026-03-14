<%@ Page Language="C#" MasterPageFile="~/all.Master" AutoEventWireup="true" %>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    מאפי שמרים – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    מאפי שמרים
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">
    <div style="max-width:900px; margin:20px auto 30px auto; background-color:white; padding:18px; border-radius:12px; box-shadow:0 4px 10px lightgray; text-align:center; color:dimgray;">
    בעמוד זה תוכלו למצוא מתכונים למאפי שמרים אהובים, עם הסבר ברור על המרכיבים ואופן ההכנה.
</div>

        <div class="recipe-box">
            <img src="/picture/kurto_hungarian.jpg" class="recipe-img" alt="קורטוש הונגרי" />

            <div class="recipe-text">
                <h3>קורטוש הונגרי (כמו בבודפשט)</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>3 וחצי כוסות קמח</li>
                    <li>2 כפיות שמרים יבשים</li>
                    <li>1/3 כוס סוכר</li>
                    <li>2 ביצים</li>
                    <li>1 כוס חלב פושר</li>
                    <li>100 גרם חמאה רכה</li>
                    <li>קורט מלח</li>
                    <li>סוכר וקינמון לציפוי</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מערבבים קמח, שמרים וסוכר.</li>
                    <li>מוסיפים ביצים, חלב וחמאה ולשים לבצק רך.</li>
                    <li>מתפיחים כשעה וחצי.</li>
                    <li>מרדדים, חותכים רצועות ועוטפים סביב גליל.</li>
                    <li>מורחים חמאה, מצפים סוכר ואופים 180°C כ־20 דקות.</li>
                </ol>
            </div>
        </div>

        <div class="recipe-box">
            <img src="/picture/cinnabon_cloud.jpg" class="recipe-img" alt="סינבון עננים" />

            <div class="recipe-text">
                <h3>סינבון עננים רך ומושלם</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>4 כוסות קמח</li>
                    <li>2 כפיות שמרים יבשים</li>
                    <li>1/2 כוס סוכר</li>
                    <li>2 ביצים</li>
                    <li>1 כוס חלב פושר</li>
                    <li>100 גרם חמאה מומסת</li>
                    <li>1 כף קינמון</li>
                    <li>1/2 כוס סוכר חום</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מערבבים קמח, שמרים וסוכר.</li>
                    <li>מוסיפים ביצים, חלב וחמאה ולשים לבצק רך.</li>
                    <li>מתפיחים כשעה.</li>
                    <li>מרדדים, מורחים חמאה, סוכר חום וקינמון.</li>
                    <li>מגלגלים, פורסים ואופים 180°C כ־25 דקות.</li>
                </ol>
            </div>
        </div>

        <div class="recipe-box">
            <img src="/picture/rogelach_homemade.jpg" class="recipe-img" alt="רוגלך ביתי" />

            <div class="recipe-text">
                <h3>רוגלך ביתי</h3>

                <p><b>מרכיבים:</b></p>
                <ul>
                    <li>3 כוסות קמח</li>
                    <li>2 כפיות שמרים יבשים</li>
                    <li>1/3 כוס סוכר</li>
                    <li>200 גרם חמאה רכה</li>
                    <li>1 ביצה</li>
                    <li>1/2 כוס חלב פושר</li>
                    <li>מילוי לפי טעם (שוקולד / פרג / תמרים)</li>
                </ul>

                <p><b>אופן הכנה:</b></p>
                <ol>
                    <li>מערבבים קמח, שמרים וסוכר.</li>
                    <li>מוסיפים ביצה, חלב וחמאה ולשים לבצק.</li>
                    <li>מתפיחים כשעה.</li>
                    <li>מרדדים, מורחים מילוי וחותכים למשולשים.</li>
                    <li>מגלגלים ואופים 180°C כ־20 דקות.</li>
                </ol>
            </div>
        </div>

    </div>

</asp:Content>