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
    public partial class Create_Recruitment : System.Web.UI.Page
    {
        FactoryRecruitmentBLL frbll = new FactoryRecruitmentBLL();
        IRecruitmentBLL irbll;
        FactoryRecruitmentBO frbo = new FactoryRecruitmentBO();
        IRecruitmentBO irbo;
        protected void Page_Load(object sender, EventArgs e)
        {
             if (!IsPostBack)
            {
                DisplayRecruitmentRequest();
            }

        }

        protected void DisplayRecruitmentRequest()
        {
            DataSet ds;
            irbll = frbll.GetRecruitBllObj();
            ds = irbll.ViewRecruitmentRequest();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();


        }
        
        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            bool b = false;
            // GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            int placeCid = Convert.ToInt32(ddlPlaceId.SelectedItem.Text);
            irbll = frbll.GetRecruitBllObj();
            int r = irbll.CreateRrequestGenerateId(placeCid);
            foreach (GridViewRow grv in GridView1.Rows)
            {
                CheckBox chk = grv.FindControl("chkSelect") as CheckBox;
                if (chk.Checked)
                {
                    Label lvid = grv.FindControl("lblVid") as Label;
                    // irbo = frbo.GetRecruitBoObj();
                    irbll = frbll.GetRecruitBllObj();
                    int vid = Convert.ToInt32(lvid.Text);
                    b = irbll.CreateRrequestAcceptRrid(r, vid);
                }
            }
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

            DisplayRecruitmentRequest();
        }
        
        
        }
       
    }

