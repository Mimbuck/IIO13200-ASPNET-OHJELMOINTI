<%@ Page Language="C#" AutoEventWireup="true" CodeFile="helloilta.aspx.cs" Inherits="helloilta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hello evening</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Hello</h1>
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:Button ID="btnSayHello" runat="server" Text="Tervehdi" OnClick="btnSayHello_Click"/>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
