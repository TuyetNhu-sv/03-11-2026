using _03_11_2026.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _03_11_2026
{
    public partial class Frm7 : System.Web.UI.Page
    {
        private ModelQLNV _contextDB= new ModelQLNV();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var lsBP =_contextDB.Bophans.ToList();
                GridView_boPhan.DataSource = lsBP;
                GridView_boPhan.DataBind();

            }

            var lstNV = (from nv in _contextDB.NhanViens
                         join bp in _contextDB.Bophans on nv.MaBP equals bp.MaBP
                         join cv in _contextDB.ChucVus on nv.MaCV equals cv.MaCV
                         where (nv.Luong > 30000)
                         select new
                         {
                             hoTen = nv.HoNV + "" + nv.TenNV,
                             gioiTinh = nv.Phai,
                             luong = nv.Luong,
                             chucvu = cv.TenCV,
                             bophan = bp.TenBP
                         }).OrderByDescending(x => x.luong).ToList();
                    GridView_NhanVien.DataSource = lstNV;
                    GridView_NhanVien.DataBind();

        }

        protected void GridView_NhanVien_SelectedIndexChanged(object sender, EventArgs e)
        {
            string kq = "";
            kq += "Họ tên nhân viên: " + GridView_NhanVien.SelectedRow.Cells[1].Text + "<br/>";
            kq += "Giới tính: " + GridView_NhanVien.SelectedRow.Cells[2].Text + "<br/>" ;
            kq += "Tên bộ phận: " + GridView_NhanVien.SelectedRow.Cells[4].Text;

            lbl_KQ.Text = kq;

        }

        protected void GridView_boPhan_SelectedIndexChanged(object sender, EventArgs e)
        {
            var selectedMaBP = GridView_boPhan.SelectedRow.Cells[1].Text;
            var lsNVInBP = _contextDB.NhanViens.Where(x=> x.MaBP == selectedMaBP).ToList();
            GridView_InBP.DataSource = lsNVInBP;
            GridView_InBP.DataBind();
        }
    }
}