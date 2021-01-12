<%@ Page Title="" Language="C#" MasterPageFile="~/nested/news.master" AutoEventWireup="true" CodeBehind="Techland.aspx.cs" Inherits="asp.net_cms.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainPhoto" runat="server">
   

    <asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSourceImage">
    <ItemTemplate>
       
        <asp:Label ID="imageLabel" runat="server" Text='' />
         <img src="/assets/images/news/foto_main/<%# Eval("image") %>" />
        <br />
<br />
    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSourceImage" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [image] FROM [Table] WHERE [id] = 5"></asp:SqlDataSource>


</asp:Content>
   <%--TITLE--%>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSourceTittle1">
        <ItemTemplate>
            
            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSourceTittle1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [title] FROM [Table] WHERE [id] =5"></asp:SqlDataSource>
&nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <%--PARAGRAF 1--%>
<asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSourceParagraf1">
    <ItemTemplate>
       
        <p><asp:Label ID="paragraf1Label" runat="server" Text='<%# Eval("paragraf1") %>' /></p>
        <br />
<br />
    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSourceParagraf1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [paragraf1] FROM [Table] WHERE [id] = 5"></asp:SqlDataSource>
    <%--PARAGRAF 2--%>
    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSourceParagraf2">
    <ItemTemplate>
       
        <p><asp:Label ID="paragraf2Label" runat="server" Text='<%# Eval("paragraf2") %>' /></p>
        <br />
<br />
    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSourceParagraf2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [paragraf2] FROM [Table] WHERE [id] = 5"></asp:SqlDataSource>

     <%--PARAGRAF 3--%>
        <asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSourceParagraf3">
    <ItemTemplate>
       
        <p><asp:Label ID="paragraf3Label" runat="server" Text='<%# Eval("paragraf3") %>' /></p>
        <br />
<br />
    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSourceParagraf3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [paragraf3] FROM [Table] WHERE [id] = 5"></asp:SqlDataSource>

    <%--PARAGRAF 3--%>
     <asp:DataList ID="DataList6" runat="server" DataSourceID="SqlDataSourceParagraf4">
    <ItemTemplate>
       
        <p><asp:Label ID="paragraf4Label" runat="server" Text='<%# Eval("paragraf4") %>' /></p>
        <br />
<br />
    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSourceParagraf4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [paragraf4] FROM [Table] WHERE [id] = 5"></asp:SqlDataSource>


</asp:Content>

