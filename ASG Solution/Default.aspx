<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBasic.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASG_Solution.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h1>Welcome to Funglasses Online</h1>

                <h2>Featured Items</h2>
<div id="featwrap">
            <asp:Repeater ID="rptrProducts" runat="server">
                <HeaderTemplate>
                    <ul>
                </HeaderTemplate>
                <ItemTemplate>
                    <li>
                        <div class="featprod1">
                        <a href="<%# Eval("Id", "ProductDetails.aspx?Id={0}") %>">
        <img src="img/product/<%#Eval ("ID") %><%#Eval ("Extension") %>" width="200" height="100" class="image" alt="<%#Eval ("AlternateText") %>"/>
                            <div class="overlay">
    <div class="feattext"><p><%#Eval ("Title") %></p><p>$<%#Eval ("UnitPrice") %></p></div>
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
