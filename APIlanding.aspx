<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="APIlanding.aspx.vb" Inherits="APIlanding" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="MainContent_CSS" runat="server">
        <link href="css/pages/APIlanding.css" rel="stylesheet" />
    </asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    You have entered:
    <br />
    KeyID: 
    <asp:Label runat="server" ID="labelKeyID" />
    <br />
    vCode:
    <asp:Label runat="server" ID="labelvCode" />
    <br />
    <asp:Button runat="server" ID="ButtonSubmit" Text="Submit" />
    <br />
    <asp:TextBox runat="server" ID="textboxCharacters" />




    <div class="container" id="jumboContainer">


        <div class="CharacterBlock">
            <div class="row">
                <asp:Panel runat="server" ID="panelC0" Visible="true">
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <asp:Image ID="Portrait0" runat="server" ImageUrl="~/Content/Images/noImage256.jpg" CssClass="Portrait" />
                            <div class="caption">
                                <h3>
                                    <asp:Label runat="server" Text="No character name lol" ID="charName0" /></h3>
                                <p>
                                    <span class="userDetails">
                                        <asp:Label runat="server" ID="skillPoints0" Text="API not successfully loaded" />
                                        SP
                                    </span>
                                    <span class="userDetails">
                                        <asp:Label runat="server" ID="walletISK0" Text="API not successfully loaded" />
                                        ISK
                                    </span>
                                </p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel runat="server" ID="panelC1" Visible="true">
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <asp:Image ID="Portrait1" runat="server" ImageUrl="~/Content/Images/blankImage.png" />
                            <div class="caption">
                                <h3>
                                    <asp:Label runat="server" Text="No character name lol" ID="charName1" /></h3>
                                <p>
                                    <span class="userDetails">
                                        <asp:Label runat="server" ID="skillPoints1" Text="API not successfully loaded" />
                                        SP
                                    </span>
                                    <span class="userDetails">
                                        <asp:Label runat="server" ID="walletISK1" Text="API not successfully loaded" />
                                        ISK
                                    </span>
                                </p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel runat="server" ID="panelC2" Visible="true">
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <asp:Image ID="Portrait2" runat="server" ImageUrl="~/Content/Images/blankImage.png" />
                            <div class="caption">
                                <h3>
                                    <asp:Label runat="server" Text="No character name lol" ID="charName2" /></h3>
                                <p>
                                    <span class="userDetails">
                                        <asp:Label runat="server" ID="skillPoints2" Text="API not successfully loaded" />
                                        SP
                                    </span>
                                    <span class="userDetails">
                                        <asp:Label runat="server" ID="walletISK2" Text="API not successfully loaded" />
                                        ISK
                                    </span>
                                </p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </div>



    </div>

</asp:Content>

