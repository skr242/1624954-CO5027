<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBasic.Master" AutoEventWireup="true" CodeBehind="CompletePurchase.aspx.cs" Inherits="ASG_Solution.CompletePurchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <h2>Complete your Purchase</h2>
    <asp:Button ID="btnConfirmPurchase" runat="server" Text="Confirm" OnClick="btnConfirmPurchase_Click" />
    <asp:Literal ID="litInformation" runat="server" />
    </form>
</asp:Content>
