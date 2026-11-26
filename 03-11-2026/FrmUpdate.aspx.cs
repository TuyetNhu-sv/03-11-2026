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
    public partial class FrmUpdate : System.Web.UI.Page
    {
        private ModelQLNV _contextDB = new ModelQLNV();
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_MaBP.Enabled = false;
            PanelBP.Visible = true;
            LoadBP();

        }

        private void LoadBP()
        {
            //var lstBP = _contextDB.Bophans.OrderBy(x => x.TenBP).ToList();
            var lstBP = (from bp in _contextDB.Bophans
                        select new BoPhanModelView()
                        {
                            maBP = bp.MaBP,
                            tenBP = bp.TenBP 
                        }).OrderBy(x => x.tenBP).ToList();
            gvBoPhan.DataSource = lstBP;
            gvBoPhan.DataBind();
        }

        protected void btn_Them_Click(object sender, EventArgs e)
        {
            PanelBP.Visible = true;
            txt_MaBP.Text = "";
            txt_TenBP.Text = "";

        }

        protected void btn_Insert_Click(object sender, EventArgs e)
        {
            var LstBP = _contextDB.Bophans.ToList();
            int slg = LstBP.Count();
            string newMaBP = "BP" + (slg + 1).ToString();


            try
            {
                Bophan newBP = new Bophan();
                //newBP.MaBP = txt_MaBP.Text;
                newBP.MaBP = newMaBP;
                newBP.TenBP = txt_TenBP.Text;

                _contextDB.Bophans.Add(newBP);


                _contextDB.SaveChanges();

                lblKQ.Visible=true;
                lblKQ.Text = "Insert success!";
                lblKQ.ForeColor = System.Drawing.Color.Green;

                LoadBP();
            }
            catch (Exception)
            {
                lblKQ.Text = "Insert failed!";
                lblKQ.ForeColor = System.Drawing.Color.Red;
            }
            finally 
            { 
            
            }
        }

        protected void gvBoPhan_SelectedIndexChanged(object sender, EventArgs e)
        {
            string maBPSelected = gvBoPhan.SelectedRow.Cells[1].Text;
            string tenBPSelected = gvBoPhan.SelectedRow.Cells[2].Text;
            txt_MaBP.Text = Server.HtmlDecode(maBPSelected);
            txt_TenBP.Text = Server.HtmlDecode(tenBPSelected);

            btn_Insert.Enabled = false;

        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            var bpEdit = _contextDB.Bophans.Where(x => x.MaBP == txt_MaBP.Text).FirstOrDefault();
            if (bpEdit != null)
            {
                bpEdit.TenBP = txt_TenBP.Text;

                _contextDB.SaveChanges();

                LoadBP();

                lblKQ.Text = "UDATE SUCCESS!";
                lblKQ.ForeColor = System.Drawing.Color.Green; 
            } 
            else
            {
                lblKQ.Text = "UPDATE FAILED!";
                lblKQ.ForeColor = System.Drawing.Color.Red;
            }

        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {

        }

        protected void gvBoPhan_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string maBPRemove = gvBoPhan.Rows[e.RowIndex].Cells[2].Text;

            var bpRemove = _contextDB.Bophans.Where(x=>x.MaBP == maBPRemove).FirstOrDefault();
            if (bpRemove != null)
            {
                _contextDB.Bophans.Remove(bpRemove);

                _contextDB.SaveChanges();

                LoadBP();

                lblKQ.Text = "REMOVE SUCCESS!";
                lblKQ.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblKQ.Text = "REMOVE FAILED!" +
                    " BỘ BẬN NÀY KHÔNG TỒN TẠI";
                lblKQ.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}