using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsitePgm
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                HWSettings Settings = (HWSettings)Application["Settings"];
                LabelDefaultPageText1.Text = Settings.DefaultPageText1;
                LabelHeader.Text = Settings.DefaultPageText2;
                LabelFooter.Text = Settings.DefaultPageText3;

            }
            catch(Exception)
            {

            }
        }
    }
    }
