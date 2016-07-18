<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-4">
            <h2>API Entry</h2>
            <p>
                No this isn't styled yet, just use it :D
            </p>
            <span>
                <asp:Label runat="server" ID="labelKeyID" Text="KeyID: " />
                <asp:TextBox runat="server" ID="txtKeyID" />
            </span>
            <br />
            <span>
                <asp:Label runat="server" ID="labelvCode" Text="vCode: " />
                <asp:TextBox runat="server" ID="txtvCode" />
            </span>
            <p>
                <asp:Button runat="server" CssClass="btn btn-default" ID="SubmitButton" Text="API Entry &raquo;" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>Text</h2>
            <p>
                I'll write something here at some point, I promise
            </p>
            <p>
                <a class="btn btn-default" href="http://localhost:59543/Default">A Button! &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Text</h2>
            <p>
                I'll write something here at some point, I promise
            </p>
            <p>
                <a class="btn btn-default" href="http://localhost:59543/Default">A Button! &raquo;</a>
            </p>
        </div>
    </div>








</asp:Content>
