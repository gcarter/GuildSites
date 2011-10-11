using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
        {
            LogonHprLnk.Visible = false;
            LogoutHprLnk.Visible = true;
        }
        else
        {
            LogonHprLnk.Visible = true;
            LogoutHprLnk.Visible = false;
        }
    }

    protected void Logon_Click(object sender, EventArgs e)
    {
        Response.Redirect("Logon.aspx");
    }

    protected void Logout_click(object sender, EventArgs e)
    {
        if (LogonHprLnk.Visible == false)
        {
            LogonHprLnk.Visible = true;
            LogoutHprLnk.Visible = false;
            System.Web.Security.FormsAuthentication.SignOut();
            System.Web.Security.FormsAuthentication.RedirectToLoginPage();
            Response.Redirect("Default.aspx");
        }
        
    }

}
