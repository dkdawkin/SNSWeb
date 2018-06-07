using System;
using System.Web;
using System.Web.UI;

namespace SNSWeb
{


    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs args)
        {
            
        }
        public void button1Clicked(object sender, EventArgs args)
        {
            button1.Text = "You clicked me";
        }
    }
}
