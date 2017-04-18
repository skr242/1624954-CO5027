﻿<%@ Page Title="" Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ASG_Solution.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="navactive" runat="server">
                <li><a class="navtext" href="Default.aspx">Home</a></li>
                <li><a class="navtext" href="Product.aspx">Products</a></li>
                <li><a class="navtextactive" href="Contact.aspx">Contact</a></li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <hContact Us</h2>
    <div id="form">
    <form id="frmContact" runat="server">
    
        <ol>
            <li>
            <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqValName" runat="server" ErrorMessage="A Name is Required. Please key in your name. eg. John Doe" ControlToValidate="txtName"></asp:RequiredFieldValidator>
        </li>
            <li>
            <asp:Label ID="lblEmail" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqValEmail" runat="server" ErrorMessage="An Email is Required. Please key in your email. eg. abc@123.com" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regexValidEmail" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
        </li>
            <li>
            <asp:Label ID="lblSubject" runat="server" Text="Subject: "></asp:Label>
            
                <asp:DropDownList ID="ddSubject" runat="server" style="margin-bottom: 0px" Height="38px" Width="171px">
                    <asp:ListItem Selected="True">General</asp:ListItem>
                    <asp:ListItem>Payment</asp:ListItem>
                    <asp:ListItem>Products</asp:ListItem>
                    <asp:ListItem>Account</asp:ListItem>
                </asp:DropDownList>
            
        </li>
            <li>
            <asp:Label ID="lblMessage" runat="server" Text="Message: "></asp:Label>

            <asp:TextBox ID="txtMessage" runat="server" Height="87px" TextMode="MultiLine" Width="257px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="reqValMessage" runat="server" ErrorMessage="A Message is Required. Please enter the Message you wish to send to our Staff." ControlToValidate="txtMessage"></asp:RequiredFieldValidator>

        </li>
            <li>
                <asp:Literal ID="litContactSuccess" runat="server"></asp:Literal>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="submit" OnClick="btnSubmit_Click"/>
        </li>
                </ol>
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
    async="async" defer="defer"></script>


    </div>

  <br />

</asp:Content>
