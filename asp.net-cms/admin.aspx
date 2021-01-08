<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="asp.net_cms.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <p>
        Strefa zmian administratora</p>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Admin_table] WHERE [Id] = @original_Id AND (([title ] = @original_title_) OR ([title ] IS NULL AND @original_title_ IS NULL)) AND (([paragraf1] = @original_paragraf1) OR ([paragraf1] IS NULL AND @original_paragraf1 IS NULL)) AND (([paragraf2] = @original_paragraf2) OR ([paragraf2] IS NULL AND @original_paragraf2 IS NULL)) AND (([paragraf3] = @original_paragraf3) OR ([paragraf3] IS NULL AND @original_paragraf3 IS NULL)) AND (([paragraf4] = @original_paragraf4) OR ([paragraf4] IS NULL AND @original_paragraf4 IS NULL)) AND (([img] = @original_img) OR ([img] IS NULL AND @original_img IS NULL))" InsertCommand="INSERT INTO [Admin_table] ([Id], [title ], [paragraf1], [paragraf2], [paragraf3], [paragraf4], [img]) VALUES (@Id, @title_, @paragraf1, @paragraf2, @paragraf3, @paragraf4, @img)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Admin_table]" UpdateCommand="UPDATE [Admin_table] SET [title ] = @title_, [paragraf1] = @paragraf1, [paragraf2] = @paragraf2, [paragraf3] = @paragraf3, [paragraf4] = @paragraf4, [img] = @img WHERE [Id] = @original_Id AND (([title ] = @original_title_) OR ([title ] IS NULL AND @original_title_ IS NULL)) AND (([paragraf1] = @original_paragraf1) OR ([paragraf1] IS NULL AND @original_paragraf1 IS NULL)) AND (([paragraf2] = @original_paragraf2) OR ([paragraf2] IS NULL AND @original_paragraf2 IS NULL)) AND (([paragraf3] = @original_paragraf3) OR ([paragraf3] IS NULL AND @original_paragraf3 IS NULL)) AND (([paragraf4] = @original_paragraf4) OR ([paragraf4] IS NULL AND @original_paragraf4 IS NULL)) AND (([img] = @original_img) OR ([img] IS NULL AND @original_img IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_title_" Type="String" />
                    <asp:Parameter Name="original_paragraf1" Type="String" />
                    <asp:Parameter Name="original_paragraf2" Type="String" />
                    <asp:Parameter Name="original_paragraf3" Type="String" />
                    <asp:Parameter Name="original_paragraf4" Type="String" />
                    <asp:Parameter Name="original_img" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                    <asp:Parameter Name="title_" Type="String" />
                    <asp:Parameter Name="paragraf1" Type="String" />
                    <asp:Parameter Name="paragraf2" Type="String" />
                    <asp:Parameter Name="paragraf3" Type="String" />
                    <asp:Parameter Name="paragraf4" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="title_" Type="String" />
                    <asp:Parameter Name="paragraf1" Type="String" />
                    <asp:Parameter Name="paragraf2" Type="String" />
                    <asp:Parameter Name="paragraf3" Type="String" />
                    <asp:Parameter Name="paragraf4" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_title_" Type="String" />
                    <asp:Parameter Name="original_paragraf1" Type="String" />
                    <asp:Parameter Name="original_paragraf2" Type="String" />
                    <asp:Parameter Name="original_paragraf3" Type="String" />
                    <asp:Parameter Name="original_paragraf4" Type="String" />
                    <asp:Parameter Name="original_img" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="title " HeaderText="title " SortExpression="title " />
                    <asp:BoundField DataField="paragraf1" HeaderText="paragraf1" SortExpression="paragraf1" />
                    <asp:BoundField DataField="paragraf2" HeaderText="paragraf2" SortExpression="paragraf2" />
                    <asp:BoundField DataField="paragraf3" HeaderText="paragraf3" SortExpression="paragraf3" />
                    <asp:BoundField DataField="paragraf4" HeaderText="paragraf4" SortExpression="paragraf4" />
                    <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
                </Columns>
            </asp:GridView>
        </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
</body>
</html>
