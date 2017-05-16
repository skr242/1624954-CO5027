<%@ Page Title="" Language="C#" MasterPageFile="SiteBasic.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASG_Solution.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Login</h1>
    <div id="form">
        <form id="frmLogin" runat="server">

        <asp:Label ID="lblLoginEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqValName" runat="server" ErrorMessage="This field is required. Please key in your email." ControlToValidate="txtLoginEmail"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regexValidEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtLoginEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
        
        <asp:Label ID="lblLoginPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtLoginPassword" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required. Please key in your password." ControlToValidate="txtLoginPassword"></asp:RequiredFieldValidator>

            <p>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></p>
            <p>
            <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
                </p>
            </form>
    </div>
</asp:Content>
