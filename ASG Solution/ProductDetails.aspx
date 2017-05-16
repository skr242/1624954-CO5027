<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBasic.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="ASG_Solution.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <h2>Product Details</h2>
        <h3>
            <asp:Literal ID="litTitle" runat="server"></asp:Literal>
        </h3>
    <p>
            <asp:Image ID="CurrentImage" runat="server" />
            <asp:Image ID="CurrentImage1" runat="server" />
        </p>
        <p>
            <asp:Literal ID="litDescription" runat="server"></asp:Literal>
        </p>
        <h4>
            <asp:Literal ID="litQuantity" runat="server"></asp:Literal>
pairs left</h4>
        <p>
            Select Quantity:
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True">1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
        </p>
        <h4>
            $<asp:Literal ID="litUnitPrice" runat="server"></asp:Literal>
        </h4>
        <p>
            <asp:Button ID="btnCart" runat="server" Text="Purchase this Item" OnClick="btnCart_Click" />
        </p>
    </form>
</asp:Content>
