<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="testedotatec._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color:#6b4b30">
        <img src="Images/dottatec_logo_branca2.png" title="Soluções inteligentes para ensino EaD"/>
        <p class="lead">Tela de Login</p>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Login  ID="txtLogin" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" LoginButtonText="Login" TitleText="Insira os dados de Login" RememberMeText="Lembrar dados." UserNameLabelText="Usuário:" OnAuthenticate="txtLogin_Authenticate" Height="224px" Width="275px">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Height="20px" Width="80px" />
                <TextBoxStyle Font-Size="0.8em" Width="200px" />
                <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
        </div>
    </div>
</asp:Content>
