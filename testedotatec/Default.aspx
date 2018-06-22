<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="testedotatec._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>TESTE DOTATEC</h1>
        <p class="lead">Tela de Login</p>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Login ID="txtLogin" runat="server"></asp:Login>
        </div>
    </div>

</asp:Content>
