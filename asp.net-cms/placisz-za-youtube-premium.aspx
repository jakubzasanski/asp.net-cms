<%@ Page Title="" Language="C#" MasterPageFile="~/news.master" AutoEventWireup="true" CodeBehind="placisz-za-youtube-premium.aspx.cs" Inherits="asp.net_cms.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainPhoto" runat="server">
    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource3">
        <ItemTemplate>
            
             <img src="assets/images/news/foto_main/<%# Eval("image") %>" /> <asp:Label ID="imageLabel" runat="server" Text='' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [image] FROM [Table] WHERE [id] = 1"></asp:SqlDataSource>
&nbsp;


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="server">
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2"> 
        <ItemTemplate>
            
            
            
            <asp:Label ID="title_Label" runat="server" Text='<%# Eval("title_") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [title ] AS title_ FROM [Table] WHERE [id]=1"></asp:SqlDataSource>
&nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <p>
            <asp:Label ID="paragraf1Label" runat="server" Text='<%# Eval("paragraf1") %>' />
                </p>
            <br />
            <p>
            <asp:Label ID="paragraf2Label" runat="server" Text='<%# Eval("paragraf2") %>' />
            </p>
            <br />
            <p>
            <asp:Label ID="paragraf3Label" runat="server" Text='<%# Eval("paragraf3") %>' />
            </p>
            <br />
            <p>
            <asp:Label ID="paragraf4Label" runat="server" Text='<%# Eval("paragraf4") %>' />
            </p>
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [paragraf1], [paragraf2], [paragraf3], [paragraf4] FROM [Table] WHERE [id] = 1"></asp:SqlDataSource>
    </asp:Content>
