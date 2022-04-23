<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Create Recruitment.aspx.cs" Inherits="Erecruitment.Create_Recruitment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
      .crsbtn {
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
   

.crsbtn:hover {
    box-shadow: 0 12px 16px 0 #a1ea88,0 40px 100px 0 rgba(0,0,0,0.19);
    -webkit-text-fill-color:white;
}


.crcbtn {
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
.crcbtn:hover {
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
       <td class="auto-style2" colspan="3"><strong style="font-style: normal; background-color:rgba(40, 35, 35, 0.89);font-family:se;font-size:30px;color: white">Create Recruitment Request</strong>
    <br />
    <br /> 
       
   

   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="5px" CellPadding="5" Height="260px" Width="800px" CellSpacing="5" Font-Bold="True" Font-Names="rod" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <asp:CheckBox ID="chkSelect" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="VacancyID">
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
  
       
    <asp:Label ID="Label9" runat="server" Text="Select Placement Consultant ID" Font-Names="rod" ForeColor="White" Font-Size="15pt"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlPlaceId" runat="server" DataSourceID="SqlDataSource2" DataTextField="PlacementConsultantID" DataValueField="PlacementConsultantID">
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
       
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB01HMS92ConnectionString4 %>" SelectCommand="SELECT [PlacementConsultantID] FROM [tbl_Placement_Consul_t4_m1]"></asp:SqlDataSource>
       
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myfirstdatabaseConnectionString %>" SelectCommand="SELECT [PlacementConsultantID] FROM [tbl_Placement_Consul_t4_m1]"></asp:SqlDataSource>
       
    <br />
    <asp:Button CssClass="crsbtn" ID="btnSubmit" runat="server" ForeColor="Red" Text="Submit" OnClick="btnSubmit_Click1"/>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button CssClass="crcbtn" ID="crcbtn" runat="server" ForeColor="Red" Text="Cancel" />
         <br />
                <a class="backbtn" style="font-family:'Monotype Corsiva';font-size:25px;color:white;" href="HR.aspx">Back</a></div>
</asp:Content>
