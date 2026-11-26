using _03_11_2026.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _03_11_2026
{
    public partial class WebFrm1 : System.Web.UI.Page
    {
        // Khởi tạo DbContext
        private ModelQLNV _context = new ModelQLNV();

        protected void Page_Load(object sender, EventArgs e)
        {
            var lstCV = _context.ChucVus.ToList();
            if (!IsPostBack)
            {

                //DDL_ChucVu.DataSource = _context.ChucVus.ToList();

                DDL_ChucVu.DataValueField = "MaCV";
                DDL_ChucVu.DataTextField = "TenCV";

                DDL_ChucVu.DataBind();
            }
                GridView_ChucVu.DataSource = _context.ChucVus.ToList();
                GridView_ChucVu.DataBind();

            var lstboPhan = _context.Bophans.ToList();
            GridView_BoPhan.DataSource = lstboPhan;
            GridView_BoPhan.DataBind();

        }

        protected void btnShowList_Click(object sender, EventArgs e)
        {
            /*if(!IsPostBack)
            {*/
                var listNV = _context.NhanViens.ToList();
                GridView_NhanVien.DataSource = listNV;
                GridView_NhanVien.DataBind();
            /*}*/
        }

        protected void GridView_BoPhan_SelectedIndexChanged(object sender, EventArgs e)
        {
            string kq = "";
            kq += "Mã bộ phận:" + GridView_BoPhan.SelectedRow.Cells[1].Text + "<br/>";
            kq += "Tên bộ phận:" + GridView_BoPhan.SelectedRow.Cells[2].Text;

            lbl_KQ.Text = kq;

        }
    }
}