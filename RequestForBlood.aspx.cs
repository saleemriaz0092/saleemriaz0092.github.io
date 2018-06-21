using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class RequestForBlood : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRequestsubmit_Click(object sender, EventArgs e)
    {
        {
            if (IsPostBack)
            {
                try
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);
                    conn.Open();
                    string insertQuery = "insert into RequestForBlood (First_Name,Last_Name,Email,Date_of_Birth,Gender,Blood_Group,Country,City,Mobile,Usertype,Collecting_Date,Required_Blood) values(@Fname,@Lname,@Email,@DOB,@Gender,@BG,@Country,@City,@Mobile,@Usertype,@DOBR,@bloodamount)";
                    SqlCommand cmd = new SqlCommand(insertQuery, conn);
                    cmd.Parameters.AddWithValue("@Usertype", "TR");
                    cmd.Parameters.AddWithValue("@Fname", tbFname.Text);
                    cmd.Parameters.AddWithValue("@Lname", tbLname.Text);
                    cmd.Parameters.AddWithValue("@Email", tbemail.Text);
                    cmd.Parameters.AddWithValue("@DOB", tbDOB.Text);
                    cmd.Parameters.AddWithValue("@Gender", tbgender.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@BG", tbBG.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@Country", tbcountry.Text);
                    cmd.Parameters.AddWithValue("@City", tbcity.Text);
                    cmd.Parameters.AddWithValue("@Mobile", tbmobile.Text);
                    cmd.Parameters.AddWithValue("@DOBR", tbDOBR.Text);
                    cmd.Parameters.AddWithValue("@bloodamount", tbbloodamount.Text);


                    cmd.ExecuteNonQuery();
                    Response.Write("Data is Successfully inserted!");
                    Response.Redirect("~/Default.aspx");
                    conn.Close();
                }
                catch (Exception ex)
                {
                    Response.Write("Error:" + ex.ToString());
                }
            }
        }
    }
    protected void btnRequestCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/RequestForBlood.aspx");
    }
}