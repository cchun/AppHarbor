<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Site.Master"  CodeFile="multiplicationTable.aspx.cs" Inherits="YuGucihun.multiplicationTable" %>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>99乘法表如下：</h2>
    <asp:Table runat="server" ID="mulTable" BorderStyle="Solid" GridLines="Both" CellPadding="8"></asp:Table>
</asp:Content>
