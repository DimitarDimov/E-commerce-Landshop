<%@ Page Title="LandShop: Online Store Demo" Language="C#" MasterPageFile="~/LandShop.master" %>

<%@ Register src="UserControls/ProductsList.ascx" tagname="ProductsList" tagprefix="uc1" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>
    <span class="CatalogTitle">Добре дошли в LandShop!</span>
  </h1>
  <h2>
    <span class="CatalogDescription">Тази седмица имаме специални цени за тези продукти: </span>
  </h2>
  <uc1:ProductsList ID="ProductsList1" runat="server" />
</asp:Content>


