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
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            //Lấy giá trị chuỗi kết nối trong Web.config
            string chuoi_ket_noi = ConfigurationManager.ConnectionStrings["QLDoAnShopDienThoaiConnectionString"].ConnectionString;
            //Tạo đối tượng Connection

            using (SqlConnection conn = new SqlConnection(chuoi_ket_noi))
            {
                conn.Open();
                SqlCommand sql = new SqlCommand("SELECT * FROM users WHERE email='" + email + "' AND password='" + password + "'", conn);
                SqlDataReader luue = sql.ExecuteReader();
                if (luue.HasRows)//kiểm tra xem SqlDataReader có chứa ít nhất một bản ghi hay không.
                {
                    while (luue.Read())
                    {
                        Session["name"] = luue["name"];// lưu name khách hàng vào session
                        Session["id"] = luue["id"];// lưu id khách hàng vào session
                        Response.Redirect("Home.aspx");
                    }
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Đăng Nhập Thành Công')", true);

                }
                else
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thông tin Đăng nhập không đúng')", true);
                }

            }
        }

        
    }
}