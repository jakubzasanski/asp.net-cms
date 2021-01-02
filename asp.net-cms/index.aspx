<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="asp.net_cms.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    HELLO WORLD!
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Width="280px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Tabela_testowa] WHERE [Id] = @original_Id AND (([imie ] = @original_imie_) OR ([imie ] IS NULL AND @original_imie_ IS NULL)) AND (([nazwisko ] = @original_nazwisko_) OR ([nazwisko ] IS NULL AND @original_nazwisko_ IS NULL))" InsertCommand="INSERT INTO [Tabela_testowa] ([Id], [imie ], [nazwisko ]) VALUES (@Id, @imie_, @nazwisko_)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Tabela_testowa]" UpdateCommand="UPDATE [Tabela_testowa] SET [imie ] = @imie_, [nazwisko ] = @nazwisko_ WHERE [Id] = @original_Id AND (([imie ] = @original_imie_) OR ([imie ] IS NULL AND @original_imie_ IS NULL)) AND (([nazwisko ] = @original_nazwisko_) OR ([nazwisko ] IS NULL AND @original_nazwisko_ IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_imie_" Type="String" />
                <asp:Parameter Name="original_nazwisko_" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="imie_" Type="String" />
                <asp:Parameter Name="nazwisko_" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="imie_" Type="String" />
                <asp:Parameter Name="nazwisko_" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_imie_" Type="String" />
                <asp:Parameter Name="original_nazwisko_" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="imie " HeaderText="imie " SortExpression="imie " />
                <asp:BoundField DataField="nazwisko " HeaderText="nazwisko " SortExpression="nazwisko " />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
