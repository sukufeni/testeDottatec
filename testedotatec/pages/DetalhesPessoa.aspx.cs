using System;

namespace testedotatec
{
    public partial class DetalhesPessoa : System.Web.UI.Page
    {
        private string cpf;
        private Conexao c;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.cpf = (Request.QueryString["person"] != null) ? Request.QueryString["person"] : "";
                if (!this.cpf.Equals(string.Empty))
                {
                    carregaCampos(this.cpf);
                    Session["comando"] = "update";
                    txtNewPassword.Visible = true;
                    lblNewPassword.Visible = true;
                }
                else
                {
                    Session["comando"] = "insert";
                    txtNewPassword.Visible = false;
                    lblNewPassword.Visible = false;
                }
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            if (Session["comando"].Equals("update")) atualizaUsuario();
            else novousuario();
        }

        private void atualizaUsuario()
        {
            c = new Conexao();
            string updatePassword = "";
            if (!txtPassword.Text.Equals(string.Empty))
            {
                if (Session["password"].ToString() == txtPassword.Text) updatePassword = ",password = '" + txtNewPassword.Text + "'";
                else Alert.Show("a senha atual não coincide com a cadastrada no sistema!");
            }
            string update = "update tb_pessoa set nome_pessoa = '" + txtNomePessoa.Text + "',email = '" + txtEmailPessoa.Text + "'"+updatePassword+" where cpf_pessoa = '" + txtCpfPessoa.Text + "'";
            if (verificaCampos())
            {
                try
                {
                    c.Alterar(update);
                    Alert.Show("Usuário atualizado com sucesso!");
                }
                catch (Exception)
                {
                    Alert.Show("erro ao atulizar o usuário!");
                }
            }
        }
        private void novousuario()
        {
            if (!carregaCampos(txtCpfPessoa.Text))
            {
                c = new Conexao();
                string ultimo = "select max(id_login)as id_login from tb_pessoa";
                var result = c.consultar(ultimo);
                var login = "";
                if (result.Read()) login = result["id_login"].ToString();
                string update = "INSERT INTO [dbo].[TB_PESSOA]([CPF_PESSOA],[NOME_PESSOA],[EMAIL],[ID_LOGIN],[password])VALUES('" + txtCpfPessoa.Text + "','" + txtNomePessoa.Text + "','" + txtEmailPessoa.Text + "','" + login + "','"+txtPassword.Text+"')";
                try
                {
                    if (verificaCampos())
                    {
                        c.Alterar(update);
                        Alert.Show("Usuário inserido com sucesso!");
                    }
                }
                catch (Exception)
                {
                    Alert.Show("erro ao inserir o usuário!");
                }
            }
            else
            {
                Alert.Show("Usuário ja existe!");
            }
        }

        private bool carregaCampos(string cpf)
        {
            string sql = "select * from tb_pessoa where cpf_pessoa = " + cpf;

            c = new Conexao();
            var result = c.consultar(sql);
            if (result.Read())
            {
                txtCpfPessoa.Text = cpf.ToString();
                txtEmailPessoa.Text = result["email"].ToString();
                txtNomePessoa.Text = result["nome_pessoa"].ToString();
                Session["password"]= result["password"].ToString();
                txtCpfPessoa.Enabled = false;
                return true;
            }
            return false;
        }
        private bool verificaCampos()
        {
            if (txtCpfPessoa.Text.Equals(string.Empty) || txtEmailPessoa.Text.Equals(string.Empty) || txtNomePessoa.Text.Equals(string.Empty))
            {
                Alert.Show("preencha os campos Corretamente!");
                return false;
            }
            return true;
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListaPessoas.aspx");
        }
    }
}