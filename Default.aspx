<%@ Page Language="C#" AutoEventWireup="true" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        // הפניה אוטומטית לדף הבית
        Response.Redirect("~/Pages/main.aspx");
    }
</script>
