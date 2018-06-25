using System;
using System.Web.UI.WebControls;

namespace testedotatec
{
    public partial class ListaPessoas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Excluir")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                string cpf= GridView1.DataKeys[index]["CPF_PESSOA"].ToString();
                Conexao c = new Conexao();
                string delete = "delete from tb_pessoa where cpf_pessoa = '"+cpf+"'";
                c.Alterar(delete);
                Alert.Show("Usuário deletado com sucesso!");
            }
            else if (e.CommandName == "Editar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                var cpf = GridView1.DataKeys[index]["CPF_PESSOA"].ToString();
                Response.Redirect("DetalhesPessoa.aspx?person="+cpf);
            }
        }

        protected void btnNovoUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("DetalhesPessoa.aspx?person=");
        }
    }
}