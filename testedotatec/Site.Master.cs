using System;
using System.Web.UI;

namespace testedotatec
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void verificaAcesso(object sender, EventArgs e)
        {
            if (Session["Logado"].Equals(true)) Response.Redirect("ListaPessoas.aspx");
        }
    }
}