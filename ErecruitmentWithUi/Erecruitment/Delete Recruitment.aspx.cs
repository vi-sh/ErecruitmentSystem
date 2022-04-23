using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Interfaces;
using BLL;
using FactoryBO;
using FactoryBLL;
using BO;
using System.Data;

namespace Erecruitment
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        IRecruitmentBLL irbll;
        FactoryRecruitmentBLL frbll = new FactoryRecruitmentBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DisplayRecruitmentRequest2()
        {
            DataSet ds;
            irbll = frbll.GetRecruitBllObj();
            ds = irbll.ViewRecruitmentRequest2(Convert.ToInt32(txtRrid.Text));
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtRrid.Text = "";
        }

        protected void btnViewVacancy_Click(object sender, EventArgs e)
        {
            lblRrid.Text += txtRrid.Text;
            DisplayRecruitmentRequest2();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int r = Convert.ToInt32(txtRrid.Text);
            irbll = frbll.GetRecruitBllObj();
            bool b = irbll.DeleteRecruitmentRequest(r);
            DisplayRecruitmentRequest2();
            if(b==true)
            {
                Response.Write("<script type = text/javascript>");
                Response.Write("alert('success')");
                Response.Write("</script>");
            }
            else
            {
                Response.Write("<script type = text/javascript>");
                Response.Write("alert('failure')");
                Response.Write("</script>");
            }
            
        }
    }
}