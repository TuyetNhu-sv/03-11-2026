using _03_11_2026.Model;
using _03_11_2026.ModelView;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _03_11_2026
{
    public partial class FrmWithMP : System.Web.UI.Page
    {
        private ModelQLNV _contextDB = new ModelQLNV();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                loadNV();
            }
        }

        private void loadNV()
        {
            var lstNV = (from nv in _contextDB.NhanViens
                        join cv in _contextDB.ChucVus on nv.MaCV equals cv.MaCV
                        join bp in _contextDB.Bophans on nv.MaBP equals bp.MaBP
                        select new nhanVienModelView()
                        {
                            maNV = nv.MaNV,
                            hoTen = nv.HoNV + " " + nv.TenNV, 
                            gioiTinh = nv.Phai,
                            boPhan = bp.TenBP,
                            chucVu = cv.TenCV
                        }).OrderBy(x => x.hoTen).ToList();
                ListViewNV.DataSource = lstNV;
                ListViewNV.DataBind();

        }
    }
}