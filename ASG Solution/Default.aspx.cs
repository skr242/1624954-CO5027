using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASG_Solution
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=SQL2016.fse.network;Initial Catalog=db_1624954_co5027_asg;Persist Security Info=True;User ID=user_db_1624954_co5027_asg;Password=Skr-081187");

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "select * from tblProducts INNER JOIN tblImage ON tblProducts.ID = tblImage.ImageName where Featured=1 AND Quantity>0";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            rptrProducts.DataSource = dt;
            rptrProducts.DataBind();
            con.Close();
        }
    }
}