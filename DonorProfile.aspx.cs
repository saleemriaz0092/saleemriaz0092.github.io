using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class SignUp : System.Web.UI.Page
{
    string user;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        try
        {


              tbuname.Enabled = false;
            tbfn.Enabled = false;
            tbLname.Enabled = false;
            tbDOB.Enabled = false;
            tbgender.Enabled = false;
            tbBG.Enabled = false;

            user = Session["USERNAME"].ToString();


            Response.Write("<script>alert('username is: " + user + "')</script>");


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);
            conn.Open();
            string getuserdetails = "select * from Users where Username='" + user + "'";
            SqlCommand cmd = new SqlCommand(getuserdetails, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            tbuname.Text = reader.GetString(1);
            tbfn.Text = reader.GetString(2);
            tbLname.Text = reader.GetString(3);
            tbemail.Text = reader.GetString(4);
           tbDOB.Text = reader.GetString(5);
            tbgender.Text = reader.GetString(6);
            tbBG.Text = reader.GetString(7);
            dc.Text = reader.GetString(8);
            tbcity.Text = reader.GetString(9);
            tbmobile.Text = reader.GetDecimal(10).ToString();


            conn.Close();
        }
        catch(Exception ex)
        {
            Response.Write ("ERROR :" + ex.ToString());
        }
        else
            Response.Write("IGnored PAge Load :)");
       
    
        }
    protected void btnsignup_Click(object sender, EventArgs e)
    {
        {if(dc.SelectedIndex!=0 && tbBG.SelectedIndex!=0 && tbgender.SelectedIndex!=0)
        {
            try
            {
                  SqlConnection conn= new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);                                     
                conn.Open();

                //string sql="Update Users set First_Name='"+tbfn.Text+"',Last_Name='"+tbLname.Text+"',Email='"+tbemail.Text+"',Date_of_Birth='"+tbDOB.Text+"',Gender='"+tbgender.SelectedValue.ToString()+"',Blood_Group='"+tbBG.SelectedValue.ToString()+"',Country='"+dc.SelectedValue.ToString()+"',City='"+tbcity.Text+"',Mobile='"+tbmobile.Text+"' WHERE Username='mansoor'";
                string sql = "Update Users set Email='" + tbemail.Text + "',Country='" + dc.SelectedValue.ToString() + "',City='" + tbcity.Text + "',Mobile='" + tbmobile.Text + "' WHERE Username='" + tbuname.Text + "'";
               
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Changes saved successfully!')</script>");
                conn.Close();
                }
                                         
            catch (Exception ex)
            {
                Response.Write("Error :" + ex.ToString());
            }
        }
        else
        {
 Response.Write("<script>alert('Fill All ')</script>");
    
        }
        }
    }
        
    protected void tbuname_TextChanged(object sender, EventArgs e)
    {
          
    }
}



