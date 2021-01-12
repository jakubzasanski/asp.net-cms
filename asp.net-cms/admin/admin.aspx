<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="asp.net_cms.admin.admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="paragraf1" HeaderText="paragraf1" SortExpression="paragraf1" />
                <asp:BoundField DataField="paragraf2" HeaderText="paragraf2" SortExpression="paragraf2" />
                <asp:BoundField DataField="paragraf3" HeaderText="paragraf3" SortExpression="paragraf3" />
                <asp:BoundField DataField="paragraf4" HeaderText="paragraf4" SortExpression="paragraf4" />
                <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND (([title] = @original_title) OR ([title] IS NULL AND @original_title IS NULL)) AND (([paragraf1] = @original_paragraf1) OR ([paragraf1] IS NULL AND @original_paragraf1 IS NULL)) AND (([paragraf2] = @original_paragraf2) OR ([paragraf2] IS NULL AND @original_paragraf2 IS NULL)) AND (([paragraf3] = @original_paragraf3) OR ([paragraf3] IS NULL AND @original_paragraf3 IS NULL)) AND (([paragraf4] = @original_paragraf4) OR ([paragraf4] IS NULL AND @original_paragraf4 IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))" InsertCommand="INSERT INTO [Table] ([Id], [title], [paragraf1], [paragraf2], [paragraf3], [paragraf4], [image], [date]) VALUES (@Id, @title, @paragraf1, @paragraf2, @paragraf3, @paragraf4, @image, @date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [title] = @title, [paragraf1] = @paragraf1, [paragraf2] = @paragraf2, [paragraf3] = @paragraf3, [paragraf4] = @paragraf4, [image] = @image, [date] = @date WHERE [Id] = @original_Id AND (([title] = @original_title) OR ([title] IS NULL AND @original_title IS NULL)) AND (([paragraf1] = @original_paragraf1) OR ([paragraf1] IS NULL AND @original_paragraf1 IS NULL)) AND (([paragraf2] = @original_paragraf2) OR ([paragraf2] IS NULL AND @original_paragraf2 IS NULL)) AND (([paragraf3] = @original_paragraf3) OR ([paragraf3] IS NULL AND @original_paragraf3 IS NULL)) AND (([paragraf4] = @original_paragraf4) OR ([paragraf4] IS NULL AND @original_paragraf4 IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_title" Type="String" />
                <asp:Parameter Name="original_paragraf1" Type="String" />
                <asp:Parameter Name="original_paragraf2" Type="String" />
                <asp:Parameter Name="original_paragraf3" Type="String" />
                <asp:Parameter Name="original_paragraf4" Type="String" />
                <asp:Parameter Name="original_image" Type="String" />
                <asp:Parameter Name="original_date" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="paragraf1" Type="String" />
                <asp:Parameter Name="paragraf2" Type="String" />
                <asp:Parameter Name="paragraf3" Type="String" />
                <asp:Parameter Name="paragraf4" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="date" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="paragraf1" Type="String" />
                <asp:Parameter Name="paragraf2" Type="String" />
                <asp:Parameter Name="paragraf3" Type="String" />
                <asp:Parameter Name="paragraf4" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="date" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_title" Type="String" />
                <asp:Parameter Name="original_paragraf1" Type="String" />
                <asp:Parameter Name="original_paragraf2" Type="String" />
                <asp:Parameter Name="original_paragraf3" Type="String" />
                <asp:Parameter Name="original_paragraf4" Type="String" />
                <asp:Parameter Name="original_image" Type="String" />
                <asp:Parameter Name="original_date" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>