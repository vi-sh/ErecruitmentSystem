using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;
using System.Data;
using System.Data.SqlClient;
using BO;


namespace DAL
{
    public class LoginDAL:ILoginDAL
    {
        SqlConnection con = new SqlConnection("server=172.25.192.72;database=db01hms92;user id=pj01hms92;password=tcshyd");
        //SqlConnection con = new SqlConnection("server=LENOVO\\SQLEXPRESS;database=myfirstdatabase;integrated security=SSPI");
        public ILoginBO Login(int eid)
        {
            
            ILoginBO ilbo = new LoginBO();
            SqlCommand cmd = new SqlCommand("usp_LoginDetails_t4_m1", con);
            cmd.CommandType = CommandType.StoredProcedure;
           
            cmd.Parameters.AddWithValue("@eid",eid);
            if(con.State!=ConnectionState.Open)
            con.Open();
           
            SqlDataReader reader = cmd.ExecuteReader();
            if(reader.HasRows)
            {

                reader.Read();
                ilbo.Password = reader["passwordd"].ToString();
                ilbo.Designation = reader["Designation"].ToString();
                return ilbo;
                
            }
            return null;
           
          
          
        }
    }
}
