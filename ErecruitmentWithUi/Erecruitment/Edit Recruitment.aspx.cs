using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BO;
using BLL;
using FactoryBLL;
using FactoryBO;
using Interfaces;

namespace Erecruitment
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        FactoryRecruitmentBLL frbll = new FactoryRecruitmentBLL();
        IRecruitmentBLL irbll;
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void DisplayRecruitmentRequestById()
        {
            DataSet ds;
            irbll = frbll.GetRecruitBllObj();
            ds = irbll.ViewRecruitmentRequestById(Convert.ToInt32(txtRrid.Text));
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            lblRi.Text += txtRrid.Text;
            DisplayRecruitmentRequestById();

        }
        protected void btnViewVacancy_Click(object sender, EventArgs e)
        {

        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            foreach (GridViewRow grv in GridView1.Rows)
            {
                CheckBox chk = grv.FindControl("chkSelect") as CheckBox;
                if (chk.Checked)
                {
                    int rrid = Convert.ToInt32(txtRrid.Text);
                    Label lvid = grv.FindControl("lblVid") as Label;
                    irbll = frbll.GetRecruitBllObj();
                    int id = Convert.ToInt32(lvid.Text);
                    bool b = irbll.UntagRecruitmentRequest(rrid, id);
                    if (b == true)
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
            DisplayRecruitmentRequestById();
        }

        protected void btnReset_Click1(object sender, EventArgs e)
        {
            txtRrid.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Create Recruitment.aspx");
        }
            

        

        
    }
}