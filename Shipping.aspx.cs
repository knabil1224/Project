using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace GROUPPROJECT
{
    public partial class Shipping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ViewOrderButton_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text; 
            string PhoneNumber = ContactBox.Text;
            string Address = AddressBox.Text;

            string ProductName = Session["ProductName"] as string;
            string ProductPrice = Session["ProductPrice"] as string;
            string CardNumber = Session["CardNumber"] as string;

            if (!string.IsNullOrEmpty(ProductName) && !string.IsNullOrEmpty(ProductPrice) && !string.IsNullOrEmpty(CardNumber))
            {
                
                string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionStringProject"].ConnectionString;

               
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    
                    string insertQuery = "INSERT INTO Details (name, Address, CardNumber, ProductName, PhoneNumber, ProductPrice) VALUES (@Name, @Address, @CardNumber, @ProductName, @PhoneNumber, @ProductPrice)";

                    using (SqlCommand cmd = new SqlCommand(insertQuery, connection))
                    {
                        
                        cmd.Parameters.AddWithValue("@Name", name);
                        cmd.Parameters.AddWithValue("@Address", Address);
                        cmd.Parameters.AddWithValue("@CardNumber", CardNumber);
                        cmd.Parameters.AddWithValue("@ProductName", ProductName);
                        cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
                        cmd.Parameters.AddWithValue("@ProductPrice", ProductPrice);

                        
                        cmd.ExecuteNonQuery();
                    }
                }

               
                Response.Redirect("ViewOrder.aspx");
            }
        }
    }
}
