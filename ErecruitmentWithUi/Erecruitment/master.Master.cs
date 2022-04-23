using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Erecruitment
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_MenuItemClick(object sender, MenuEventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}