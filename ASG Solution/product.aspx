<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="ASG_Solution.product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="navactive" runat="server">
                <li><a class="navtext" href="Default.aspx">Home</a></li>
                <li><a class="navtextactive" href="Product.aspx">Products</a></li>
                <li><a class="navtext" href="Contact.aspx">Contact</a></li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Products</h2>
        <div id="featwrap">
            <asp:Repeater ID="rptrProducts" runat="server">
                <HeaderTemplate>
                    <ul>
                </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <div class="featprod1">
                        <a href="<%# Eval("Id", "ProductDetails.aspx?Id={0}") %>">
        <img src="img/product/<%#Eval ("ID") %><%#Eval ("Extension") %>" class="image" alt="<%#Eval ("AlternateText") %>"/>
                            <div class="overlay">
    <div class="feattext"><%#Eval ("Title") %><br /><br /><%#Eval ("UnitPrice") %></div>
  </div>
                            </a>    
        
    </div>
                    </li>
                </ItemTemplate>
                <FooterTemplate>
                    </ul>
                </FooterTemplate>
            </asp:Repeater>
</div>
    
</asp:Content>
