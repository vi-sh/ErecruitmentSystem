<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Vacancy Request.aspx.cs" Inherits="Erecruitment.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            color: #000000;
            font-size: xx-large;
        height: 45px;
    }
        .auto-style3 {
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
            text-align: right;
        }

        
        .btnsubmitvr {
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
   

.btnsubmitvr:hover {
    box-shadow: 0 12px 16px 0 #a1ea88,0 40px 100px 0 rgba(0,0,0,0.19);
    -webkit-text-fill-color:white;
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

    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <link href="css/bootstrap.css" rel="stylesheet" />
  <div class="jumbotron" style="border: 4px groove; border-color: black; background: url(new5.jpg); background-size: 100% 100%; font-size: 15px;border-collapse:collapse;box-shadow:rgba(0,0,0,0.19) 11px 11px; font-family: 'Shonar Bangla';">
    <br />
       
  
    
    <table class="nav-justified">
        <tr>
            <td class="auto-style2" colspan="3"><strong style="font-family: rod; font-size: 30px; color: #ffffff">VACANCY REQUEST</strong></td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text="EmployeeID" style="text-align: right" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtEid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEid" ErrorMessage="* employee id cannot be empty" ForeColor="White"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Label ID="Label2" runat="server" Text="No of Vacancy" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White"></asp:Label>
            </td>
            <td class="text-center">
                <asp:TextBox ID="txtNofVac" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNofVac" ErrorMessage="* please enter some vacancy number" ForeColor="White"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center">
                &nbsp;</td>
            <td class="text-center">
                <asp:Label ID="lblVacRid" runat="server" Text="VacancyRequestId" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="text-center">
                <asp:Button CssClass="btnsubmitvr" ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Submit" Width="57px" />
              <br />
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </div>
</asp:Content>
