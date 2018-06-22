using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testedotatec
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtLogin_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string sql = "select * from TB_USER";
        }
    }
}