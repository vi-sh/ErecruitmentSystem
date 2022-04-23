using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Interfaces;
using BO;
using FactoryBLL;
using BLL;
using FactoryBO;

namespace Erecruitment
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["id"] = txtId.Text;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            FactoryLoginBLL flbll = new FactoryLoginBLL();
            FactoryLoginBO flbo = new FactoryLoginBO();
            ILoginBLL ilbll = flbll.GetLoginBLLobj();
            ILoginBO ilbo = flbo.GetLoginBoObj();

            ilbo = ilbll.Login(Convert.ToInt32(txtId.Text));
           
            if(ilbo.Designation=="HR" && txtPwd.Text==ilbo.Password)
            {
                Response.Redirect("HR.aspx");
            }
            else if (ilbo.Designation=="Employee" && txtPwd.Text==ilbo.Password)
            {
                Response.Redirect("Employee.aspx");
            }
            else if (ilbo.Designation == "Unit Head" && txtPwd.Text == ilbo.Password)
            {
                Response.Redirect("Unit Head.aspx");
            }
            else
            {
                Response.Write("<script type = text/javascript>");
                Response.Write("alert('Enter Valid Details')");
                Response.Write("</script>");
            }
        }
    }
}