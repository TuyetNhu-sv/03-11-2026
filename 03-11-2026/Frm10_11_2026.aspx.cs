using _03_11_2026.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _03_11_2026
{
    public partial class Frm10_11_2026 : System.Web.UI.Page
    {
        private ModelQLNV _contextDB = new ModelQLNV();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                var lstCV = _contextDB.ChucVus.ToList();
                RepeaterCV.DataSource = lstCV;
                RepeaterCV.DataBind();

                ListViewCV.DataSource = lstCV;
                ListViewCV.DataBind();
;            }
        }

        protected void DataPagerCV_PreRender(object sender, EventArgs e)
        {

        }
    }
}