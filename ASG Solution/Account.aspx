<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBasic.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="ASG_Solution.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <h2>My Account</h2>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log Out" />
        </p>
    </form>
</asp:Content>
