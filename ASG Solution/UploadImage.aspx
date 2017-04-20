<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBasic.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="ASG_Solution.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <h2>File Upload</h2>
        <p>
            <asp:FileUpload ID="imageFileUploadControl" runat="server" Width="384px" />
        &nbsp;(Uploads need to be in &quot;.jpg&quot; format)</p>
    <p>
            <asp:Label ID="lblAltText" runat="server" Text="Alternate Text:"></asp:Label>
            <asp:TextBox ID="txtAltText" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnFileUpload" runat="server" OnClick="btnFileUpload_Click" Text="Submit" />
        </p>
    <p>
            <asp:Literal ID="litUpload" runat="server"></asp:Literal>
        </p>
        <p>
            <asp:Image ID="CurrentImage" runat="server" />
            <asp:Image ID="CurrentImage1" runat="server" />
            <asp:Image ID="CurrentImage2" runat="server" />
            <asp:Image ID="CurrentImage3" runat="server" />
        </p>
    </form>
</asp:Content>
