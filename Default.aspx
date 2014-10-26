﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [Table1] WHERE [Recipt_ID] = @Recipt_ID" InsertCommand="INSERT INTO [Table1] ([Recipt_ID], [Recipt_Name], [Submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes]) VALUES (@Recipt_ID, @Recipt_Name, @Submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preparation, @Notes)" SelectCommand="SELECT [Recipt_ID], [Recipt_Name], [Submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes] FROM [Table1]" UpdateCommand="UPDATE [Table1] SET [Recipt_Name] = @Recipt_Name, [Submitted_By] = @Submitted_By, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [Recipt_ID] = @Recipt_ID">
            <DeleteParameters>
                <asp:Parameter Name="Recipt_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipt_ID" Type="Int32" />
                <asp:Parameter Name="Recipt_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Recipt_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Recipt_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewSate.aspx">Add a New Recipt</asp:HyperLink>
        <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Recipt_ID" DataSourceID="SqlDataSource1" PageSize="100" style="margin-right: 107px">
            <Columns>
                <asp:BoundField DataField="Recipt_Name" HeaderText="Recipt_Name" SortExpression="Recipt_Name" />
                <asp:BoundField DataField="Submitted_By" HeaderText="Submitted_By" SortExpression="Submitted_By" />
                <asp:HyperLinkField DataNavigateUrlFields="Recipt_ID" DataNavigateUrlFormatString="DetailView.aspx?Recipt_ID={0}" Text="ViewDetail" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
