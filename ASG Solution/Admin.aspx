<%@ Page Title="" Language="C#" MasterPageFile="SiteBasic.Master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="ASG_Solution.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <h1>Admin</h1>
        <h3>Edit/Delete Products</h3>
    <p>
        <asp:GridView ID="GridViewProducts" runat="server" AutoGenerateColumns="False" DataSourceID="sqlCO5027" GridLines="None" Width="572px" DataKeyNames="ID">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="UnitPrice" HeaderText="Price" SortExpression="UnitPrice" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Featured" HeaderText="Featured" SortExpression="Featured" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" Text="Add Image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlCO5027" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624954_co5027_asgConnectionString %>" SelectCommand="SELECT [Description], [UnitPrice], [ID], [Title], [Quantity], [Featured] FROM [tblProducts]" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [tblProducts] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [tblProducts] ([Description], [UnitPrice], [Title], [Quantity], [Featured]) VALUES (@Description, @UnitPrice, @Title, @Quantity, @Featured)" UpdateCommand="UPDATE [tblProducts] SET [Description] = @Description, [UnitPrice] = @UnitPrice, [Title] = @Title, [Quantity] = @Quantity, [Featured] = @Featured WHERE [ID] = @original_ID">
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
    </p>
            <h3>Add Products</h3>
        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="sqlCO5027" DefaultMode="Insert" OnPageIndexChanging="FormView1_PageIndexChanging">
                <EditItemTemplate>
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    UnitPrice:
                    <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                    <br />
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    Title:
                    <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    Featured:
                    <asp:TextBox ID="FeaturedTextBox" runat="server" Text='<%# Bind("Featured") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a description." ControlToValidate="DescriptionTextBox"></asp:RequiredFieldValidator>
                    <br />UnitPrice:
                    <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a price." ControlToValidate="UnitPriceTextBox"></asp:RequiredFieldValidator>
                    <br />Title:
                    <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter a title." ControlToValidate="TitleTextBox"></asp:RequiredFieldValidator>
                    <br />Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter a quantity." ControlToValidate="QuantityTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a number." ControlToValidate="QuantityTextBox" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                    <br />
                    Featured:
                    <asp:TextBox ID="FeaturedTextBox" runat="server" Text='<%# Bind("Featured") %>' />
                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter if the item is featured." ControlToValidate="FeaturedTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a number." ControlToValidate="FeaturedTextBox" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    UnitPrice:
                    <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>' />
                    <br />
                    ID:
                    <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    Title:
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    Featured:
                    <asp:Label ID="FeaturedLabel" runat="server" Text='<%# Bind("Featured") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            
    </p>
    <p>
            <asp:Button ID="btnAdminLogout" runat="server" Text="Log Out" OnClick="btnAdminLogout_Click" />
        </p>
</form>
</asp:Content>
