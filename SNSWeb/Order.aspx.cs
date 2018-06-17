using System;
using System.Diagnostics.Tracing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SNSWeb
{

    public partial class Order : System.Web.UI.Page
    {
        

        static StreamReader reader = new StreamReader("Flavors.txt");
        private ListItem flavor = new ListItem();
        static string Flavors = reader.ReadToEnd();
        private string[] flavorFile = Flavors.Split(',').ToArray();
        private int count = 0;



        protected void Page_Load(object sender, EventArgs args)
        {
            
            if(!IsPostBack)
            loadDropDown();

        }


        protected void checkOutBtn_Click(object sender, EventArgs e)
        {
            foodAlergiesTextArea.Value = hiddenField.Value;
            foodAlergiesTextArea.Value = hiddenField1.Value;

        }


        //Load Desert Flavors based upon cake selection
        protected void desertDDlChanged(object sender, EventArgs args)
        {
            if (desertTypeDdl.SelectedItem.Text.Contains("Cake") ||
               desertTypeDdl.SelectedItem.Text.Equals("Cupcakes") ||
                desertTypeDdl.SelectedItem.Text.Equals("Cake Pops"))
            {
                loadCakeFlavors();
                return;
            }

            if (desertTypeDdl.SelectedItem.Text.Contains("Cookies"))
            {
                loadCookieFlavor();
                return;
            }

            if (desertTypeDdl.SelectedItem.Text.Contains("Cheesecake"))
            {
                loadCheeseCakeFlavor();
                return;
            }
        }


        private void loadDropDown()
        {
            occasionDdl.Items.Add("  ");
            occasionDdl.Items.Add("Birthday");
            occasionDdl.Items.Add("Anniversary");
            occasionDdl.Items.Add("Wedding");
            occasionDdl.Items.Add("Baby");
            occasionDdl.Items.Add("Graduation");

            desertTypeDdl.Items.Add("  ");
            desertTypeDdl.Items.Add("Cake");
            desertTypeDdl.Items.Add("Cupcakes");
            desertTypeDdl.Items.Add("Cake Pops");
            desertTypeDdl.Items.Add("Cookies");
            desertTypeDdl.Items.Add("Cheesecake");

            servingSizeDdl.Items.Add("  ");
            for (int i = 0; i < 500; i++)
            {
                if (i % 10 == 0)
                    servingSizeDdl.Items.Add(i.ToString());
            }


            frostingFlavorDdl.Items.Add("  ");
            frostingFlavorDdl.Items.Add("Birthday");
            frostingFlavorDdl.Items.Add("Anniversary");
            frostingFlavorDdl.Items.Add("Wedding");
            frostingFlavorDdl.Items.Add("Baby");
            frostingFlavorDdl.Items.Add("Graduation");
        }

        //Retrieving cake flavors
        public void loadCakeFlavors()
        {
            DesertFlavorDdl.Items.Clear();

            bool validCakeFlavors = false;
            count = 0;

            foreach (string word in flavorFile)
            {
                if (word.Contains("CakeFlavorsStart"))
                {
                    validCakeFlavors = true;
                    continue;
                }
                else if (word.Contains("CakeFlavorsEnd"))
                    return;

                if (validCakeFlavors == true)
                {
                    flavor = new ListItem();
                    flavor.Text = word.Trim(',');
                    flavor.Value = "cakeFlavor " + count;
                    DesertFlavorDdl.Items.Add(flavor);
                    count++;
                }
            }
        }

        // Retrieving cookie flavor   
        public void loadCookieFlavor()
        {
            DesertFlavorDdl.Items.Clear();

            bool validCookieFlavors = false;
            count = 0;

            foreach (string word in flavorFile)
            {
                if (word.Contains("CookieFlavorsStart"))
                {
                    validCookieFlavors = true;
                    continue;
                }
                else if (word.Contains("CookieFlavorsEnd"))
                    return;

                if (validCookieFlavors == true)
                {
                    flavor = new ListItem();
                    flavor.Text = word.Trim(',');
                    flavor.Value = "cookieFlavor" + count;
                    DesertFlavorDdl.Items.Add(flavor);
                    count++;
                }
            }

        }

        //Retrieving Cheesecake Flavor
        public void loadCheeseCakeFlavor()
        {
            DesertFlavorDdl.Items.Clear();

            bool validCCFlavors = false;
            count = 0;
            foreach (string word in flavorFile)
            {
                if (word.Contains("CheesecakeFlavorsStart"))
                {
                    validCCFlavors = true;
                    continue;
                }
                else if (word.Contains(" CheesecakeFlavorsEnd"))
                    return;
                if (validCCFlavors == true)
                {
                    flavor = new ListItem();
                    flavor.Text = word.Trim(',');
                    flavor.Value = "CCFlavor" + count;
                    DesertFlavorDdl.Items.Add(flavor);
                    count++;
                }
            }
        }

    }
}
