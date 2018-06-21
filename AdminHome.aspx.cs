using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            lblsuccess.Text = "Sign In successful,Welcome " + Session["USERNAME"].ToString() + "";
        }
        else
        {
            Response.Redirect("~/SignIn.aspx");
        }
    }
    protected void btnAdminSignout_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("~/Default.aspx");
    }
}