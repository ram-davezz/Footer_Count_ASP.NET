using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace WebsitePgm
{
    
    public class MvcApplication : System.Web.HttpApplication
    {
        public string DefaultPageText4 { get; set; }
        protected void Application_Start()
        {
            
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application.Add("Key", "12345");
            string Key = (string)Application["Key"];
            HWSettings Settings = WebPgmManager.LoadSettings(Server.MapPath("~/App_Data/Settings.xml"));
            Application.Add("Settings", Settings);
        }

        void Session_Start(Object sender, EventArgs e)
        {
            Application.Lock();
            if (Application["Counter"]==null)
            {
                Application.Add("Counter",0);
            }
          
            int iCountter = Convert.ToInt32(Application["Counter"]);
            iCountter++;
            Application["Counter"] =iCountter.ToString();
            HWSettings Settings = (HWSettings)Application["Settings"];
            Settings.DefaultPageText4 = (string)Application["Counter"];
            WebPgmManager.SaveSettings(Server.MapPath("~/App_Data/Settings.xml"), Settings);
            Application["Settings"] = Settings;

            Application.UnLock();
        }
        void Session_End(object sender, EventArgs e)
        {
            
            Application.Lock();

            Application.UnLock();

        }
    }
}
