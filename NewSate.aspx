<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewSate.aspx.vb" Inherits="detailview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [Table1] WHERE [Recipt_ID] = @Recipt_ID" InsertCommand="INSERT INTO [Table1] ([Recipt_ID], [Recipt_Name], [Ingredient_1], [Submitted_By], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes]) VALUES (@Recipt_ID, @Recipt_Name, @Ingredient_1, @Submitted_By, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preparation, @Notes)" SelectCommand="SELECT [Recipt_ID], [Recipt_Name], [Ingredient_1], [Submitted_By], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes] FROM [Table1]" UpdateCommand="UPDATE [Table1] SET [Recipt_Name] = @Recipt_Name, [Ingredient_1] = @Ingredient_1, [Submitted_By] = @Submitted_By, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Recipt_ID] = @Recipt_ID">
            <DeleteParameters>
                <asp:Parameter Name="Recipt_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipt_ID" Type="Int32" />
                <asp:Parameter Name="Recipt_Name" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipt_Name" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Recipt_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Recipt_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Recipt_ID" HeaderText="Recipt_ID" ReadOnly="True" SortExpression="Recipt_ID" />
                <asp:BoundField DataField="Recipt_Name" HeaderText="Recipt_Name" SortExpression="Recipt_Name" />
                <asp:BoundField DataField="Ingredient_1" HeaderText="Ingredient_1" SortExpression="Ingredient_1" />
                <asp:BoundField DataField="Submitted_By" HeaderText="Submitted_By" SortExpression="Submitted_By" />
                <asp:BoundField DataField="Ingredient_2" HeaderText="Ingredient_2" SortExpression="Ingredient_2" />
                <asp:BoundField DataField="Ingredient_3" HeaderText="Ingredient_3" SortExpression="Ingredient_3" />
                <asp:BoundField DataField="Ingredient_4" HeaderText="Ingredient_4" SortExpression="Ingredient_4" />
                <asp:BoundField DataField="Ingredient_5" HeaderText="Ingredient_5" SortExpression="Ingredient_5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
