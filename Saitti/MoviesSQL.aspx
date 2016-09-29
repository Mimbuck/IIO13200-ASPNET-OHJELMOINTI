<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MoviesSQL.aspx.cs" Inherits="MoviesSQL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <!-- DataSourcen määrittely-->
    <asp:SqlDataSource ID="srcMovies" runat="server" ConnectionString="<%$ ConnectionStrings:Movies %>" SelectCommand="SELECT [title], [director], [year], [url] FROM [Movies] ORDER BY [title]"></asp:SqlDataSource>
    <!-- GV-kontrolli esittää dataa-->
     <h1>Leffat SQL:stä</h1>
    <asp:GridView ID="gvMovies" DataSourceID="srcMovies" HeaderStyle-BackColor="Lime" HeaderStyle-BorderStyle="Dotted" BackColor="HotPink" Font-Italic="True" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="director" HeaderText="director" SortExpression="director" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
        </Columns>
<HeaderStyle BackColor="Lime" BorderStyle="Dotted"></HeaderStyle>
    </asp:GridView>
    <!-- elokuvies posterit näkyviin repeaterilla-->
    <asp:Repeater ID="myrepeater" runat="server" DataSourceID="srcMovies">
        <ItemTemplate>
            <h3><%# Eval ("title") %></h3>
            <img src="<%# Eval ("url") %>" alt="kuva puuttuu" width="200" />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

