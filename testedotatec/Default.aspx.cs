using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testedotatec
{
    public partial class _Default : Page
    {
        Conexao c;
        private string sql = "select * from tb_pessoa";
        private string user, senha;
        protected void Page_Load(object sender, EventArgs e)
        {}

        protected void txtLogin_Authenticate(object sender, AuthenticateEventArgs e)
        {
            c = new Conexao();
            this.user = txtLogin.UserName;
            this.senha = txtLogin.Password;
            
            sql+= " where cpf_pessoa = '" + user + "' and password= '" + senha + "'";
            var resultado = c.consultar(sql);
            if (resultado.HasRows)
            {
                Session["logado"] = true;
                Response.Redirect("pages/ListaPessoas.aspx");
            }
            else Alert.Show("Verifique os Campos e tente novamente!");
        }
    }
}