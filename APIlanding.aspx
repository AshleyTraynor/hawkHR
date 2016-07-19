<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="APIlanding.aspx.vb" Inherits="APIlanding" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent_CSS" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    You have entered:
    <br />
    KeyID:  <asp:Label runat="server" ID="labelKeyID" />
    <br />
    vCode: <asp:Label runat="server" ID="labelvCode" />
    <br />
    <asp:Button runat="server" ID="ButtonSubmit" Text="Submit"/>
    <br />
    <asp:ListBox runat="server" ID="listboxCharacters" />
    <br />
    <asp:TextBox runat="server" ID="textboxCharacters" />


</asp:Content>

