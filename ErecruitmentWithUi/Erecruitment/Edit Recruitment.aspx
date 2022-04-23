<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Edit Recruitment.aspx.cs" Inherits="Erecruitment.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
     .btnaver {
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
   

.btnaver:hover {
    box-shadow: 0 12px 16px 0 #a1ea88,0 40px 100px 0 rgba(0,0,0,0.19);
    -webkit-text-fill-color:white;
}

 .btnreer {
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
   

.btnreer:hover {
    box-shadow: 0 12px 16px 0 #a1ea88,0 40px 100px 0 rgba(0,0,0,0.19);
    -webkit-text-fill-color:white;
}


.btnrver {
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
.btnrver:hover {
    box-shadow: 0 12px 16px 0 #f25353,0 40px 100px 0 rgba(0,0,0,0.19);
-webkit-text-fill-color:white;

}


.btnsuber {
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
.btnsuber:hover {
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
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="css/bootstrap.css" rel="stylesheet" />
  <div class="jumbotron" style="border: 4px groove; border-color: black; background: url(new5.jpg); background-size: 100% 100%; font-size: 15px;border-collapse:collapse;box-shadow:rgba(0,0,0,0.19) 11px 11px; font-family: 'Shonar Bangla';">
    <br />
       
   <td class="auto-style2" colspan="3"><strong style="font-style: normal; background-color:rgba(40, 35, 35, 0.89);font-family:se;font-size:30px;color: white">Edit Recruitment Request</strong>
    <br />
    <br /> 
    <asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: large" Text="Enter Recruitment Request ID" Font-Bold="True" Font-Names="rod" ForeColor="White"></asp:Label>
    
   
&nbsp;<asp:TextBox ID="txtRrid" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button CssClass="btnreer" ID="btnReset" runat="server" ForeColor="#FF3300" Text="Reset" OnClick="btnReset_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button CssClass="btnsuber" ID="btnSubmit" runat="server" ForeColor="#666633" Text="Submit" OnClick="btnSubmit_Click" />
    <br />
    <asp:Label ID="lblRi" runat="server" Text="Recruitment Request Id:" Font-Bold="True" Font-Names="rod" ForeColor="White" Font-Size="15pt"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" Height="260px" Width="800px" CellSpacing="5" Font-Bold="True" Font-Names="rod" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:CheckBox ID="chkSelect" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="VacancyID">
                <EditItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("VacancyID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblVid" runat="server" Text='<%# Eval("VacancyID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="No. of Positions">
                <ItemTemplate>
                    <asp:Label ID="lblNop" runat="server" Text='<%# Eval("NoOfPositions") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Skills">
                <ItemTemplate>
                    <asp:Label ID="lblSkills" runat="server" Text='<%# Eval("Skills") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Experience">
                <ItemTemplate>
                    <asp:Label ID="lblExp" runat="server" Text='<%# Eval("Experience") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Location">
                <ItemTemplate>
                    <asp:Label ID="lblLocation" runat="server" Text='<%# Eval("Location") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Domain">
                <ItemTemplate>
                    <asp:Label ID="lblDomain" runat="server" Text='<%# Eval("BusinessDomain") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Required Date">
                <ItemTemplate>
                    <asp:Label ID="lblRbyDate" runat="server" Text='<%# Eval("RequiredByDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <br />
    <asp:Button CssClass="btnrver" ID="Button3" runat="server" Text="Remove Vacancy(s)" OnClick="Button3_Click1"  />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button CssClass="btnaver" ID="Button4" runat="server" Text="Add Vacancy(s)" OnClick="Button4_Click" />
       <br />
                <a class="backbtn" style="font-family:'Monotype Corsiva';font-size:25px;color:white;" href="HR.aspx">Back</a></div>  </div>
</asp:Content>
