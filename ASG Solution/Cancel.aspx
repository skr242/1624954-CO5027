<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBasic.Master" AutoEventWireup="true" CodeBehind="Cancel.aspx.cs" Inherits="ASG_Solution.Cancel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <h2>Your order has been cancelled</h2>
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back to Shopping!" />
    </p>

</form>

</asp:Content>
