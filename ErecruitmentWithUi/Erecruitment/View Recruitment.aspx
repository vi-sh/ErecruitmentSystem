<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="View Recruitment.aspx.cs" Inherits="Erecruitment.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .btnrevr {
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
   

.btnrevr:hover {
    box-shadow: 0 12px 16px 0 #a1ea88,0 40px 100px 0 rgba(0,0,0,0.19);
    -webkit-text-fill-color:white;
}


.btnsubmitvr {
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
.btnsubmitvr:hover {
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
       
   <td class="auto-style2" colspan="3"><strong style="font-style: normal; background-color:rgba(40, 35, 35, 0.89);font-family:se;font-size:30px;color: white">View Recruitment</strong>
    <br />
    <br /> 
<br />
<asp:Label ID="Label2" runat="server" Text="Placement Consultant ID" Font-Bold="True" Font-Names="rod" Font-Size="13pt" ForeColor="White"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="ddlPcid" runat="server" DataSourceID="SqlDataSource1" DataTextField="PlacementConsultantID" DataValueField="PlacementConsultantID" AppendDataBoundItems="True">
    <asp:ListItem></asp:ListItem>
    
</asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB01HMS92ConnectionString5 %>" SelectCommand="SELECT [PlacementConsultantID] FROM [tbl_Placement_Consul_t4_m1]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myfirstdatabaseConnectionString2 %>" SelectCommand="SELECT [PlacementConsultantID] FROM [tbl_Placement_Consul_t4_m1]"></asp:SqlDataSource>
<br />
<asp:Label ID="Label3" runat="server" Text="Requested Date" Font-Bold="True" Font-Names="rod" ForeColor="White"></asp:Label>
<asp:TextBox ID="txtReqDate" runat="server"></asp:TextBox>
    <asp:ImageButton ID="ImageButton1" runat="server" Height="21px" ImageUrl="~/1412922540_calendar-128.png" OnClick="ImageButton1_Click" Width="28px" />
    <br /><div style="margin-left:auto;margin-right:auto">
    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
        <DayStyle Width="14%" />
        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#990000" Font-Bold="True" Font-Names="rod" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
        <TodayDayStyle BackColor="#CCCC99" />
    </asp:Calendar></div>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
<br /> <div style="margin-left:auto;margin-right:auto">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" HorizontalAlign="Center" CellSpacing="5" Font-Bold="True" Font-Names="rod" ForeColor="Black" Height="300px" Width="600px">
  <Columns>
        <asp:TemplateField HeaderText="Recruitment Request ID">
            <ItemTemplate>
                <asp:Label ID="lblRrid" runat="server" Text='<%# Eval("RECRUITMENT_REQUESTID") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Requested Date ">
            <ItemTemplate>
                <asp:Label ID="lblReqDate" runat="server" Text='<%# Eval("RequesteddDate") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Placement Consultant ID">
            <ItemTemplate>
                <asp:Label ID="lblPlaceConId" runat="server" Text='<%# Eval("PlacementConsultantID") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
    <RowStyle BackColor="White" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView></div>
<br />
<asp:Button CssClass="btnrevr" ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
&nbsp;<asp:Button CssClass="btnsubmitvr" ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <br />
                <a class="backbtn" style="font-family:'Monotype Corsiva';font-size:25px;color:white;" href="HR.aspx">Back</a>
       </div>
</asp:Content>
