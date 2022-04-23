<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="HR.aspx.cs" Inherits="Erecruitment.HR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            .emp1 {
    background-color: white; /* Green */
    
    color: black;
    padding: 6px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 4px 2px;
    border: 5px thin;
    box-shadow:2px 2px 2px 2px #808080;
    cursor: pointer;
    -webkit-transition-duration: .2s; /* Safari */
    transition-duration: .3s;
}
   

.emp1:hover {
    box-shadow: 0px 15px 25px 0px darkred,0 80px 130px 0 rgba(0,0,0,0.20);
-webkit-text-fill-color:black;
}
.emp2 {
    background-color: white; 
    border: 5px thin;
    box-shadow:2px 2px 2px 2px #808080;
    color: black;
    padding: 6px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: .2s; /* Safari */
    transition-duration: .3s;
}
   

.emp2:hover {
    box-shadow: 0px 15px 25px 0px darkred,0 80px 130px 0 rgba(0,0,0,0.20);
    -webkit-text-fill-color:black;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <tr>
   
         <div class ="jumbotron" id="example-navbar-collapse" style="border: 4px groove; border-color: #808080;text-align:center; background:url(new5.jpg); background-size: 100% 100%; font-size: 15px;border-collapse:collapse;box-shadow:rgba(0,0,0,0.19) 11px 11px;">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Label ID="Label1" runat="server" Text="HR :" style="text-align: center" ForeColor="White"></asp:Label>
              <h1 class="auto-style1" ><strong style="font-family: 'Monotype Corsiva';text-align:center; font-size: 35px; color: #ffffff; ">Welcome HR</strong></h1> 
            
             <ul class = "nav nav-pills col-md-offset-0" style="background-size:100% 100%;text-align:center;">
                      
                      <li><a class="emp1" style="font-family:'Monotype Corsiva';font-size:20px;text-align:center;color:black;" href="Create Recruitment.aspx">Create Recruitment request </a>
                      
                        <li>  <a class="emp1" style="font-family:'Monotype Corsiva';font-size:20px;color:black;" href = "Edit Recruitment.aspx">Edit Recruitment Request</a>
                            <br /><br />
                         <a class="emp2" style="font-family:'Monotype Corsiva';font-size:20px;color:black;" href="Create Placement.aspx">Create Placement Consultant </a></li>
                         <li> <a class="emp2" style="font-family:'Monotype Corsiva';font-size:20px;color:black;" href="Delete Recruitment.aspx">Delete Recruitment Request </a>
                             <br /><br />
                       <a class="emp2" style="font-family:'Monotype Corsiva';font-size:20px;color:black;" href="Edit Placement.aspx">Edit/Delete Placement Consultant </a></li>
                    <li><a class="emp1" style="font-family:'Monotype Corsiva';font-size:20px;color:black;" href="View Recruitment.aspx">View Recruitment Request </a>
                           </li>
                  
                  </ul>
        <br /><br /><br /><br /><br />
               </div>
    
    </tr>
</table>
</asp:Content>
