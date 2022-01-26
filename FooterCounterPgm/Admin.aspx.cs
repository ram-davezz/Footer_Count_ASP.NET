using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsitePgm
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERID"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            if (!IsPostBack)
            {
                HWSettings Settings = (HWSettings)Application["Settings"];
                txtDefault.Text = Settings.DefaultPageText1;
                LabelCounterADmin.Text = "You are visitor no." +Application["Counter"].ToString();
            }
        }

        protected void ButtonSave_Click(object sender, EventArgs e)
        {
            HWSettings Settings = (HWSettings)Application["Settings"];
            Settings.DefaultPageText1 = txtDefault.Text;
            Settings.DefaultPageText2 = txtHeader.Text;
            Settings.DefaultPageText3 = txtFooter.Text;
            WebPgmManager.SaveSettings(Server.MapPath("~/App_Data/Settings.xml"), Settings);
            Application["Settings"] = Settings;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Remove("USERID");
            Response.Redirect("Default.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
 
}