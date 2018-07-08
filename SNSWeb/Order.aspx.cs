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

        private bool addItemFlag = false;
        private bool doneBtnFlag = false;
        private bool cakeBtnFlag = false;

        //static StreamReader reader = new StreamReader("Flavors.txt");
        //private ListItem flavor = new ListItem();
        //static string Flavors = reader.ReadToEnd();
        //private string[] flavorFile = Flavors.Split(',').ToArray();



        protected void Page_Load(object sender, EventArgs args)
        {

            if (!IsPostBack)
                orderDetailsTable.Style["display"] = "none";
            else
                updateLabels(); 
           

        }

        public void updateLabels()
        {
            occasionLbl.Text = "Whats the occasion?";
            //desertTypeLbl.Text = "Cake: ";
            //desertFlavorLbl.Text = "Cake Flavor: ";
            //frostingFlavorLbl.Text = "Frosting Flavor: ";
            //servingSizeLbl.Text = "Serving Size: ";
        }


        protected void checkOutBtn_Click(object sender, EventArgs e)
        {
            //foodAlergiesTextArea.Value = hiddenField.Value;
            //foodAlergiesTextArea.Value = hiddenField1.Value;

        }


        /// <summary>
        /// Adding new item to sales order
        /// </summary>
        /// <param name="sender">Sender.</param>
        /// <param name="e">E.</param>
        protected void addItemBtn_Click(object sender, EventArgs e)
        {
            addItemFlag = true;
            updateDisplay();


        }

        protected void doneBtn_Click(object sender, EventArgs e)
        {
            addItemBtn.Style["Display"] = "block";
            checkOutBtn.Style["Display"] = "block";

            orderTableTitle.InnerText = "- Order -";

            addItemFlag = false;
            cakeBtnFlag = false;
        }

        protected void cakeButton_Click(object sender, EventArgs e)
        {
            cakeBtnFlag = true;
            updateDisplay();


        }


        public void updateDisplay()
        {

            /// Execute this update if addItem Button was clicked 
            if (addItemFlag)
            {
                ///Displaying orders table 
                orderTableTitle.InnerText = "- Add Item -";
                ordersTable.Style["Display"] = "table";
                doneBtn.Style["Display"] = "block";

                ////Hiding buttons
                addItemBtn.Style["Display"] = "none";
                checkOutBtn.Style["Display"] = "none";

            }

            /// Execute this update if cake button was clicked 
            if (cakeBtnFlag)
            {
                //Hiding orders Table
                ordersTable.Style["Display"] = "None";

                //Displaying orders details table
                orderTableTitle.InnerText = "- Cake -";
                orderDetailsTable.Style["Display"] = "table";
            }


        }


    }
}