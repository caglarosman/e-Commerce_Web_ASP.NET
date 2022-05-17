using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Commerce
{
    public partial class Default : System.Web.UI.Page
    {
        public static string FirstName, LastName;
        public static VirtualDatabase virtualDatabase = new VirtualDatabase();
        public static string selectedProductID;
        public static int counter = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Request.Cookies["User"] != null)
                {
                    HttpCookie cookie = Request.Cookies["User"];
                    FirstName = cookie["FirstName"];
                    LastName = cookie["LastName"];
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            catch (Exception) { }

        }

        protected void ButtonViewProduct_Click(object sender, EventArgs e)
        {
            Button tmpButton = (Button)sender;
            int productID = 0;
            if (!string.IsNullOrEmpty(tmpButton.ToolTip))
                productID = Convert.ToInt32(tmpButton.ToolTip);

            //Product selectedProduct = virtualDatabase.GetProductByID(productID);
            Response.Redirect("ProductInfo.aspx?id=" + productID);

        }

        protected void ButtonGotoCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void ButtonSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            try
            {
                if (Request.Cookies["User"] != null)
                {
                    HttpCookie cookie = Request.Cookies["User"];
                    cookie.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(cookie);
                }
            }
            catch (Exception) { }

            ShoppingBasket.ClearBasket();
            Response.Redirect("Login.aspx");
        }
    }
}