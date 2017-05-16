<%@ Page Title="" Language="C#" MasterPageFile="SiteBasic.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ASG_Solution.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form2" runat="server">
    <h1>Admin</h1>
        <p>
            <asp:Literal ID="MessageLabel" runat="server"></asp:Literal>
        </p>
        <div id="gridview1">
        <h3>Product List</h3>
  
        <asp:GridView ID="GridViewProducts" OnRowDeleted="GridViewProducts_RowDeleted" runat="server" AutoGenerateColumns="False" DataSourceID="sqlCO5027" GridLines="None" Width="572px" DataKeyNames="ID" CssClass="gridview1">
            <Columns>
                <asp:TemplateField HeaderText="No.">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="UnitPrice" HeaderText="Price" SortExpression="UnitPrice" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Featured" HeaderText="Featured" SortExpression="Featured" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" Text="Add Image" />
            </Columns>
        </asp:GridView>
        </div>
        <asp:SqlDataSource ID="sqlCO5027" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624954_co5027_asgConnectionString %>" SelectCommand="SELECT [Description], [UnitPrice], [Title], [Quantity], [Featured], [ID] FROM [tblProducts]" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [tblProducts] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [tblProducts] ([Description], [UnitPrice], [Title], [Quantity], [Featured]) VALUES (@Description, @UnitPrice, @Title, @Quantity, @Featured)" UpdateCommand="UPDATE [tblProducts] SET [Description] = @Description, [UnitPrice] = @UnitPrice, [Title] = @Title, [Quantity] = @Quantity, [Featured] = @Featured WHERE [ID] = @original_ID">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Featured" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Featured" Type="Int32" />
                <asp:Parameter Name="original_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <h3>Add Products</h3>
        <p>
            <asp:FormView ID="FormView1" oniteminserted="FormView1_ItemInserted" runat="server" DataKeyNames="ID" DataSourceID="sqlCO5027" DefaultMode="Insert" OnPageIndexChanging="FormView1_PageIndexChanging">
                
                <InsertItemTemplate>
                    <asp:Label ID="lblDescriptionTextBox" AssociatedControlID="DescriptionTextBox" runat="server" Text="Description: "></asp:Label>
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a description." ControlToValidate="DescriptionTextBox" ValidationGroup="insert1"></asp:RequiredFieldValidator>
                    <p><asp:Label ID="lblUnitPriceTextBox" AssociatedControlID="UnitPriceTextBox" runat="server" Text="Unit Price: "></asp:Label>
                    <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a price." ControlToValidate="UnitPriceTextBox" ValidationGroup="insert1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please enter a number in currency format without symbols eg 152.50." ControlToValidate="UnitPriceTextBox" ValidationExpression="^\s*(?=.*[1-9])\d*(?:\.\d{1,2})?\s*$" ValidationGroup="insert1"></asp:RegularExpressionValidator>
                    <p><asp:Label ID="lblTitleTextBox" AssociatedControlID="TitleTextBox" runat="server" Text="Title: "></asp:Label>
                    <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a title." ControlToValidate="TitleTextBox" ValidationGroup="insert1"></asp:RequiredFieldValidator>
                    <p><asp:Label ID="lblQuantityTextBox" AssociatedControlID="QuantityTextBox" runat="server" Text="Quantity: "></asp:Label>
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter a quantity." ControlToValidate="QuantityTextBox" ValidationGroup="insert1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a number." ControlToValidate="QuantityTextBox" ValidationExpression="^\d+$" ValidationGroup="insert1"></asp:RegularExpressionValidator>
                    <p>
                    <asp:Label ID="lblFeaturedTextBox" AssociatedControlID="FeaturedTextBox" runat="server" Text="Featured: "></asp:Label>
                    <asp:TextBox ID="FeaturedTextBox" runat="server" Text='<%# Bind("Featured") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter if the item is featured." ControlToValidate="FeaturedTextBox" ValidationGroup="insert1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a number." ControlToValidate="FeaturedTextBox" ValidationExpression="^\d+$" ValidationGroup="insert1"></asp:RegularExpressionValidator>
                    <p>
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" ValidationGroup="insert1"/>
                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" ValidationGroup="insert1"/>
                </InsertItemTemplate>

            </asp:FormView>
            
    </p>
            <h3>Edit Products</h3>
        <p>
            <asp:FormView ID="FormView2" OnItemUpdated="FormView2_ItemUpdated" runat="server" DataKeyNames="ID" DataSourceID="sqlCO5027" DefaultMode="Edit" AllowPaging="True">
                <EditItemTemplate>
                    <asp:Label ID="lblDescriptionTextBox1" AssociatedControlID="DescriptionTextBox1" runat="server" Text="Description: "></asp:Label>
                    <asp:TextBox ID="DescriptionTextBox1" runat="server" Text='<%# Bind("Description") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Please enter a description." ControlToValidate="DescriptionTextBox1" ValidationGroup="insert11"></asp:RequiredFieldValidator>
                    <p><asp:Label ID="lblUnitPriceTextBox1" AssociatedControlID="UnitPriceTextBox1" runat="server" Text="Unit Price: "></asp:Label>
                    <asp:TextBox ID="UnitPriceTextBox1" runat="server" Text='<%# Bind("UnitPrice") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator21" runat="server" ErrorMessage="Please enter a price." ControlToValidate="UnitPriceTextBox1" ValidationGroup="insert11"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator31" runat="server" ErrorMessage="Please enter a number in currency format without symbols. eg 152.50." ControlToValidate="UnitPriceTextBox1" ValidationExpression="^\s*(?=.*[1-9])\d*(?:\.\d{1,2})?\s*$" ValidationGroup="insert11"></asp:RegularExpressionValidator>
                    <p><asp:Label ID="lblTitleTextBox1" AssociatedControlID="TitleTextBox1" runat="server" Text="Title: "></asp:Label>
                    <asp:TextBox ID="TitleTextBox1" runat="server" Text='<%# Bind("Title") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator31" runat="server" ErrorMessage="Please enter a title." ControlToValidate="TitleTextBox1" ValidationGroup="insert11"></asp:RequiredFieldValidator>
                    <p><asp:Label ID="lblQuantityTextBox1" AssociatedControlID="QuantityTextBox1" runat="server" Text="Quantity: "></asp:Label>
                    <asp:TextBox ID="QuantityTextBox1" runat="server" Text='<%# Bind("Quantity") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator41" runat="server" ErrorMessage="Please enter a quantity." ControlToValidate="QuantityTextBox1" ValidationGroup="insert11"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator11" runat="server" ErrorMessage="Please enter a number." ControlToValidate="QuantityTextBox1" ValidationExpression="^\d+$" ValidationGroup="insert11"></asp:RegularExpressionValidator>
                    <p>
                    <asp:Label ID="lblFeaturedTextBox1" AssociatedControlID="FeaturedTextBox1" runat="server" Text="Featured: "></asp:Label>
                    <asp:TextBox ID="FeaturedTextBox1" runat="server" Text='<%# Bind("Featured") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator51" runat="server" ErrorMessage="Please enter if the item is featured." ControlToValidate="FeaturedTextBox1" ValidationGroup="insert11"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator21" runat="server" ErrorMessage="Please enter a number." ControlToValidate="FeaturedTextBox1" ValidationExpression="^\d+$" ValidationGroup="insert11"></asp:RegularExpressionValidator>
                    <p>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" ValidationGroup="insert11"/>
                    <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" ValidationGroup="insert11"/>
                </EditItemTemplate>

                
            </asp:FormView>
            
    </p>
    <p>
            <asp:Button ID="btnAdminLogout" runat="server" Text="Log Out" OnClick="btnAdminLogout_Click" />
        </p>
        </form>

</asp:Content>
