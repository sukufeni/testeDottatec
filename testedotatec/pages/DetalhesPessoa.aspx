<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DetalhesPessoa.aspx.cs" Inherits="testedotatec.DetalhesPessoa" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="col-md-4"></div>
    <div class="col-md-1"></div>
    <div class="col-md-3">
        <table>
            <th style="font-size: 15px; border-width: 10px; border-color: white">Detalhes do usuário</th>
            <tr>
                <td>
                    <label>CPF do Usuário</label>
                    <asp:TextBox ID="txtCpfPessoa" runat="server" Height="30px" Width="300px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <label>Nome do Usuário</label>
                    <asp:TextBox ID="txtNomePessoa" runat="server" Height="30px" Width="300px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <label>E-mail do Usuário</label>
                    <asp:TextBox ID="txtEmailPessoa" runat="server" Height="30px" Width="300px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <label>senha do Usuário</label>
                    <asp:TextBox ID="txtPassword" runat="server" Height="30px" Width="300px" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Label Visible="false" runat="server" ID="lblNewPassword">nova senha do Usuário</asp:Label>
                    <asp:TextBox ID="txtNewPassword" runat="server" Height="30px" Width="300px" Visible="false" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar Dados" />
                    <asp:Button ID="btnVoltar" runat="server" OnClick="btnVoltar_Click" Text="Voltar" />
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
