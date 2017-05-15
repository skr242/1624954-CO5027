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
        <p>
            <asp:Literal ID="litQuantity" runat="server"></asp:Literal>
&nbsp;stocks left</p>
        <p>
            Select Frame Size:
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>50mm</asp:ListItem>
                <asp:ListItem>52mm</asp:ListItem>
                <asp:ListItem>54mm</asp:ListItem>
                <asp:ListItem>56mm</asp:ListItem>
                <asp:ListItem>58mm</asp:ListItem>
                <asp:ListItem>60mm</asp:ListItem>
            </asp:DropDownList>
        </p>
        <h4>
            <asp:Literal ID="litUnitPrice" runat="server"></asp:Literal>
        </h4>
        <p>
            <asp:Button ID="btnCart" runat="server" Text="Add to Cart" />
        </p>
    </form>
</asp:Content>
