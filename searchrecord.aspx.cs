using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class searchrecord : System.Web.UI.Page
{

    SqlDataAdapter adapt;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
       
      if(tblc.SelectedIndex==0 || tbb.SelectedIndex==0) 

      {
          Response.Write("<script>alert('Incomplete Search Criteria ')</script>");
      }
      else
      {
        try
        {
             SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UserConnectionString"].ConnectionString);
                    conn.Open();
                    String searchquery = " Select First_Name,Email,Mobile,Gender,Blood_Group,City from Users where City like '%" +tblc.SelectedValue.ToString()+ "%' and Blood_group like '%" + tbb.SelectedValue.ToString() + "%'";
                  
             adapt = new SqlDataAdapter(searchquery, conn);
             DataSet ds = new DataSet();
             adapt.Fill(ds);
                   
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    conn.Close();                                     
                }       

        catch (Exception ex)
        {
            Response.Write("error" + ex.ToString());
        }
      }
      }
}
        
    