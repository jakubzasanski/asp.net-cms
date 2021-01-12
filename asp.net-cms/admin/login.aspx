<%@ Page Title="" Language="C#" MasterPageFile="~/admin/login.master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="asp.net_cms.admin.login" %>

<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    <div>
        <table style="margin:auto;border:5px solid white">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Login"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Haslo"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    </td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click1" /></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="lblErrorMessage" runat="server" Text="Zle dane logowania" ForeColor="Red"></asp:Label></td>
            </tr>
        </table>
    </div>
</asp:Content>