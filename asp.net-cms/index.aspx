<%@ Page Title="Strona główna - Portal Informacyjny" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="asp.net_cms.index1" %>

<%--Banner--%>
<asp:Content ID="Content4" ContentPlaceHolderID="homeBanner__img" runat="server">
    <img src="assets/images/background.jpg" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="homeBanner__text" runat="server">
    Informacje
</asp:Content>

<%--WPIS 1--%>
<asp:Content ID="Content3" ContentPlaceHolderID="NewsPhoto_1" runat="server">
    <a href="/bezprzewodowe-ladowanie-iphonea.aspx">
        <img src="assets/images/news/foto_mini/news_1.jpg" />
    </a>
</asp:Content>

<asp:Content ID="NewsTitle" ContentPlaceHolderID="NewsTitle_1" runat="server">
    <a href="/bezprzewodowe-ladowanie-iphonea.aspx">
        Bezprzewodowe ładowanie iPhone’a i Apple Watcha Macbookiem? Poproszę jak najszybciej!
    </a>
</asp:Content>

<asp:Content ID="Content8" ContentPlaceHolderID="NewsDate_1" runat="server">
06 - 01 - 2021
</asp:Content>

<asp:Content ID="Content11" ContentPlaceHolderID="NewsShortDesc_1" runat="server">
Ładowanie iPhone'a i Apple Watcha bezpośrednio od Macbooka wydaje się idealnym rozwiązaniem dla wszystkich którzy mają dość tonięcia w kablach. Warto jednak mieć na uwadze... <a href="/bezprzewodowe-ladowanie-iphonea.aspx"><u>więcej</u></a>
</asp:Content>

<%--WPIS 2--%>
<asp:Content ID="Content1" ContentPlaceHolderID="NewsPhoto_2" runat="server">
<a href="/technologia-micro-led.aspx"><img src="assets/images/news/foto_mini/news_2.jpg" /></a>
</asp:Content>

<asp:Content ID="Content6" ContentPlaceHolderID="NewsTitle_2" runat="server">
<a href="/technologia-micro-led.aspx">Technologia MICRO LED wkracza wreszcie do domów! Samsung pokazał nowe telewizory</a>
</asp:Content>

<asp:Content ID="Content9" ContentPlaceHolderID="NewsDate_2" runat="server">
06 - 01 - 2021
</asp:Content>

<asp:Content ID="Content12" ContentPlaceHolderID="NewsShortDesc_2" runat="server">
Samsung zaprezentował właśnie nową linię telewizorów na 2021 rok. O stagnacji nie ma mowy - pokazano nie tylko nowego QLEDA, ale koreański producent wszedł też wreszcie do świata domowych ekranów MICRO LED... <a href="/technologia-micro-led.aspx"><u>więcej</u></a>
</asp:Content>

<%--WPIS 3--%>
<asp:Content ID="Content2" ContentPlaceHolderID="NewsPhoto_3" runat="server">
   
    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>




             <a href="/placisz-za-youtube-premium.aspx"><img src="assets/images/news/foto_mini/<%# Eval("image") %>" /></a>
            <asp:Label ID="imageLabel" runat="server" Text='' />
      
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT[image] FROM [Table] WHERE [id]  = 1"></asp:SqlDataSource>

</asp:Content>

<asp:Content ID="Content7" ContentPlaceHolderID="NewsTitle_3" runat="server">
    <a href="/placisz-za-youtube-premium.aspx"><asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource3">
        <ItemTemplate>
            
            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
            
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [title] FROM [Table] WHERE [id]=1"></asp:SqlDataSource>
    </a>

</asp:Content>

<asp:Content ID="Content10" ContentPlaceHolderID="NewsDate_3" runat="server">
<asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
           
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [date] FROM [Table] WHERE [id] = 1"></asp:SqlDataSource>

</asp:Content>

<asp:Content ID="Content13" ContentPlaceHolderID="NewsShortDesc_3" runat="server">
<asp:DataList ID="DataList6" runat="server" DataSourceID="SqlDataSource4">
    <ItemTemplate>
        
        <asp:Label ID="paragraf1Label" runat="server" Text='<%# Eval("paragraf1") %>' />

    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [paragraf1] FROM [Table] WHERE [id] = 1"></asp:SqlDataSource>
    ... <a href="/placisz-za-youtube-premium.aspx"><u>więcej</u></a>
</asp:Content>