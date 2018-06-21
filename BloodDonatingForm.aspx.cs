using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BloodDonatingForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       

    }
protected void btnDonorsubmit_Click(object sender, EventArgs e)
{
    if (IsPostBack)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into CollectedBlood (First_Name,Last_Name,Email,Date_of_Birth,Gender,Blood_Group,Country,City,Mobile,Usertype,Date_of_Donating_Blood) values(@Fname,@Lname,@Email,@DOB,@Gender,@BG,@Country,@City,@Mobile,@Usertype,@DODB)";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@Usertype", "TD");
            cmd.Parameters.AddWithValue("@Fname", tbFname.Text);
            cmd.Parameters.AddWithValue("@Lname", tbLname.Text);
            cmd.Parameters.AddWithValue("@Email", tbemail.Text);
            cmd.Parameters.AddWithValue("@DOB", tbDOB.Text);
            cmd.Parameters.AddWithValue("@Gender", tbgender.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@BG", tbBG.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@Country", tbcountry.Text);
            cmd.Parameters.AddWithValue("@City", tbcity.Text);
            cmd.Parameters.AddWithValue("@Mobile", tbmobile.Text);
            cmd.Parameters.AddWithValue("@DODB", tbDODB.Text);


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
