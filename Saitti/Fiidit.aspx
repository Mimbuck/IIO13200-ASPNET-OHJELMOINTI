﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fiidit.aspx.cs" Inherits="Fiidit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:Button ID="btnGetFeeds" runat="server" Text="Feedit Iltasanomat" OnClick="btnGetFeeds_Click"/>
    <asp:Button ID="btnGetFeedsYle" runat="server" Text="Feedit Yle" OnClick="btnGetFeedsYle_Click" />
    <asp:XmlDataSource ID="myDataSource" runat="server"></asp:XmlDataSource>
    <div id="myDiv" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

