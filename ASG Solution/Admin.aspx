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
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" Text="Add Image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlCO5027" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624954_co5027_asgConnectionString %>" SelectCommand="SELECT [Description], [UnitPrice], [ID], [Title] FROM [tblProducts]" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [tblProducts] WHERE [ID] = @original_ID" InsertCommand="INSERT INTO [tblProducts] ([Description], [UnitPrice], [Title]) VALUES (@Description, @UnitPrice, @Title)" UpdateCommand="UPDATE [tblProducts] SET [Description] = @Description, [UnitPrice] = @UnitPrice, [Title] = @Title WHERE [ID] = @original_ID">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
            <h3>Add Products</h3>
        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="sqlCO5027" DefaultMode="Insert">
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
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <asp:RequiredFieldValidator ID="ReqValDescription" runat="server" ControlToValidate="DescriptionTextBox" ErrorMessage="Cannot leave field empty."></asp:RequiredFieldValidator>
                    </br>
                    </br>
                    UnitPrice:
                    <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
                    <asp:RequiredFieldValidator ID="ReqValUnitPrice" runat="server" ControlToValidate="UnitPriceTextBox" ErrorMessage="Cannot leave field empty."></asp:RequiredFieldValidator>
                    </br><asp:RegularExpressionValidator ID="RegexUnitPrice" runat="server" ValidationExpression="^[0-9]+[.][0-9]{2}$" ControlToValidate="UnitPriceTextBox" ErrorMessage="Enter in a valid currency format. Eg. '156.34'"></asp:RegularExpressionValidator>
                    </br>
                    </br>
                    Title:
                    <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                    <asp:RequiredFieldValidator ID="ReqValTitle" runat="server" ControlToValidate="TitleTextBox" ErrorMessage="Cannot leave field empty."></asp:RequiredFieldValidator>
                    </br>
                    </br>
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
