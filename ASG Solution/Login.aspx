<%@ Page Title="" Language="C#" MasterPageFile="SiteBasic.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASG_Solution.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Login</h1>
    <div id="form">
        <form id="frmLogin" runat="server">

        <asp:Label ID="lblLoginEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblLoginPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <br />
            <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
            <br />
            <a href="Register.aspx">Register an Account</a>
            </form>
    </div>
</asp:Content>
