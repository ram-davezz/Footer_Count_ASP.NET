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
           if(Application["Counter"]==null)
            {
                Application.Add("Counter",0);
            }
            int iCountter = Convert.ToInt32(Application["Counter"]);
            iCountter++;
            Application["Counter"] = iCountter.ToString();
           
        }
    }
}
