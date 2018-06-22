using System.Web;
using System.Web.UI;

namespace testedotatec
{

    public static class Alert
    {
        public static void Show(string message)
        {
            string cleanMessage = message.Replace("'", "\'");
            string script = "<script type='text/javascript'>alert('" + cleanMessage + "');</script>";
            var page = HttpContext.Current.CurrentHandler as Page;
            if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
            {
                page.ClientScript.RegisterClientScriptBlock(typeof(Alert), "alert", script);

            }
        }
    }
}
