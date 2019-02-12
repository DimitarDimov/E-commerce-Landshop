<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
  CodeFile="AdminShoppingCart.aspx.cs" Inherits="AdminShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titlePlaceHolder" runat="Server">
  <span class="AdminTitle">
    LandShop Админ
    <br />
    Колички
  </span>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="adminPlaceHolder" runat="Server">
  <p>
    <asp:Label ID="countLabel" runat="server">Hello!
    </asp:Label></p>
  <p>
    <span>Колко дни?</span>
    <asp:DropDownList ID="daysList" runat="server">
      <asp:ListItem Value="0">Всички колички</asp:ListItem>
      <asp:ListItem Value="1">Една</asp:ListItem>
      <asp:ListItem Value="10" Selected="True">Десет</asp:ListItem>
      <asp:ListItem Value="20">Двадесет</asp:ListItem>
      <asp:ListItem Value="30">Тридесет</asp:ListItem>
      <asp:ListItem Value="90">Деветдесет</asp:ListItem>
    </asp:DropDownList>
  </p>
  <p>
    <asp:Button ID="countButton" runat="server" Text="Преброй стари колички" 
      onclick="countButton_Click" />
    <asp:Button ID="deleteButton" runat="server" Text="Изтрии стари колички" />
  </p>
</asp:Content>
