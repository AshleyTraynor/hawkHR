<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="Audit.aspx.vb" Inherits="Audit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent_CSS" runat="server">
    <link href="css/pages/Audit.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">

    <asp:Panel runat="server" ID="charSelectPanel" Visible="true">
        <div class="container" id="jumboContainer">

            <div class="CharacterBlock">
                <div class="row">
                    <asp:Panel runat="server" ID="panelC0" Visible="true">
                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail" id="selectChar0Block" runat="server">
                                <asp:Image ID="Portrait0" runat="server" ImageUrl="~/Content/Images/blankimage.jpg" CssClass="Portrait" />
                                <div class="caption">
                                    <h3>
                                        <asp:Label runat="server" Text="No character name lol" ID="charName0" CssClass="strongLabel" /></h3>
                                    <p>
                                        <span class="userDetails">
                                            <asp:Label runat="server" ID="corporationName0" Text="No Corp" CssClass="strongLabel" />
                                        </span>
                                        <span class="userDetails">
                                            <asp:Label runat="server" ID="allianceName0" Visible="false" CssClass="strongLabel" />
                                        </span>
                                        <br />
                                        <span class="userDetails">Skill points:
                                        <asp:Label runat="server" ID="skillPoints0" Text="API not successfully loaded" CssClass="strongLabel" />
                                            SP
                                        </span>
                                        <span class="userDetails">Wallet:
                                        <asp:Label runat="server" ID="walletISK0" Text="API not successfully loaded" CssClass="strongLabel" />
                                            ISK
                                        </span>
                                        <span class="userDetails">Currently Training:
                                        <asp:Label runat="server" ID="skillTraining0" Text="API not successfully loaded" CssClass="strongLabel" />
                                        </span>
                                        <br />
                                        <span class="userDetails">Last seen at 
                                    <asp:Label runat="server" ID="lastSeenLocation0" Text="somewhere" CssClass="strongLabel" />
                                            in a 
                                    <asp:Label runat="server" ID="lastSeenShip0" Text="ship" CssClass="strongLabel" />
                                            <asp:Label runat="server" ID="lastSeenShipName0" />
                                        </span>
                                    </p>
                                    <p>
                                        <asp:Button runat="server" ID="btnSelect0" CssClass="btn btn-primary" Text="Select" />
                                    </p>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="panelC1" Visible="true">
                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail" id="selectChar1Block" runat="server">
                                <asp:Image ID="Portrait1" runat="server" ImageUrl="~/Content/Images/blankImage.png" />
                                <div class="caption">
                                    <h3>
                                        <asp:Label runat="server" Text="No character name lol" ID="charName1" CssClass="strongLabel" /></h3>
                                    <p>
                                        <span class="userDetails">
                                            <asp:Label runat="server" ID="corporationName1" Text="No Corp" CssClass="strongLabel" />
                                        </span>
                                        <span class="userDetails">
                                            <asp:Label runat="server" ID="allianceName1" Visible="false" CssClass="strongLabel" />
                                        </span>
                                        <br />
                                        <span class="userDetails">Skill points:
                                        <asp:Label runat="server" ID="skillPoints1" Text="API not successfully loaded" CssClass="strongLabel" />
                                            SP
                                        </span>
                                        <span class="userDetails">Wallet:
                                        <asp:Label runat="server" ID="walletISK1" Text="API not successfully loaded" CssClass="strongLabel" />
                                            ISK
                                        </span>
                                        <span class="userDetails">Currently Training:
                                        <asp:Label runat="server" ID="skillTraining1" Text="API not successfully loaded" CssClass="strongLabel" />
                                        </span>
                                        <br />
                                        <span class="userDetails">Last seen at 
                                    <asp:Label runat="server" ID="lastSeenLocation1" Text="somewhere" CssClass="strongLabel" />
                                            in a 
                                    <asp:Label runat="server" ID="lastSeenShip1" Text="ship" CssClass="strongLabel" />
                                            <asp:Label runat="server" ID="lastSeenShipName1" />
                                        </span>
                                    </p>
                                    <p>
                                        <asp:Button runat="server" ID="btnSelect1" CssClass="btn btn-primary" Text="Select" />
                                    </p>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel runat="server" ID="panelC2" Visible="true">
                        <div class="col-sm-6 col-md-4">
                            <div class="thumbnail" id="selectChar2Block" runat="server">
                                <asp:Image ID="Portrait2" runat="server" ImageUrl="~/Content/Images/blankImage.png" />
                                <div class="caption">
                                    <h3>
                                        <asp:Label runat="server" Text="No character name lol" ID="charName2" CssClass="strongLabel" /></h3>
                                    <p>
                                        <span class="userDetails">
                                            <asp:Label runat="server" ID="corporationName2" Text="No Corp" CssClass="strongLabel" />
                                        </span>
                                        <span class="userDetails">
                                            <asp:Label runat="server" ID="allianceName2" Visible="false" CssClass="strongLabel" />
                                        </span>
                                        <br />
                                        <span class="userDetails">Skill points:
                                        <asp:Label runat="server" ID="skillPoints2" Text="API not successfully loaded" CssClass="strongLabel" />
                                            SP
                                        </span>
                                        <span class="userDetails">Wallet
                                        <asp:Label runat="server" ID="walletISK2" Text="API not successfully loaded" CssClass="strongLabel" />
                                            ISK
                                        </span>
                                        <span class="userDetails">Currently Training:
                                        <asp:Label runat="server" ID="skillTraining2" Text="API not successfully loaded" CssClass="strongLabel" />
                                        </span>
                                        <br />
                                        <span class="userDetails">Last seen at 
                                    <asp:Label runat="server" ID="lastSeenLocation2" Text="somewhere" CssClass="strongLabel" />
                                            in a 
                                    <asp:Label runat="server" ID="lastSeenShip2" Text="ship" CssClass="strongLabel" />
                                            <asp:Label runat="server" ID="lastSeenShipName2" />
                                        </span>
                                    </p>
                                    <p>
                                        <asp:Button runat="server" ID="btnSelect2" CssClass="btn btn-primary" Text="Select" />
                                    </p>
                                </div>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
                <div class="row" id="extraDetails">
                    <div class="col-sm-6 col-md-4">
                        <i>
                            <span class="userDetails">This API key expires at:
                        <asp:Label runat="server" ID="keyExpiryLabel" Text="Never" />
                            </span>
                            <br />
                            <span class="userDetails">Account opened at:
                        <asp:Label runat="server" ID="accountStartedLabel" Text="No data" />
                            </span>
                            <span class="userDetails">Account expires at:
                        <asp:Label runat="server" ID="accountExpiryLabel" Text="No data" />
                            </span>
                            <br />
                        </i>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <i>
                            <span class="userDetails">Log in count:  
                        <asp:Label runat="server" ID="logonCountLabel" Text="No data" />
                            </span>
                            <span class="userDetails">Logged in for: 
                        <asp:Label runat="server" ID="logonTimeLabel" Text="No data" />
                            </span>
                            <span class="userDetails">Average login time: 
                        <asp:Label runat="server" ID="logonTimeAverageLabel" Text="No data" />
                            </span>
                            <br />
                        </i>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <span class="userDetails">This API Key
                        </span><i>
                            <span class="userDetails">KeyID:
                            <asp:Label runat="server" ID="labelKeyID" />
                            </span>
                            <span class="userDetails">vCode:
                            <asp:Label runat="server" ID="labelvCode" />
                            </span></i>
                    </div>
                </div>
            </div>

        </div>
    </asp:Panel>
    <asp:Panel runat="server" ID="errorPanel" Visible="false">
        <div class="row">
            <div class="col-md-8">
                <div>
                    <div id="UhOh">
                        <span class="userDetails">Uh oh, something went wrong! That API key is invalid or has no characters D:
                        </span>
                        <span class="userDetails">Maybe you should try again?
                        </span>
                    </div>
                    <hr />
                    <div class="input-group">
                        <span class="input-group-addon" id="sizing-addon1">keyID</span>
                        <asp:TextBox runat="server" ID="keyIDErrorBox" CssClass="form-control" />
                    </div>

                    <br />

                    <div class="input-group">
                        <span class="input-group-addon" id="sizing-addon2">vCode</span>
                        <asp:TextBox runat="server" ID="vCodeErrorBox" CssClass="form-control" />
                    </div>

                    <div id="ButtonCentre">
                        <asp:Button runat="server" ID="buttonResubmit" CssClass="btn btn-primary" Text="Resubmit" />
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <asp:Image runat="server" ImageUrl="~/Content/Images/emptyBowl.png" />
            </div>

        </div>

                    <asp:GridView ID="gridviewHistoryTable" ClientIDMode="Static" runat="server" AutoGenerateColumns="true" />


    </asp:Panel>

    <%---------------------------------------///////////////////////////////////////////////-----------------------------------------------------%>

    <asp:Panel runat="server" ID="auditPanel" Visible="false">
        <hr />

        <asp:Panel runat="server" ID="historyPanel" Visible="true">
            

            
        </asp:Panel>

        <%----------------------------------------------------------------------------------------------------------------------------------------%>

        <asp:Panel runat="server" ID="skillPanel" Visible="true">
        </asp:Panel>

        <%----------------------------------------------------------------------------------------------------------------------------------------%>

        <asp:Panel runat="server" ID="killPanel" Visible="true">
        </asp:Panel>

        <%----------------------------------------------------------------------------------------------------------------------------------------%>

        <asp:Panel runat="server" ID="mailPanel" Visible="true">
        </asp:Panel>

        <%----------------------------------------------------------------------------------------------------------------------------------------%>

        <asp:Panel runat="server" ID="assetPanel" Visible="true">
        </asp:Panel>

        <%----------------------------------------------------------------------------------------------------------------------------------------%>

        <asp:Panel runat="server" ID="journalPanel" Visible="true">
        </asp:Panel>

        <%----------------------------------------------------------------------------------------------------------------------------------------%>

        <asp:Panel runat="server" ID="transactionPanel" Visible="true">
        </asp:Panel>

        <%----------------------------------------------------------------------------------------------------------------------------------------%>

        <asp:Panel runat="server" ID="contractPanel" Visible="true">
        </asp:Panel>


    </asp:Panel>

</asp:Content>

