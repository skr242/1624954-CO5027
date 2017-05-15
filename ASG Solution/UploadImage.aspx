<%@ Page Title="" Language="C#" MasterPageFile="~/SiteBasic.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="ASG_Solution.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <h2>File Upload</h2>
        <p>Dimensions of picture must be 150px x 150px.</p>
        <h3>Main Image</h3>
        <p>
            <asp:FileUpload ID="imageFileUploadControl" runat="server" Width="384px" />
        </p>
            <asp:Label ID="lblAltText" runat="server" Text="Alternate Text:"></asp:Label>
            <asp:TextBox ID="txtAltText" runat="server"></asp:TextBox>
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
        <h3>2nd Image</h3>
        <p>
            <asp:FileUpload ID="imageFileUploadControl1" runat="server" Width="391px" />
        </p>
            <asp:Label ID="lblAltText0" runat="server" Text="Alternate Text:"></asp:Label>
            <asp:TextBox ID="txtAltText1" runat="server"></asp:TextBox>
       <p>
            <asp:Button ID="btnFileUpload1" runat="server" OnClick="btnFileUpload1_Click" Text="Submit" />
        </p>
        <p>
            <asp:Literal ID="litUpload1" runat="server"></asp:Literal>
        </p>
        <p>
            <asp:Image ID="CurrentImage4" runat="server" />
            <asp:Image ID="CurrentImage5" runat="server" />
            <asp:Image ID="CurrentImage6" runat="server" />
            <asp:Image ID="CurrentImage7" runat="server" />
        </p>
        <p>&nbsp;</p>
    </form>
</asp:Content>
