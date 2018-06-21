using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Sign_In : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) 
        {
            if(Request.Cookies["Username"]!=null && Request.Cookies["Password"]!=null)
            {
                Username.Text = Request.Cookies["Username"].Value;
                Password.Attributes["value"] = Request.Cookies["password"].Value;
                CheckBoxRememberme.Checked = true;
            }
        }
    }
    
       protected void btnLogin_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString;
           using(SqlConnection conn=new SqlConnection(CS)){
               SqlCommand cmd = new SqlCommand("select * from Users where Username='"+Username.Text+"' and Password='"+Password.Text+"'",conn);
               conn.Open();
               SqlDataAdapter sda = new SqlDataAdapter(cmd);
               DataTable dt = new DataTable();
               sda.Fill(dt);
               

                   if (dt.Rows.Count != 0)
                   {
                       if (CheckBoxRememberme.Checked)
                       {
                       Response.Cookies["USERNAME"].Value = Username.Text;
                       Response.Cookies["PASSWORD"].Value = Password.Text;

                       Response.Cookies["USERNAME"].Expires = DateTime.Now.AddDays(15);
                       Response.Cookies["Password"].Expires = DateTime.Now.AddDays(15);
                       
                   }
                       else
                       {
                           Response.Cookies["USERNAME"].Expires = DateTime.Now.AddDays(-1);
                           Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);
                       }
                       string Usertype;
                       Usertype = dt.Rows[0][13].ToString().Trim();
                       if (Usertype == "D")
                       {
                           Session["USERNAME"] = Username.Text;
                           Response.Redirect("~/DonorHome.aspx");
                       }
                       if (Usertype == "A")
                       {
                           Session["USERNAME"] = Username.Text;
                           Response.Redirect("~/AdminHome.aspx");
                       }
               }
               else
               {
                 //  lblerror.Text = "Invalid Username or Password!";
                   Response.Write("<script>alert('Invalid Username or Password!')</script>");
               }
           }
    }


       protected void LinkButtonSignUp_Click(object sender, EventArgs e)
       {
           Response.Redirect("~/DonorRegistration.aspx");
       }
       protected void LinkButtonForgotPassword_Click(object sender, EventArgs e)
       {
           Response.Redirect("~/ForgotPassword.aspx");
       }
}