using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GROUPPROJECT
{
    public partial class PaymentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSaveUserData_Click(object sender, EventArgs e)
        {
            
            string CardNumber = txtCardNumber.Text; 
            

            
            Session["CardNumber"] = CardNumber;
           

           
            Response.Redirect("Shipping.aspx");
        }

    }
}