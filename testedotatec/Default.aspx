<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="testedotatec._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="col-md-2">
    </div>
    <div class="col-md-3">
    </div>
    <div>
        <p class="lead col-md-3">Tela de Login</p>
    </div>
    <div class="col-md-12">
    </div>
    <div class="col-md-2">
    </div>
    <div class="col-md-2">
    </div>
    <div class="col-md-3" style="height: 350px">
        <asp:Login ID="txtLogin" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" LoginButtonText="Login" TitleText="Insira os dados de Login" RememberMeText="Lembrar dados." UserNameLabelText="Usuário:" OnAuthenticate="txtLogin_Authenticate" Height="224px" Width="394px">
            <CheckBoxStyle Font-Size="12px" />
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LabelStyle Font-Size="15px" Height="30px" Width="100px" />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="1.8em" ForeColor="#284775" Height="50px" Width="100px" />
            <TextBoxStyle Font-Size="15px" Width="200px" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="15px" ForeColor="White" />
            <ValidatorTextStyle Font-Size="15px" />
        </asp:Login>
    </div>
    <div class="col-md-12"></div>
</asp:Content>
