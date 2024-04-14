using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSmartPhone2
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string chuoi_ket_noi = ConfigurationManager.ConnectionStrings["QLDoAnShopDienThoaiConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(chuoi_ket_noi);
            conn.Open();
            string sql = "insert into users(name,Email,Password) " +
               "values (@name,@Email,@Password)";
            SqlCommand cmd = new SqlCommand(sql, conn);

            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            if (cmd.ExecuteNonQuery() > 0)
            {
                lbThongBao.Text = " Đâng Ký Thành Công";
            }

            else
            {
                lbThongBao.Text = "Đăng Ký Thất bại";
            }
        }
    }
}