﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
  CodeFile="AdminOrderDetails.aspx.cs" Inherits="AdminOrderDetails" EnableViewState="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titlePlaceHolder" runat="Server">
  <span class="AdminTitle">LandShop Админ
    <br />
    Детайли за поръчка </span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminPlaceHolder" runat="Server">
  <h2>
    <asp:Label ID="orderIdLabel" runat="server" CssClass="AdminTitle" Text="Поръчка #000" />
  </h2>
  <span class="WideLabel">Обща сума:</span>
  <asp:Label ID="totalAmountLabel" runat="server" CssClass="ProductPrice" />
  <br />
  <span class="WideLabel">Дата на създаване:</span>
  <asp:TextBox ID="dateCreatedTextBox" runat="server" Width="400px" />
  <br />
  <span class="WideLabel">Дата на изпращане:</span>
  <asp:TextBox ID="dateShippedTextBox" runat="server" Width="400px" />
  <br />
  <span class="WideLabel">Статус:</span>
  Проверена
  <asp:CheckBox ID="verifiedCheck" runat="server" />
  Завършена
  <asp:CheckBox ID="completedCheck" runat="server" />
  Отказана
  <asp:CheckBox ID="canceledCheck" runat="server" />
  <br />
  <span class="WideLabel">Коментари:</span>
  <asp:TextBox ID="commentsTextBox" runat="server" Width="400px" />
  <br />
  <span class="WideLabel">Име на клиента:</span>
  <asp:TextBox ID="customerNameTextBox" runat="server" Width="400px" />
  <br />
  <span class="WideLabel">Адрес:</span>
  <asp:TextBox ID="shippingAddressTextBox" runat="server" Width="400px" />
  <br />
  <span class="WideLabel">Email на клиента:</span>
  <asp:TextBox ID="customerEmailTextBox" runat="server" Width="400px" />
  <br />
  <asp:Button ID="editButton" runat="server" Text="Промени" Width="100px" 
    onclick="editButton_Click" />
  <asp:Button ID="updateButton" runat="server" Text="Обнови" Width="100px" 
    onclick="updateButton_Click" />
  <asp:Button ID="cancelButton" runat="server" cancelText="Отказ" Width="100px" 
    onclick="cancelButton_Click" /><br />
  <asp:Button ID="markVerifiedButton"  runat="server" 
    Text="Отбележи поръчката като проверена" Width="310px" 
    onclick="markVerifiedButton_Click" /><br />
  <asp:Button ID="markCompletedButton" runat="server" 
    Text="Отбележи поръчката за завършена" Width="310px" 
    onclick="markCompletedButton_Click" /><br />
  <asp:Button ID="markCanceledButton" runat="server" 
    Text="Отбележи поръчката за отказана" Width="310px" 
    onclick="markCanceledButton_Click" /><br />
  <p>
    Поръчката съдържа тези предмети:
  </p>
  <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" BackColor="White" Width="100%">
    <Columns>
      <asp:BoundField DataField="ProductID" HeaderText="Product ID" ReadOnly="True" SortExpression="ProductID" />
      <asp:BoundField DataField="ProductName" HeaderText="Име на продукт" ReadOnly="True" SortExpression="ProductName" />
      <asp:BoundField DataField="Quantity" HeaderText="Количество" ReadOnly="True" SortExpression="Quantity" />
      <asp:BoundField DataField="UnitCost" HeaderText="Цена за брой" ReadOnly="True" SortExpression="UnitCost" />
      <asp:BoundField DataField="Subtotal" HeaderText="Общо" ReadOnly="True" SortExpression="Subtotal" />
    </Columns>
  </asp:GridView>
</asp:Content>
