<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="SQLTest.aspx.vb" Inherits="SQLTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent_CSS" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <span>
        <asp:TextBox runat="server" ID="textbox" />
        <asp:Button runat="server" ID="Button" Text="Button" />
    </span>
    <span>
        <asp:Label ID="Label1" runat="server" Text="Label" />
    </span>

</asp:Content>

