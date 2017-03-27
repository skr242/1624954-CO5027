<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ASG_Solution.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="navactive" runat="server">
                <li><a class="navtext" href="Default.aspx">Home</a></li>
                <li><a class="navtext" href="Product.aspx">Products</a></li>
                <li><a class="navtextactive" href="Contact.aspx">Contact</a></li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="contact">
    <form id="frmContact" runat="server">
    <h2>Contact Us</h2>
        <p>
            <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblSubject" runat="server" Text="Subject: "></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="lblMessage" runat="server" Text="Message: "></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="txtMessage" runat="server" Height="87px" TextMode="MultiLine" Width="257px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </p>
    </form>
    </div>
    <h2>Map</h2>

    <div id="map">

        

     <script>
      function initMap() {
          var funglasses = { lat: 4.907, lng: 114.916 };
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 16,
          center: funglasses
        });
        var marker = new google.maps.Marker({
          position: funglasses,
          map: map
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA64wHmfQ1z_J2S8_fUmwC-cNbV6M5bBl4&callback=initMap"
    async defer></script>


    </div>

  <br />

</asp:Content>
