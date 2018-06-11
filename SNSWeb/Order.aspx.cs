using System;
using System.Diagnostics.Tracing;
using System.Web;
using System.Web.UI;

namespace SNSWeb
{

    public partial class Order : System.Web.UI.Page
    {
        /// Occasion ddl, birthday, anniversary, wedding, baby shower, graduation, holiday, sweet tooth craving, other
        /// desert Type ddl, cake, cake pops, cookies, cheesecake
        /// Minimum serving size 10
        /// 
        /// cake flavors/cupcake/ cakepop: Vanilla, Chocolate, Strawberry, 
        /// Lemon, Red Velvet, Blue Velvet, Pink Lemonade, Champagne, Marble,
        /// Old Fashion Yellow Cake,White Cake, Cookies and Creame,
        /// 
        /// cookie flavors, chocolate chip, white chocolate macadamia, oatmeal rasin, double chocolate chip, sugar, snikerdodle, lemon
        /// 
        /// cheesecake Flavors, new york style, chocolate chip, cookies and creame, lemon, stawberry blueberry, red velvet
        /// 
        /// 
        /// frosting flavors, vanilla, chocolate, lemon, salted caramel, white chocolate ganache strawberry cookies and creame

        protected void Page_Load(object sender, EventArgs args)
        {
            occasionDdl.Items.Add("  ");
            occasionDdl.Items.Add("Birthday");
            occasionDdl.Items.Add("Anniversary");
            occasionDdl.Items.Add("Wedding");
            occasionDdl.Items.Add("Baby");
            occasionDdl.Items.Add("Graduation");

            desertTypeDdl.Items.Add("  ");
            desertTypeDdl.Items.Add("Birthday");
            desertTypeDdl.Items.Add("Anniversary");
            desertTypeDdl.Items.Add("Wedding");
            desertTypeDdl.Items.Add("Baby");
            desertTypeDdl.Items.Add("Graduation");

            servingSizeDdl.Items.Add("  ");
            servingSizeDdl.Items.Add("Birthday");
            servingSizeDdl.Items.Add("Anniversary");
            servingSizeDdl.Items.Add("Wedding");
            servingSizeDdl.Items.Add("Baby");
            servingSizeDdl.Items.Add("Graduation");

            DesertFlavorDdl.Items.Add("  ");
            DesertFlavorDdl.Items.Add("Birthday");
            DesertFlavorDdl.Items.Add("Anniversary");
            DesertFlavorDdl.Items.Add("Wedding");
            DesertFlavorDdl.Items.Add("Baby");
            DesertFlavorDdl.Items.Add("Graduation");

            frostingFlavorDdl.Items.Add("  ");
            frostingFlavorDdl.Items.Add("Birthday");
            frostingFlavorDdl.Items.Add("Anniversary");
            frostingFlavorDdl.Items.Add("Wedding");
            frostingFlavorDdl.Items.Add("Baby");
            frostingFlavorDdl.Items.Add("Graduation");

        }


        protected void addItemBtn_Click(object sender, EventTags e)
        {
          //  ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "script", "buttonClick();", true);
        }

    }
}
