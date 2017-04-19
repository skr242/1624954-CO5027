<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBasic.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="ASG_Solution.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <h2>File Upload</h2>
        <p>
            <asp:FileUpload ID="imageFileUploadControl" runat="server" Width="384px" />
        </p>
        <p>
            <asp:Button ID="btnFileUpload" runat="server" OnClick="btnFileUpload_Click" Text="Submit" />
        </p>
        <p>
            <asp:Image ID="CurrentImage" runat="server" />
        </p>
    </form>
</asp:Content>
