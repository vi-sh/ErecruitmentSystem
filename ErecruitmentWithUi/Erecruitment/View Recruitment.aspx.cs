using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Interfaces;
using BLL;
using FactoryBO;
using FactoryBLL;
using BO;

namespace Erecruitment
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        FactoryRecruitmentBLL frbll = new FactoryRecruitmentBLL();
        IRecruitmentBLL irbll;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Calendar1.Visible = false;
            DisplayRecruitmentRequestAll();
            

        }

        protected void btnSelectDate_Click(object sender, EventArgs e)
        {
            txtReqDate.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = true;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar1.Visible = true;
           
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtReqDate.Text = Calendar1.SelectedDate.ToString();
            Calendar1.Visible = false;
        }
        protected void DisplayRecruitmentRequestAll()
        {
            DataSet ds;
            irbll = frbll.GetRecruitBllObj();
           // int pcid = Convert.ToInt32(ddlPcid.SelectedItem.Text);
            //DateTime dt = Convert.ToDateTime(txtReqDate.Text);
            ds = irbll.ViewRecruitmentRequestAll();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        protected void DisplayRecruitmentRequestByRid()
        {
            DataSet ds;
            irbll = frbll.GetRecruitBllObj();
            int r = Convert.ToInt32(ddlPcid.SelectedItem.Text);
            ds = irbll.ViewRecruitmentRequestByRid(r);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        protected void DisplayRecruitmentRequestByDate()
        {
            DataSet ds;
            irbll = frbll.GetRecruitBllObj();
            DateTime d = Convert.ToDateTime(txtReqDate.Text);
            ds = irbll.ViewRecruitmentRequestByDate(d);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        protected void DisplayRecruitmentRequestByIdAndDate()
        {
            DataSet ds;
            irbll = frbll.GetRecruitBllObj();
            int i = Convert.ToInt32(ddlPcid.SelectedItem.Text);
            DateTime d = Convert.ToDateTime(txtReqDate.Text);
            ds = irbll.ViewRecruitmentRequestByIdAndDate(i, d);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

        }
        protected void Button3_Click1(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(ddlPcid.SelectedItem.Text) && string.IsNullOrEmpty(txtReqDate.Text))
            {
                DisplayRecruitmentRequestAll();
            }
            else if ((string.IsNullOrEmpty(ddlPcid.SelectedItem.Text)) && (!string.IsNullOrEmpty(txtReqDate.Text)))
            {
                DisplayRecruitmentRequestByDate();
            }
            else if (!string.IsNullOrEmpty(ddlPcid.SelectedItem.Text) && string.IsNullOrEmpty(txtReqDate.Text))
            {
                DisplayRecruitmentRequestByRid();
            }
            else
            {
                DisplayRecruitmentRequestByIdAndDate();
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtReqDate.Text = "";
            ddlPcid.SelectedIndex = 0;
        }

        
               
    }
}