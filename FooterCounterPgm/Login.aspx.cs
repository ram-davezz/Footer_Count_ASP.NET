using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsitePgm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelCountter.Text = "You are visitor no." + Application["Counter"].ToString();
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string Username = WebConfigurationManager.AppSettings["PFUserName"];
            string Password = WebConfigurationManager.AppSettings["PFPassWord"];
            if (TxtUsername.Text == Username && TxtPassword.Text == Password)
            {
                Session.Add("USERID", Username);
                Response.Redirect("Admin.aspx");
            }
            else
            {
                TxtUsername.Text = "";
                TxtPassword.Text = "";
                lblMessage.Text = "Enter valid Username and Password!";
                
            }
        }
    }
}

  
    
