using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminSignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from Users where Username='" + tbuname.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User Already Exist !");
            }
            conn.Close();
        }
    }
    protected void btnsignup_Click(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            try
            {
                if (tbuname.Text != "" & tbFname.Text != "" & tbLname.Text != "" & tbemail.Text != "" & tbDOB.Text != "" && tbgender.SelectedValue.ToString() != "" & tbcountry.Text != "" & tbcity.SelectedValue.ToString() != "" & tbmobile.Text != "" & tbpassword.Text != "" & tbCpassword.Text != "")
                {

                    if (tbpassword.Text == tbCpassword.Text)
                    {


                        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);
                        conn.Open();
                        string insertQuery = "insert into Users (Username,First_Name,Last_Name,Email,Date_of_Birth,Gender,Country,City,Mobile,Password,Confirm_Password,Usertype) values(@Uname,@Fname,@Lname,@email,@DOB,@gender,@Country,@city,@mobile,@password,@confirmpassword,@Usertype)";
                        SqlCommand cmd = new SqlCommand(insertQuery, conn);
                        cmd.Parameters.AddWithValue("@Usertype", 'A');
                        cmd.Parameters.AddWithValue("@Uname", tbuname.Text);
                        cmd.Parameters.AddWithValue("@Fname", tbFname.Text);
                        cmd.Parameters.AddWithValue("@Lname", tbLname.Text);
                        cmd.Parameters.AddWithValue("@email", tbemail.Text);
                        cmd.Parameters.AddWithValue("@DOB", tbDOB.Text);
                        cmd.Parameters.AddWithValue("@gender", tbgender.SelectedItem.ToString());
                        cmd.Parameters.AddWithValue("@country", tbcountry.Text);
                        cmd.Parameters.AddWithValue("@city", tbcity.Text);
                        cmd.Parameters.AddWithValue("@mobile", tbmobile.Text);
                        cmd.Parameters.AddWithValue("@password", tbpassword.Text);
                        cmd.Parameters.AddWithValue("@confirmpassword", tbCpassword.Text);

                        cmd.ExecuteNonQuery();
                        Response.Write("Registration Successful");
                        Response.Redirect("~/Default.aspx");
                        conn.Close();
                    }
                    else
                    {
                        //lblMsg.Text="Password does not match!";
                        Response.Write("<script>alert('Password does not match!')</script>");
                        // lblMsg.ForeColor=Color.Red;
                    }
                }
                else
                {
                    // lblMsg.Text="All fields are Manadatory";
                    Response.Write("<script>alert('All fields are Manadatory!')</script>");

                    // lblMsg.ForeColor=Color.Red;
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

        }
    }
      
    protected void btnRequestCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}
