<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Unit Head.aspx.cs" Inherits="Erecruitment.Unit_Head" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    
            .emp4 {
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
   

.emp4:hover {
   box-shadow: 0px 15px 25px 0px darkred,0 80px 130px 0 rgba(0,0,0,0.20);
-webkit-text-fill-color:black;
}

.emp5{
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
   

.emp5:hover {
    box-shadow: 0px 15px 95px 0px black,0 80px 130px 0 rgba(0,0,0,0.20);
-webkit-text-fill-color:darkred;
}



</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
         <div class ="jumbotron" id="example-navbar-collapse" style="border: 4px groove; border-color: #808080;text-align:center; background:url(new5.jpg); background-size: 100% 100%; font-size: 15px;border-collapse:collapse;box-shadow:rgba(0,0,0,0.19) 11px 11px;">
      <div class ="collaps" id="example-navbar-collapse" >
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label1" runat="server" Text="Unit Head :" ForeColor="White" style="text-align: center"></asp:Label>
        <h1 class="auto-style1" ><strong style="font-family: 'Monotype Corsiva';text-align:center; font-size: 35px; color: white; ">Welcome Unit Head</strong></h1> 
                  <ul class = "nav nav-pills col-md-offset-0" style="background-color:darkred;background-image:url(new5.jpg);background-size:100% 100%;text-align:left;">
                      
                       <li><a></a></li>
                      <li><a></a></li>
                      <li><a></a></li>
                      <li><a></a></li>
                      <li><a></a></li>
                      <li><a></a></li>
                      <li><a></a></li>
                       <li><a class="emp4" style="font-family:'Monotype Corsiva';font-size:30px;text-align:center;color:black;" href="Vacancy Request.aspx">Create Vacancy</a></li>
                      <li><a class="emp4" style="font-family:'Monotype Corsiva';font-size:30px;color:black;" href = "Edit Vacancy.aspx">Edit Vacancy</a>
                      <br /> <br />   <a class="emp5" style="font-family:'Monotype Corsiva';font-size:20px;text-align:center;color:black;" href="Login.aspx">Sign out </a></li>
                   
                       <li><a class="emp4" style="font-family:'Monotype Corsiva';font-size:30px;color:black;" href="Approve Vacancy.aspx">Approve Vacancy</a></li>
                      
                     
                    
                  </ul>
        
               </div>
             </div>

</asp:Content>