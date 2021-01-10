<%@ Page Title="Strona główna - Portal Informacyjny" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="asp.net_cms.index1" %>

<%--Banner--%>
<asp:Content ID="Content4" ContentPlaceHolderID="homeBanner__img" runat="server">
    <img src="assets/images/background.jpg" />
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="homeBanner__text" runat="server">
    Informacje
</asp:Content>

<%--WPIS 1--%>
        <%--iamge--%>
<asp:Content ID="Content3" ContentPlaceHolderID="NewsPhoto_1" runat="server">


    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1image">
        <ItemTemplate>
          
           <asp:Label ID="titleLabel" runat="server" Text='' />
            <a href="/bezprzewodowe-ladowanie-iphonea.aspx"><img src="assets/images/news/foto_mini/<%# Eval("image") %>" /></a>
            
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1image" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [image] FROM [Table] WHERE [id] = 3"></asp:SqlDataSource>
    

</asp:Content>
        <%--title--%>
<asp:Content ID="Content8" ContentPlaceHolderID="NewsTitle_1" runat="server">
<asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1Title">
        <ItemTemplate>
          
           <a href="/bezprzewodowe-ladowanie-iphonea.aspx"> <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' /> </a>
            
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1Title" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [title] FROM [Table] WHERE [id] = 3"></asp:SqlDataSource>
    

</asp:Content>
        <%--date--%>
<asp:Content ID="Content11" ContentPlaceHolderID="NewsDate_1" runat="server">
<asp:DataList ID="DataList11" runat="server" DataSourceID="SqlDataSource1Date">
        <ItemTemplate>
           
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1Date" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [date] FROM [Table] WHERE [id] = 3"></asp:SqlDataSource>

</asp:Content>
         <%--paragraf--%>
<asp:Content ID="Content14" ContentPlaceHolderID="NewsShortDesc_1" runat="server">
 <asp:DataList ID="DataList12" runat="server" DataSourceID="SqlDataSource1paragraf">
        <ItemTemplate>
            paragraf1:
            <asp:Label ID="paragraf1Label" runat="server" Text='<%# Eval("paragraf1") %>' />
            ...<a href="/technologia-micro-led.aspx"><u>więcej</u></a>

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1paragraf" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [paragraf1] FROM [Table] WHERE [id] = 3"></asp:SqlDataSource>

</asp:Content>

<%--WPIS 2--%>
        <%--iamge--%>
<asp:Content ID="Content1" ContentPlaceHolderID="NewsPhoto_2" runat="server">


    <asp:DataList ID="DataList10" runat="server" DataSourceID="SqlDataSource2image">
        <ItemTemplate>
          
           <asp:Label ID="titleLabel" runat="server" Text='' />
            <a href="/technologia-micro-led.aspx"><img src="assets/images/news/foto_mini/<%# Eval("image") %>" /></a>
            
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2image" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [image] FROM [Table] WHERE [id] = 2"></asp:SqlDataSource>
    

</asp:Content>
        <%--title--%>
<asp:Content ID="Content6" ContentPlaceHolderID="NewsTitle_2" runat="server">
<asp:DataList ID="DataList7" runat="server" DataSourceID="SqlDataSource2Title">
        <ItemTemplate>
          
           <a href="/technologia-micro-led.aspx"> <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' /> </a>
            
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2Title" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [title] FROM [Table] WHERE [id] = 2"></asp:SqlDataSource>
    

</asp:Content>
        <%--date--%>
<asp:Content ID="Content9" ContentPlaceHolderID="NewsDate_2" runat="server">
<asp:DataList ID="DataList8" runat="server" DataSourceID="SqlDataSource2Date">
        <ItemTemplate>
           
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2Date" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [date] FROM [Table] WHERE [id] = 2"></asp:SqlDataSource>

</asp:Content>
         <%--paragraf--%>
<asp:Content ID="Content12" ContentPlaceHolderID="NewsShortDesc_2" runat="server">
 <asp:DataList ID="DataList9" runat="server" DataSourceID="SqlDataSource2paragraf">
        <ItemTemplate>
            paragraf1:
            <asp:Label ID="paragraf1Label" runat="server" Text='<%# Eval("paragraf1") %>' />
            ...<a href="/technologia-micro-led.aspx"><u>więcej</u></a>

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2paragraf" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [paragraf1] FROM [Table] WHERE [id] = 2"></asp:SqlDataSource>

</asp:Content>

<%--WPIS 3--%>
        <%--iamge--%>
<asp:Content ID="Content2" ContentPlaceHolderID="NewsPhoto_3" runat="server">
   
    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>



            <asp:Label ID="imageLabel" runat="server" Text='' />
             <a href="/placisz-za-youtube-premium.aspx"><img src="assets/images/news/foto_mini/<%# Eval("image") %>" /></a>
            
      
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT[image] FROM [Table] WHERE [id]  = 1"></asp:SqlDataSource>

</asp:Content>
        <%--title--%>
<asp:Content ID="Content7" ContentPlaceHolderID="NewsTitle_3" runat="server">
    <a href="/placisz-za-youtube-premium.aspx"><asp:DataList ID="DataList5" runat="server" DataSourceID="SqlDataSource3">
        <ItemTemplate>
            
            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
            
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [title] FROM [Table] WHERE [id]=1"></asp:SqlDataSource>
    </a>

</asp:Content>
        <%--date--%>
<asp:Content ID="Content10" ContentPlaceHolderID="NewsDate_3" runat="server">
<asp:DataList ID="DataList4" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
           
            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />

        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [date] FROM [Table] WHERE [id] = 1"></asp:SqlDataSource>

</asp:Content>
        <%--paragraf--%>
<asp:Content ID="Content13" ContentPlaceHolderID="NewsShortDesc_3" runat="server">
<asp:DataList ID="DataList6" runat="server" DataSourceID="SqlDataSource4">
    <ItemTemplate>
        
        <asp:Label ID="paragraf1Label" runat="server" Text='<%# Eval("paragraf1") %>' />

    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [paragraf1] FROM [Table] WHERE [id] = 1"></asp:SqlDataSource>
    ... <a href="/placisz-za-youtube-premium.aspx"><u>więcej</u></a>
</asp:Content>