using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Net.Mail;
using System.Net;
public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnrecoverpassword_Click(object sender, EventArgs e)
    {
        
        string CS = ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString;
        using(SqlConnection conn= new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("select * from Users where Email='"+tbemail.Text+"'",conn);
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                String myGUID = Guid.NewGuid().ToString();
                int Uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("insert into ForgotPasswordRequests values('" + myGUID + "','" + Uid + "',getdate())", conn);
                cmd1.ExecuteNonQuery();

                //send mail
                String ToEmail =dt.Rows[0][4].ToString();
                String Username = dt.Rows[0][13].ToString();
                String EmailBody = "Hi" + Username + ",<br/><br/> Click the link below to reset your password <br/> <br/> http://localhost:18794/RecoverPassword.aspx?Uid=" + myGUID;
                MailMessage RecoverPasswordMail = new MailMessage("youremail@gmail.com", ToEmail);
                RecoverPasswordMail.Body = EmailBody;
                RecoverPasswordMail.IsBodyHtml = true;
                RecoverPasswordMail.Subject = "Reset Password";

                System.Net.Mail.SmtpClient SMTP = new System.Net.Mail.SmtpClient("smtp.gmail.com", 587);
                SMTP.Credentials =new System.Net.NetworkCredential()
               { 
                   UserName="yourusername@gmail.com",
                   Password="yourgmailPassword"
                };
                SMTP.EnableSsl = true;
                SMTP.Send(RecoverPasswordMail);
                
               // ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "ASET", "<script type='text/javascript'>alert('Your Message Has Been Send ');</script>", false);

            

                lblRecoverPassword.Text = "Check your email to reset your password.";
                lblRecoverPassword.ForeColor = Color.Green;
            }
            else
            {
               lblRecoverPassword.Text = "This email is not exist in our database!";
                lblRecoverPassword.ForeColor = Color.Red;
            }
           
    }
    
        }}