using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_Commerce
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            input_firstName.Value.ToString();
        }


        protected void ButtonSignIn_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("User");
            cookie["FirstName"] = input_firstName.Value;
            cookie["LastName"] = input_lastName.Value;
            cookie.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(cookie);

            Response.Redirect("Default.aspx");
        }
    }
}