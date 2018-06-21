using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Net.Mail;
using System.Net;
public partial class RecoverPassword : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString;
    string GUIDvalue;
    DataTable dt = new DataTable();
    int Uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection conn=new SqlConnection(CS))
        {
            GUIDvalue = Request.QueryString["Uid"];
            if(GUIDvalue!=null)
            {
                SqlCommand cmd = new SqlCommand("select * from ForgotPasswordRequests where Id='" + GUIDvalue + "'", conn);
                conn.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Uid = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    lblMsg.Text = "Your Reset Link is Expired or Invalid!";
                    lblMsg.ForeColor = Color.Red;
                }
            }
            else 
            {
              Response.Redirect("~/Default.aspx");
            }
        }
        if(!IsPostBack)
        {
            if(dt.Rows.Count!=0)
            {
                tbnewPassword.Visible = true;
                tbRePassword.Visible = true;
                lblpassword.Visible = true;
                lblRepassword.Visible = true;
                btnRecoverPassword.Visible = true;
            }
            else
            {
                lblMsg.Text = "Your Reset Link is Expired or Invalid!";
                lblMsg.ForeColor = Color.Red;
            }
        }
    }
   
    protected void btnRecoverPassword_Click1(object sender, EventArgs e)
    {
        if(tbnewPassword.Text!="" && tbRePassword.Text!=""  && tbnewPassword.Text==tbRePassword.Text)
        {
            using (SqlConnection conn = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("update Users set Password='" + tbnewPassword.Text + "' where Uid='" + Uid + "'", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                SqlCommand cmd2 = new SqlCommand("delete from ForgotPasswordRequests where Uid=" + Uid + "'", conn);
                cmd2.ExecuteNonQuery();
                Response.Redirect("~/SignIn.aspx");
            }
        }
    }
}