<%@ Page Language="C#" MasterPageFile="~/LandShop.master" Title="Магазин за земя: Какво търсите?" %>

<script runat="server">
  protected void Page_Load(object sender, EventArgs e)
  {
    // set the 404 status code
    Response.StatusCode = 404;
  }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1>Търсите земеделска земя?</h1>
  <p>За съжаление, страницата не същесвува в сайта!</p>
  <p>Please visit our <asp:HyperLink ID="HyperLink1" runat="server" Target="~/" Text="catalog" />, или се свържете с нас на friendly_support@example.com!</p>
  <p>The <b>LandShop</b> team</p>
</asp:Content>