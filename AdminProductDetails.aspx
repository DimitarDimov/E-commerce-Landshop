﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminProductDetails.aspx.cs" Inherits="AdminProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titlePlaceHolder" runat="Server">
  <span class="AdminTitle">
    LandShop Админ
    <br />
    Продукти в
    <asp:HyperLink ID="catLink" runat="server" />
  </span>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="adminPlaceHolder" runat="Server">
  <asp:Label CssClass="AdminTitle" ID="productNameLabel" runat="server" />  
  <p>
    <asp:Label ID="statusLabel" CssClass="AdminError" runat="server" />
  </p>
  <p>
    Продукта принадлежи на тези категории:
    <asp:Label ID="categoriesLabel" runat="server" />
  </p>
  <p>
    Премахни продукт от тази категория:
    <asp:DropDownList ID="categoriesListRemove" runat="server" />  
    <asp:Button ID="removeButton" runat="server" Text="Премахни" OnClick="removeButton_Click" />
    <asp:Button ID="deleteButton" runat="server" Text="ИЗТРИИ ОТ КАТАЛОГА" OnClick="deleteButton_Click" />
  </p>
  <p>
    Прехвърли продукт към тази категория:
    <asp:DropDownList ID="categoriesListAssign" runat="server" />  
    <asp:Button ID="assignButton" runat="server" Text="Прехвърли" OnClick="assignButton_Click" />
  <p>
    Премести продукт към тази категория:
    <asp:DropDownList ID="categoriesListMove" runat="server" />
    <asp:Button ID="moveButton" runat="server" Text="Премести" OnClick="moveButton_Click" />
  </p>
  <p>
    Картинка1 име на файл:
    <asp:Label ID="Image1Label" runat="server" />
    <asp:FileUpload ID="image1FileUpload" runat="server" />
    <asp:Button ID="upload1Button" runat="server" Text="Качи" 
      onclick="upload1Button_Click" /><br />
    <asp:Image ID="image1" runat="server" />
  </p>
  <p>
    Картинка2 име на файл:
    <asp:Label ID="Image2Label" runat="server" />
    <asp:FileUpload ID="image2FileUpload" runat="server" />
    <asp:Button ID="upload2Button" runat="server" Text="Качи" 
      onclick="upload2Button_Click" /><br />
    <asp:Image ID="image2" runat="server" />
  </p>
</asp:Content>