<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="asp.net_cms.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                        <asp:Button ID="btnLogin" runat="server" Text="Login" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lblErrorMessage" runat="server" Text="Zle dane logowania" ForeColor="Red"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
