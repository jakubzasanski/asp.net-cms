using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.net_cms.admin
{
    public partial class login1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void back_to_system(object sender, EventArgs e)
        {
            Response.Redirect("/content/index.aspx");
        }
    }
}