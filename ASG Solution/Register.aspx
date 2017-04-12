<%@ Page Title="" Language="C#" MasterPageFile="SiteBasic.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ASG_Solution.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2>Registration Form</h2>
    <div id="form">
    <form id="frmRegister" runat="server">

        <asp:Label ID="lblRegEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblRegPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtRegPassword" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblConPassword" runat="server" Text="Confirm Password:"></asp:Label>
        <asp:TextBox ID="txtConPassword" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        <br />
        <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
    </form>
    </div>

    

</asp:Content>
