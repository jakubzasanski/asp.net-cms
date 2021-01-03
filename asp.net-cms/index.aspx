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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND (([imie] = @original_imie) OR ([imie] IS NULL AND @original_imie IS NULL)) AND (([nazwisko] = @original_nazwisko) OR ([nazwisko] IS NULL AND @original_nazwisko IS NULL)) AND (([login] = @original_login) OR ([login] IS NULL AND @original_login IS NULL)) AND (([haslo] = @original_haslo) OR ([haslo] IS NULL AND @original_haslo IS NULL))" InsertCommand="INSERT INTO [Table] ([Id], [imie], [nazwisko], [login], [haslo]) VALUES (@Id, @imie, @nazwisko, @login, @haslo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [imie] = @imie, [nazwisko] = @nazwisko, [login] = @login, [haslo] = @haslo WHERE [Id] = @original_Id AND (([imie] = @original_imie) OR ([imie] IS NULL AND @original_imie IS NULL)) AND (([nazwisko] = @original_nazwisko) OR ([nazwisko] IS NULL AND @original_nazwisko IS NULL)) AND (([login] = @original_login) OR ([login] IS NULL AND @original_login IS NULL)) AND (([haslo] = @original_haslo) OR ([haslo] IS NULL AND @original_haslo IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_imie" Type="String" />
                <asp:Parameter Name="original_nazwisko" Type="String" />
                <asp:Parameter Name="original_login" Type="String" />
                <asp:Parameter Name="original_haslo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="imie" Type="String" />
                <asp:Parameter Name="nazwisko" Type="String" />
                <asp:Parameter Name="login" Type="String" />
                <asp:Parameter Name="haslo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="imie" Type="String" />
                <asp:Parameter Name="nazwisko" Type="String" />
                <asp:Parameter Name="login" Type="String" />
                <asp:Parameter Name="haslo" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_imie" Type="String" />
                <asp:Parameter Name="original_nazwisko" Type="String" />
                <asp:Parameter Name="original_login" Type="String" />
                <asp:Parameter Name="original_haslo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="imie" HeaderText="imie" SortExpression="imie" />
                <asp:BoundField DataField="nazwisko" HeaderText="nazwisko" SortExpression="nazwisko" />
                <asp:BoundField DataField="login" HeaderText="login" SortExpression="login" />
                <asp:BoundField DataField="haslo" HeaderText="haslo" SortExpression="haslo" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
