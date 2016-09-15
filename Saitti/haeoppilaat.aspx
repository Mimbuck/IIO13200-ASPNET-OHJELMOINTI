<%@ Page Language="C#" AutoEventWireup="true" CodeFile="haeoppilaat.aspx.cs" Inherits="haeoppilaat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Oppilaat syksy 2016</h1>
        <div id="buttoset">
            <asp:Button ID="btnGet3" runat="server" Text="Hae 3 oppilasta" onclick="btnGet3_Click"/>
            <asp:Button ID="btnGetAll" runat="server" Text="Hae oppilaat tietokannasta" OnClick="btnGetAll_Click" />
            <asp:Button ID="btnGet3Oppilas" runat="server" Text="Hae 4 oppilas oliota" OnClick="btnGet3Oppilas_Click" />
        </div>
        <div id="data">
            <asp:GridView ID="gvStudents" runat="server"></asp:GridView>


        </div>
        <div id="footer">
            <asp:Label ID="lblMessages" runat="server"></asp:Label>



        </div>
    </div>
    </form>
</body>
</html>
