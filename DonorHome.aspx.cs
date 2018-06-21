using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonorHome : System.Web.UI.Page
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
    protected void btnsignOut_Click(object sender, EventArgs e)
    {
    
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}