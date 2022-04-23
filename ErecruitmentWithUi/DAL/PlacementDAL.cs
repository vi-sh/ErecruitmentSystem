using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using Interfaces;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class PlacementDAL:InterfacePlacementConsultantDAL
    {
        SqlConnection con = new SqlConnection("server=172.25.192.72;database=db01hms92;user id=pj01hms92;password=tcshyd");
        //SqlConnection con = new SqlConnection("server=LENOVO\\SQLEXPRESS;database=myfirstdatabase;integrated security=SSPI");
        public int AddConsultant(InterfacePlacementConsultantBO ipbo)
        {
            
            SqlCommand cmd = new SqlCommand("usp_add_placement_consultant_m1", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter("@placement_consultant_id", SqlDbType.Int);
            p.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(p);
          
            cmd.Parameters.AddWithValue("@placement_consultant_name", ipbo.PlacementConsultantName);
            cmd.Parameters.AddWithValue("@pass_word", ipbo.Password);
            cmd.Parameters.AddWithValue("@location", ipbo.Location);
            con.Open();
            int a = cmd.ExecuteNonQuery();
            con.Close();
            return a;   
        }
 
        public DataSet viewPlacement()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from tbl_Placement_Consul_t4_m1", con);
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

                return ds;
            }
            catch
            {
                return null;
            }
        }



        public DataSet SearchPlacement(string name)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("usp_Search_placement_consultant_m1", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@placement_consultant_name", name);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

                return ds;
            }
            catch
            {
                return null;
            }
        }
        public void del(int a)
        {

           //** SqlConnection con = new SqlConnection("server=172.25.192.72;uid=PJ01HMS92;password=tcshyd;database=DB01HMS92");
            con.Open();            
            SqlCommand cmd = new SqlCommand("Delete from tbl_Placement_Consul_t4_m1 where PlacementConsultantID='" + a + "'", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@placement_consultant_id", a);
            cmd.ExecuteNonQuery();
            con.Close();

        }

        public DataSet update(InterfacePlacementConsultantBO obj)
        {
            //***SqlConnection con = new SqlConnection("server=172.25.192.72;uid=PJ01HMS92;password=tcshyd;database=DB01HMS92");
           // con.Open();

            SqlCommand cmd = new SqlCommand("usp_update_placement_consultant_m1", con);
            cmd.Parameters.AddWithValue("@placement_consultant_id", obj.PlacementConsultantID);
            cmd.Parameters.AddWithValue("@placement_consultant_name", obj.PlacementConsultantName);
            cmd.Parameters.AddWithValue("@pass_word", obj.Password);
            cmd.Parameters.AddWithValue("@location", obj.Location);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }
    }
}
