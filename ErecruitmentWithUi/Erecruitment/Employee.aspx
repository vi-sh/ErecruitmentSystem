<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="Erecruitment.Employee" %>
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
   

.emp2:hover {
    box-shadow: 0px 15px 25px 0px darkred,0 80px 130px 0 rgba(0,0,0,0.20);
    -webkit-text-fill-color:black;
}

.emp3 {
    background-color: darkred; /* Green */
    border: 2px thin;
    box-shadow:2px 2px 2px 2px #808080;
    color: black;
    padding: 6px;
    text-align: center;
    text-decoration: none;
    display: ruby-base;
    font-size: 10px;
    margin: 2px 2px;
    cursor: pointer;
    -webkit-transition-duration: .8s; /* Safari */
    transition-duration: .8s;
}
   

.emp3:hover {
    box-shadow: 0px 15px 95px 0px black,0 80px 130px 0 rgba(0,0,0,0.20);
-webkit-text-fill-color:darkred;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="collaps" id="example-navbar-collapse" >
        <asp:Label ID="Label1" runat="server" Text="Employee :" style="text-align: center" Font-Bold="False" Font-Names="Rod" ForeColor="Black" ></asp:Label>
        <h1 class="auto-style1" ><strong style="font-family: 'Monotype Corsiva';text-align:center; font-size: 35px; color: #000000; ">Welcome Employee</strong></h1> 
                  <ul class = "nav nav-pills col-md-offset-0" style="background-color:darkred;background-image:url(new5.jpg);background-size:100% 100%;text-align:center;border:5px black;box-shadow:2px 3px 3px 3px #808080;">
                      <br  /> <br />
                       <br />
                       <li><a></a></li>
                      <li><a></a></li>
                      <li><a></a></li>
                      <li><a></a></li>
                      <li><a></a></li>
                      <li><a></a></li>
                      <li><a></a></li>
                       <li><a class="emp1" style="font-family:'Monotype Corsiva';font-size:30px;text-align:center;color:black;" href="Vacancy Request.aspx">Create Vacancy </a></li>
                      <li><a class="emp2" style="font-family:'Monotype Corsiva';font-size:30px;color:black;" href = "Edit Vacancy.aspx">Edit/Delete Vacancy Request</a>
                      <br /> <br />   <a class="emp3" style="font-family:'Monotype Corsiva';font-size:20px;text-align:center;color:black;" href="Login.aspx">Sign out </a></li>
                   
                       <li></li>
                      
                     
                      <br />
                      <br />
                      <br />
                       <br  />
                      <br />
                      
                      
                      <br  />
                      <br /> 
                      <br  />
                      <br /> 
                      <br  />
                      <br  />
                       <br  />
                       <br  />
                       
                  </ul>
        
               </div>



</asp:Content>