<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="ASG_Solution.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="navactive" runat="server">
                <li><a class="navtext" href="Default.aspx">Home</a></li>
                <li><a class="navtextactive" href="product.aspx">Products</a></li>
                <li><a class="navtext" href="contact.aspx">Contact</a></li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Products</h2>
</asp:Content>
