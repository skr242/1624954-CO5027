<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="ASG_Solution.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="navactive" runat="server">
                <li><a class="navtext" href="Default.aspx">Home</a></li>
                <li><a class="navtext" href="product.aspx">Products</a></li>
                <li><a class="navtextactive" href="about.aspx">About</a></li>
                <li><a class="navtext" href="contact.aspx">Contact</a></li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>About Us</h2>
</asp:Content>
