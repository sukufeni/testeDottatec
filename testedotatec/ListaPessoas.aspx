<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaPessoas.aspx.cs" Inherits="testedotatec.ListaPessoas" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="background-color:#6b4b30">
        <img src="Images/dottatec_logo_branca2.png" title="Soluções inteligentes para ensino EaD"/>
        <p class="lead">Lista Pessoas</p>
    </div>
    <div class="row">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CPF_PESSOA" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="CPF_PESSOA" HeaderText="CPF_PESSOA" SortExpression="CPF_PESSOA" ControlStyle-Width="135px">
                        <ControlStyle BorderColor="Black" BorderWidth="1px" Width="150px"/>
                    <HeaderStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NOME_PESSOA" HeaderText="NOME_PESSOA" SortExpression="NOME_PESSOA">
                        <ControlStyle Width="150px" />
                        <HeaderStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL">
                        <ControlStyle Width="150px" />
                        <HeaderStyle Width="150px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ID_LOGIN" HeaderText="ID_LOGIN" SortExpression="ID_LOGIN">
                        <ControlStyle Width="150px" />
                        <HeaderStyle Width="150px" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbLogiConnectionString %>" SelectCommand="SELECT * FROM [TB_PESSOA]"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
