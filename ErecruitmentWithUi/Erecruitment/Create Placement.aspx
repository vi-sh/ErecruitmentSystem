<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Create Placement.aspx.cs" Inherits="Erecruitment.Create_Placement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .btnsubmitcp {
    background-color: #000000; /* Green */
    border: none;
    color: white;
    padding: 8px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 6px 3px;
    cursor: pointer;
    -webkit-transition-duration: 0.1s; /* Safari */
    transition-duration: 0.1s;
}
   

.btnsubmitcp:hover {
    box-shadow: 0 12px 16px 0 #a1ea88,0 40px 100px 0 rgba(0,0,0,0.19);
    -webkit-text-fill-color:white;
}


.btncancelcp {
    background-color: #000000; 
    border: none;
    color: white;
    padding: 8px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 6px 3px;
    cursor: pointer;
    -webkit-transition-duration: 0.1s; 
    transition-duration: 0.1s;
}
.btncancelcp:hover {
    box-shadow: 0 12px 16px 0 #f25353,0 40px 100px 0 rgba(0,0,0,0.19);
-webkit-text-fill-color:white;

}    
        .auto-style2 {
            width: 99%;
            height: 209px;
            margin-left: 0px;
        }
        .auto-style3 {
        }
        
.backbtn {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #000000; 
            color: white;
            padding: 8px;
            text-align: center;
            display: inline-block;
            font-size: 20px;
            margin: 6px 3px;
            cursor: pointer;
            -webkit-transition-duration: 0.1s; 
            transition-duration: 0.1s;
}
   

.backbtn:hover {
    box-shadow: 0 12px 16px 0 #f25353,0 40px 100px 0 rgba(0,0,0,0.19);
-webkit-text-fill-color:white;

}
        .auto-style4 {
            text-align: center;
        }
        </style>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <link href="css/bootstrap.css" rel="stylesheet" />
  <div class="jumbotron" style="border: 4px groove; border-color: black; background: url(new5.jpg); background-size: 100% 100%; font-size: 15px;border-collapse:collapse;box-shadow:rgba(0,0,0,0.19) 11px 11px; font-family: 'Shonar Bangla';">
    <br />
       
   <td class="auto-style2" colspan="3"><strong style="background-color:rgba(40, 35, 35, 0.89);font-family:Rod;font-size:30px;color: white">Add Placement Consultant</strong>
    <br />
    <br /> 
   
      
    
      <table class="auto-style2">
          <tr>
              <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White" Text="Placement Consultant Name"></asp:Label>
              </td>
              <td class="auto-style3">
                  <asp:TextBox ID="txtName" runat="server" Width="161px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Enter Placement Consultant Name " ForeColor="White" ControlToValidate="txtName"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White" Text="Password" ></asp:Label>
                  &nbsp;</td>
              <td class="auto-style3">
                  <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Enter Password " ForeColor="White" ControlToValidate="txtPwd"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White" Text="Confirm Password"></asp:Label>
              </td>
              <td class="auto-style3">
                  <asp:TextBox ID="txtCpwd" runat="server" TextMode="Password"></asp:TextBox>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCpwd" ErrorMessage="Please Reenter Same Password" ForeColor="White"></asp:CompareValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White" Text="Location"></asp:Label>
                  &nbsp;</td>
              <td>
                  <asp:DropDownList ID="ddlLoc" runat="server" DataSourceID="SqlDataSource3" DataTextField="location" DataValueField="location">
                  </asp:DropDownList>
                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DB01HMS92ConnectionString6 %>" SelectCommand="SELECT [location] FROM [tbl_Location_t4_m1]"></asp:SqlDataSource>
                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myfirstdatabaseConnectionString4 %>" SelectCommand="SELECT [location] FROM [tbl_Location]"></asp:SqlDataSource>
              </td>
          </tr>
          <tr>
              <td class="auto-style4">&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style4">
    <asp:Button CssClass="btncancelcp" ID="btnCancel0" runat="server" Text="Cancel" OnClick="btnCancel0_Click" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
              <td>
    <asp:Button CssClass="btnsubmitcp" ID="btnSubmit0" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
              </td>
          </tr>
      </table>
   
      
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB01HMS92ConnectionString2 %>" SelectCommand="SELECT DISTINCT [Location] FROM [tbl_Placement_Consul_Team4_m1]"></asp:SqlDataSource>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
       
                <a class="backbtn" style="font-family:'Monotype Corsiva';font-size:25px;color:white;" href="HR.aspx">Back</a>
       </div>
</asp:Content>
