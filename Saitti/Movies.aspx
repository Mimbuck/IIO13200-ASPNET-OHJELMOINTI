<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Movies.aspx.cs" Inherits="Movies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <!-- XMLDatasource määrittely-->
    <asp:XmlDataSource ID="srcMovies" runat="server" DataFile="~/App_Data/Movies.xml" XPath="//Movie"></asp:XmlDataSource>
    <!-- Gridview-kontrolli esittää datan-->
    <h1>Leffat XML:stä</h1>
    <asp:GridView ID="gvMovies" DataSourceID="srcMovies" HeaderStyle-BackColor="Lime" HeaderStyle-BorderStyle="Dotted" BackColor="HotPink" Font-Italic runat="server"></asp:GridView>
    <!-- datan esittäminen html:ssa-->
    <h1>Elokuvat listattuna</h1>
    <asp:Repeater ID="Repeater1" DataSourceID="srcMovies" runat="server">
        <HeaderTemplate>
            <table border="1" style="width:50%">
                <tr>
                    <td>Elokuva</td>
                    <td>Ohjaaja</td>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td><%#Eval("Name") %></td>
                <td><%#Eval("Director") %></td>
            </tr>

      <!--    <p>Title: <%# Eval("Name")  %> Director: <%#Eval("Director") %></p> -->
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

