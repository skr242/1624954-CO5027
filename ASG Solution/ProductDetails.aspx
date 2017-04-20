<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBasic.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="ASG_Solution.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <h2>Product Details</h2>
        <h3>
            <asp:Literal ID="litTitle" runat="server"></asp:Literal>
        </h3>
    <p>
            <asp:Image ID="CurrentImage" runat="server" />
        </p>
        <p>
            <asp:Literal ID="litDescription" runat="server"></asp:Literal>
        </p>
        <h4>
            <asp:Literal ID="litUnitPrice" runat="server"></asp:Literal>
        </h4>
    </form>
</asp:Content>
