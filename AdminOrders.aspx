<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
  CodeFile="AdminOrders.aspx.cs" Inherits="AdminOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="titlePlaceHolder" runat="Server">
  <span class="AdminTitle">LandShop Админ
    <br />
    Поръчки </span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="adminPlaceHolder" runat="Server">
Покажи най-нови
  <asp:TextBox ID="recentCountTextBox" runat="server" MaxLength="4" Width="40px" Text="20" />
  записи
  <asp:Button ID="byRecentGo" runat="server" Text="Давай" CausesValidation="False" 
    onclick="byRecentGo_Click" /><br />
  Покажи всички записи създадени между(x/x/xxxx)
  <asp:TextBox ID="startDateTextBox" runat="server" Width="72px" />
  и
  <asp:TextBox ID="endDateTextBox" runat="server" Width="72px" />
  <asp:Button ID="byDateGo" runat="server" Text="Давай" onclick="byDateGo_Click" />
  <br />
  Покажи всички непроверени, неотказани поръчки
  <asp:Button ID="unverfiedGo" runat="server" Text="Давай" 
    onclick="unverfiedGo_Click" />
  <br />
  Покажи всички проверени, незавършени поръчки
  <asp:Button ID="uncompletedGo" runat="server" Text="Давай" 
    onclick="uncompletedGo_Click" />
  <br />
  <br />
  <asp:Label ID="errorLabel" runat="server" CssClass="AdminError" 
    EnableViewState="False"></asp:Label>
&nbsp;<asp:RangeValidator ID="startDateValidator" runat="server" 
    ControlToValidate="startDateTextBox" Display="None" 
    ErrorMessage="Невалидна начална дата" MaximumValue="1/1/2020" 
    MinimumValue="1/1/2015" Type="Date"></asp:RangeValidator>
&nbsp;<asp:RangeValidator ID="endDateValidator" runat="server" 
    ControlToValidate="endDateTextBox" Display="None" 
    ErrorMessage="Невалидна крайна дата" MaximumValue="1/1/2020" MinimumValue="1/1/2015" 
    Type="Date"></asp:RangeValidator>
&nbsp;<asp:CompareValidator ID="compareDatesValidator" runat="server" 
    ControlToCompare="endDateTextBox" ControlToValidate="startDateTextBox" 
    Display="None" ErrorMessage="Началната дата трябва да е преди крайната дата" 
    Operator="LessThan" Type="Date"></asp:CompareValidator>
  <asp:ValidationSummary ID="validationSummary" runat="server" 
    CssClass="AdminError" HeaderText="Грешки при валидиране на данни:" />
  <br />
  <asp:GridView ID="grid" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="OrderID" onselectedindexchanged="grid_SelectedIndexChanged">
    <Columns>
      <asp:BoundField DataField="OrderID" HeaderText="Поръчка#" ReadOnly="True" 
        SortExpression="OrderID" />
      <asp:BoundField DataField="DateCreated" HeaderText="Дата на създаване" 
        ReadOnly="True" SortExpression="DateCreated" />
      <asp:BoundField DataField="DateShipped" HeaderText="Дата на изпращане" 
        ReadOnly="True" SortExpression="DateShipped" />
      <asp:CheckBoxField DataField="Verified" HeaderText="Проверена" ReadOnly="True" 
        SortExpression="Verified" />
      <asp:CheckBoxField DataField="Completed" HeaderText="Завършена" ReadOnly="True" 
        SortExpression="Completed" />
      <asp:CheckBoxField DataField="Canceled" HeaderText="Отказана" ReadOnly="True" 
        SortExpression="Canceled" />
      <asp:BoundField DataField="CustomerName" HeaderText="Име на клиент" ReadOnly="True" 
        SortExpression="CustomerName" />
      <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Избери" />
    </Columns>
  </asp:GridView>
</asp:Content>
