using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace asp.net_cms.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logged"] == null)
            {
                Response.Redirect("/admin/login.aspx");
            }
        }
        
        protected void back_to_system(object sender, EventArgs e)
        {
            Response.Redirect("/content/index.aspx");
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/admin/login.aspx");
        }
    }
}