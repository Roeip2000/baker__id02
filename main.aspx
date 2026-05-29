<%@ Page Language="C#" MasterPageFile="~/all.Master" %>

<%-- This is the home page of the website --%>

<asp:Content ID="c1" ContentPlaceHolderID="TitleContent" runat="server">
    דף ראשי – Ido Bakery & Pastry
</asp:Content>

<asp:Content ID="c2" ContentPlaceHolderID="PageHeader" runat="server">
    דף ראשי
</asp:Content>

<asp:Content ID="c3" ContentPlaceHolderID="MainContent" runat="server">

    <div class="body">
        <div class="text-box">
            <h1>Ido Bakery & Pastry</h1>
            <img src="/picture/bake picture (1).jpg" alt="מאפים טריים במאפייה" class="main-image" />

            <h2>ברוכים הבאים לעידו – אפייה וקונדיטוריה</h2>

            <p>
                זהו אתר בית ספרי בנושא אפייה וקונדיטוריה.
                באתר יש מידע על עידו, דף אודות, מתכונים פשוטים והרשמה לקורס.
                המטרה היא להציג אתר ברור ונוח לשימוש.
            </p>

            <h3>דפי תוכן באתר:</h3>

            <%-- These image cards link to the main topic pages --%>
            <ul>
                <li>
                    <a href="/About.aspx" class="topic-box">
                        <img src="/picture/WhatsApp Image 2025-11-24 at 21.58.35.jpeg" alt="דף אודות עידו" />
                    </a>
                </li>
                <li>
                    <a href="/Course/CourseSignup.aspx" class="topic-box">
                        <img src="/picture/course.jpeg" alt="הרשמה לקורס אפייה" />
                    </a>
                </li>
                <li>
                    <a href="/products.aspx" class="topic-box">
                        <img src="/picture/recpies.jpeg" alt="קטלוג מתכונים" />
                    </a>
                </li>
            </ul>

        </div>
    </div>

</asp:Content>
