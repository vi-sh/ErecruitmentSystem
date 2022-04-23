<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Erecruitment.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
    }
    .Button1 {
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
   

.Button1:hover {
    box-shadow: 0 12px 16px 0 #a1ea88,0 40px 100px 0 rgba(0,0,0,0.19);
    -webkit-text-fill-color:white;
}


.Button2 {
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
   

.Button2:hover {
    box-shadow: 0 12px 16px 0 #f25353,0 40px 100px 0 rgba(0,0,0,0.19);
-webkit-text-fill-color:white;

}


        .auto-style3 {
            width: 613px;
        }


    </style>
    <script type ="text/javascript">
        function check()
        {
            var temp1='<%=txtId.ClientID%>';
            var temp2 = '<%=txtPwd.ClientID%>';

            var id = document.getElementById(temp1).value;
            var password = document.getElementById(temp2).value;
            if(id==""||password=="")
            {
                alert("enter valid details before logging in");
                return false;
            }
            return true;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <div class="jumbotron" style="border: 4px groove; border-color: black; background: url(new5.jpg); background-size: 100% 100%; font-size: 15px;border-collapse:collapse;box-shadow:rgba(0,0,0,0.19) 11px 11px;">
    <br />
    <br />
     <div class="col-lg-offset-1" style="text-align:right;">
        <table class="nav-justified">
            <td class="auto-style2" colspan="3"><strong style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;font-size:45px;color: white"> Login </strong>
          <br />
    <br />
            </td>
        
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="ddl" >&nbsp;</td>
    </tr>
        <td class="auto-style3"><strong style="font-family:'Monotype Corsiva';font-size:25px;  color: white">UserName</strong></td>
        <td>
            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
        </td>
   
    <tr>
        <td class="auto-style3"><strong style="font-family:'Monotype Corsiva';font-size:25px;  color: white">Password</strong></td>
        <td>
            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2"style=" font-family:'Monotype Corsiva';font-size:28px;">  
          <asp:Button class="Button1" ID="Button1" runat="server" OnClick="Button1_Click" OnClientClick="return check();" Text="Login"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
          <asp:Button class="Button2" ID="btncancel" runat="server" Text="Cancel"/>
        </td>
    </tr>
</table>
        </div>
        <br />
        <br />
        <br />
        <br />
        </div>
</asp:Content>
