using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsitePgm
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelCounter.Text="you are visitor no."+ Application["Counter"].ToString();
        }

        protected void AdminLog_Click(object sender, EventArgs e)
        {
            string Username = WebConfigurationManager.AppSettings["PFUsername"];
            string Password = WebConfigurationManager.AppSettings["PFPassword"];
            if (TxtUsername.Text == Username && TxtPassword.Text == Password)
            {
                Session.Add("USERID", Username);
                Response.Redirect("Admin.aspx");
            }
            else
            {
               LabelMessage.Text = "Enter valid Username And Password!";
            }
        }
    }
}