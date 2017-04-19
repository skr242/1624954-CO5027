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
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UploadImage.aspx?Id={0}" Text="Set Image" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlCO5027" runat="server" ConnectionString="<%$ ConnectionStrings:db_1624954_co5027_asgConnectionString %>" SelectCommand="SELECT [Description], [UnitPrice], [ID] FROM [tblProducts]" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [tblProducts] WHERE [ID] = @original_ID AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([UnitPrice] = @original_UnitPrice) OR ([UnitPrice] IS NULL AND @original_UnitPrice IS NULL))" InsertCommand="INSERT INTO [tblProducts] ([Description], [UnitPrice]) VALUES (@Description, @UnitPrice)" UpdateCommand="UPDATE [tblProducts] SET [Description] = @Description, [UnitPrice] = @UnitPrice WHERE [ID] = @original_ID AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([UnitPrice] = @original_UnitPrice) OR ([UnitPrice] IS NULL AND @original_UnitPrice IS NULL))" ConflictDetection="CompareAllValues">
            <DeleteParameters>
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_UnitPrice" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="UnitPrice" Type="String" />
                <asp:Parameter Name="original_ID" Type="Int32" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_UnitPrice" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
            <h3>Add Products</h3>
        <p>
            <asp:FormView ID="FVInsertProduct" runat="server" DataKeyNames="ID" DataSourceID="sqlCO5027" DefaultMode="Insert">
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
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    UnitPrice:
                    <asp:TextBox ID="UnitPriceTextBox" runat="server" Text='<%# Bind("UnitPrice") %>' />
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
