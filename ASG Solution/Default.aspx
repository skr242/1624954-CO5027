<%@ Page Title="" Language="C#" MasterPageFile="./Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ASG_Solution.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="navactive" runat="server">
                <li><a class="navtextactive" href="Default.aspx">Home</a></li>
                <li><a class="navtext" href="Product.aspx">Products</a></li>
                <li><a class="navtext" href="Contact.aspx">Contact</a></li>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Welcome to Funglasses Online</h1>

                <h2>Featured Items</h2>
<div id="featwrap">
    <div class="featprod">
        <img src="img/product/feat1.jpg" class="image" alt="Ray-Ban RB2027"/>
        <div class="overlay">
    <div class="feattext">Ray-Ban RB2027<br /><br />$140</div>
  </div>
    </div>
    <div class="featprod"><img src="img/product/feat2.jpg" class="image" alt="Prada PR 01OS"/>
        <div class="overlay">
    <div class="feattext">Prada PR 01OS <br /><br />$179</div>
  </div>
    </div>
    <div class="featprod"><img src="img/product/feat3.jpg" class="image" alt="Persol PO3154S"/>
        <div class="overlay">
    <div class="feattext">Persol PO3154S<br /><br />$152</div>
  </div>
    </div>

    <div class="featprod"><img src="img/product/feat4.jpg" class="image" alt="Oakley Flak 2.0 XL"/>
        <div class="overlay">
    <div class="feattext">Oakley Flak 2.0 XL<br /><br />$159</div>
  </div>
    </div>
    <div class="featprod"><img src="img/product/feat5.jpg" class="image" alt="Persol PO3019S"/>
        <div class="overlay">
    <div class="feattext">Persol PO3019S<br /><br />$190</div>
  </div>
    </div>
    <div class="featprod"><img src="img/product/feat6.jpg" class="image" alt="Ray-Ban RB4147"/>
        <div class="overlay">
    <div class="feattext">Ray-Ban RB4147<br /><br />$140</div>
  </div>
    </div>

</div>
</asp:Content>
