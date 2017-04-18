<%@ Page Title="" Language="C#" MasterPageFile="SiteBasic.Master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="ASG_Solution.Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <h1>My Account</h1>
        <p>
            <asp:Button ID="btnAccLogout" runat="server" OnClick="btnAccLogout_Click" Text="Log Out" />
        </p>

    </form>

</asp:Content>
