using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GROUPPROJECT
{
    public partial class ProductDetail3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveUserData_Click(object sender, EventArgs e)
        {


            
            Session["ProductName"] = "Air Jordan 1 Mid Men";
            Session["ProductPrice"] = "RM 175.00";

            
            Response.Redirect("LoginPage.aspx");
        }

    }
}
