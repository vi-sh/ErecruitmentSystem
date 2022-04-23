<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Delete Recruitment.aspx.cs" Inherits="Erecruitment.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
      .drvvbtn {
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
   

.drvvbtn:hover {
    box-shadow: 0 12px 16px 0 #a1ea88,0 40px 100px 0 rgba(0,0,0,0.19);
    -webkit-text-fill-color:white;
}


.drdbtn {
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
.drdbtn:hover {
    box-shadow: 0 12px 16px 0 #f25353,0 40px 100px 0 rgba(0,0,0,0.19);
-webkit-text-fill-color:white;

}

.drrebtn {
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
.drrebtn:hover {
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
       
   <td class="auto-style2" colspan="3"><strong style="font-style: normal; background-color:rgba(40, 35, 35, 0.89);font-family:se;font-size:30px;color: white">Delete Recruitment Request</strong>
    <br />
    <br /> 
    <asp:Label ID="Label2" runat="server" style="font-weight: 700; font-size: large" Text="Enter Recruitment Request ID" Font-Bold="True" Font-Names="rod" ForeColor="White" ></asp:Label>
&nbsp;<asp:TextBox ID="txtRrid" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button CssClass="drrebtn" ID="btnReset" runat="server" ForeColor="#FF3300" Text="Reset" OnClick="btnReset_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button CssClass="drvvbtn" ID="btnViewVac" runat="server" ForeColor="#666633" Text="View Vacancy(s)" OnClick="btnViewVacancy_Click" />
    <br />
    <asp:Label ID="lblRrid" runat="server" Text="Recruitment Request Id:" Font-Bold="True" Font-Names="rod" ForeColor="White" Font-Size="15pt"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" Height="260px" Width="800px" CellSpacing="5" Font-Bold="True" Font-Names="rod" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField HeaderText="VacancyID">
                <ItemTemplate>
                    <asp:Label ID="lblVid" runat="server" Text='<%# Eval("VacancyID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Vacancy Request ID">
                <ItemTemplate>
                    <asp:Label ID="lblVreqId" runat="server" Text='<%# Eval("VacancyRequest_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="No. of Positions">
                <ItemTemplate>
                    <asp:Label ID="lblNoOfPos" runat="server" Text='<%# Eval("NoOfPositions") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("STATUSS") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Location">
                <ItemTemplate>
                    <asp:Label ID="lblLoc" runat="server" Text='<%# Eval("Location") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Domain">
                <ItemTemplate>
                    <asp:Label ID="lblDom" runat="server" Text='<%# Eval("BusinessDomain") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Required Date">
                <ItemTemplate>
                    <asp:Label ID="lblRdate" runat="server" Text='<%# Eval("RequiredByDate") %>'></asp:Label>
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
    <asp:Button CssClass="drdbtn" ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
    `&nbsp;&nbsp;&nbsp; 
      <br />
                <a class="backbtn" style="font-family:'Monotype Corsiva';font-size:25px;color:white;" href="HR.aspx">Back</a>  </div>
</asp:Content>
