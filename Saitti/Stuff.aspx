<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Stuff.aspx.cs" Inherits="crud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Oppilaat %>" 
        DeleteCommand="DELETE FROM [testi] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [testi] ([name], [description]) VALUES (@name, @description)" 
        SelectCommand="SELECT [id], [name], [description] FROM [testi]" 
        UpdateCommand="UPDATE [testi] SET [name] = @name, [description] = @description WHERE [id] = @id">
        
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="description" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <h1 class="w3-container w3-deep-purple">Stuffeja maailmalta</h1>
    <div class="w3-row">
        <!-- vasemmanpuoleinen esittää kaikki stuffit-->
        <div class="w3-container w3-half">
            <asp:GridView ID="gvStuff" runat="server" AutoGenerateColumns="false" OnSelectedIndexChanged="gvStuff_SelectedIndexChanged1" DataSourceID="SqlDataSource1"></asp:GridView>
            <Columns>
                <asp:ButtonField DataTextField="id" HeaderText="ID" />
                <asp:BoundField DataField="name" HeaderText="Nimi"/>
                <asp:BoundField DataField="description" HeaderText="Kuvaus"/>
            </Columns>
        </div>
        <!--oikeanpuoleinen valitun stuffin muokkaus-->
        <div class="w3-container w3-half">
            <h2 class="w3-container w3-deep-orange">Valittu: <asp:Literal ID="myStuff" runat="server"/></h2>
            <asp:DetailsView ID="dvStuff" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource1"></asp:DetailsView>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

