<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Add Vacancy Details.aspx.cs" Inherits="Erecruitment.Add_Vacancy_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 98px;
        }
        .auto-style3 {
            height: 37px;
            width: 164px;
        }
        .auto-style4 {
            height: 39px;
            text-align: center;
        }
        .auto-style5 {
            height: 43px;
            text-align: center;
        }
        .auto-style6 {
            height: 36px;
        }
        .auto-style7 {
            width: 246px;
        }
        .auto-style8 {
            height: 36px;
            width: 246px;
        }
        .auto-style9 {
            height: 98px;
            width: 164px;
        }
        .auto-style10 {
            width: 164px;
        }
        .auto-style11 {
            height: 36px;
            width: 164px;
        }

        
        .btnsubmitavd {
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
   

.btnsubmitavd:hover {
    box-shadow: 0 12px 16px 0 #a1ea88,0 40px 100px 0 rgba(0,0,0,0.19);
    -webkit-text-fill-color:white;
}


.btnresetavd {
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
.btnresetavd:hover {
    box-shadow: 0 12px 16px 0 #f25353,0 40px 100px 0 rgba(0,0,0,0.19);
-webkit-text-fill-color:white;

}    

.btncancelavd {
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
.btncancelavd:hover {
    box-shadow: 0 12px 16px 0 #f25353,0 40px 100px 0 rgba(0,0,0,0.19);
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

        .auto-style12 {
            width: 246px;
            height: 39px;
        }
        .auto-style13 {
            width: 164px;
            height: 39px;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            height: 36px;
            text-align: center;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <link href="css/bootstrap.css" rel="stylesheet" />
  <div class="jumbotron" style="border: 4px groove; border-color: black; background: url(new5.jpg); background-size: 100% 100%; font-size: 15px;border-collapse:collapse;box-shadow:rgba(0,0,0,0.19) 11px 11px; font-family: 'Shonar Bangla';">
    <br />
       
   <td class="auto-style2" colspan="3"><strong style="background-color:rgba(40, 35, 35, 0.89);font-family:Rod;font-size:30px;color: white">Add Vacancy Details</strong>
    <br />
    <br /> 
   
    <br />
    <br />
    <br />
    <br />

    <table  style="align-content:center;align-content:center; width: 1217px;" >
        
        <tr>
            <td class="auto-style5" style="font-family: rod; font-size: 11pt; color: white">Vacancy Request ID</td>
            <td class="auto-style8">
                <asp:DropDownList ID="ddlVid" runat="server" DataSourceID="SqlDataSource1" DataTextField="Vacancy_RequestID" DataValueField="Vacancy_RequestID">
                    <asp:ListItem>--Select ID--</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myfirstdatabaseConnectionString3 %>" SelectCommand="SELECT [Vacancy_RequestID] FROM [tbl_VacancyRequest_t4_m1]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB01HMS92ConnectionString3 %>" SelectCommand="SELECT [Vacancy_RequestID] FROM [tbl_VacancyRequest_t4_m1]"></asp:SqlDataSource>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="No. of Positions" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtNoOfPos" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNoOfPos" ErrorMessage="* Enter No. Of Positions" ForeColor="White"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label3" runat="server" Text="Skills" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="txtSkills" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style13">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSkills" ErrorMessage="* Enter Skills " ForeColor="White"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label4" runat="server" Text="Experience" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtExp" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtExp" ErrorMessage="* Enter Experience " ForeColor="White"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="Location" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtLoc" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLoc" ErrorMessage="* Enter Location" ForeColor="White"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label6" runat="server" Text="Domain" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtDom" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style10">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">
               
                 <asp:Label ID="Label7" runat="server" Text="Required by Date" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style6">
               &nbsp;<asp:TextBox ID="txtRdate" runat="server"></asp:TextBox>
               
               
            </td>
            <td class="auto-style11"></td>
           
        </tr>
        <tr><td class="auto-style14"></td><td style="font-family: rod; font-size: 11pt; color: white">
            <asp:Label ID="lblVaid" runat="server" Text="VacancyId"></asp:Label>
            </td></tr>
        <tr><td class="auto-style14"></td><td></td></tr>
        <tr>
            <td ">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                <a class="backbtn" style="font-family:'Monotype Corsiva';font-size:25px;color:white;" href="Unit Head.aspx">Back</a>
            </td>
            <td class="auto-style2">
        <asp:Button CssClass="btnsubmitavd" ID="btnSubmit" runat="server" Text="Submit" Width="77px" OnClick="btnSubmit_Click" />
            </td>
            <td class="auto-style9">
                <asp:Button CssClass="btnresetavd" ID="btnReset" runat="server" Text="Reset" Width="105px" OnClick="btnReset_Click" />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
