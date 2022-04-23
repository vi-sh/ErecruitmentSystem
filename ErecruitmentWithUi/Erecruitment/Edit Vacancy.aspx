<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Edit Vacancy.aspx.cs" Inherits="Erecruitment.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
        <td class="auto-style2" colspan="3"><strong style="background-color:rgba(40, 35, 35, 0.89);font-family:Rod;font-size:30px;color: white">Edit Vacancy</strong>
    <br />
    <br /> 
  
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" CellSpacing="5" ForeColor="Black" GridLines="Vertical" Height="260px" HorizontalAlign="Center" Width="700px" OnRowCancelingEdit="GridView1_RowCancelingEdit1" OnRowDeleting="GridView1_RowDeleting1" OnRowEditing="GridView1_RowEditing1" OnRowUpdating="GridView1_RowUpdating1" Font-Bold="True" Font-Italic="False" Font-Names="Rod">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField HeaderText="Edit">
                <EditItemTemplate>
                    <asp:LinkButton ID="btn_save" runat="server" CommandName="Update">Save </asp:LinkButton>
                    <asp:LinkButton ID="btn_cancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="btn_edit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Remove">
                <ItemTemplate>
                    <asp:LinkButton ID="lbDel" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="VacancyId">
                <ItemTemplate>
                    <asp:Label ID="lblVacid" runat="server" Text='<%# Eval("VacancyID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="No. of positions">
                <EditItemTemplate>
                    <asp:TextBox ID="txtNop" runat="server" Text='<%# Eval("NoOfPositions") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblnop" runat="server" Text='<%# Eval("NoOfPositions") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Skills">
                <EditItemTemplate>
                    <asp:TextBox ID="txtSkills" runat="server" Text='<%# Eval("Skills") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblSkills" runat="server" Text='<%# Eval("Skills") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Experience">
                <EditItemTemplate>
                    <asp:TextBox ID="txtExp" runat="server" Text='<%# Eval("Experience") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblExp" runat="server" Text='<%# Eval("Experience") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Required Date ">
                <EditItemTemplate>
                    <asp:TextBox ID="txtDate" runat="server" Text='<%# Eval("RequiredByDate") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblDate" runat="server" Text='<%# Eval("RequiredByDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Status">
                <ItemTemplate>
                    <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("STATUSS") %>'></asp:Label>
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
    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Names="rod" Font-Size="12pt"></asp:Label>
       <br />
                <a class="backbtn" style="font-family:'Monotype Corsiva';font-size:25px;color:white;" href="Unit Head.aspx">Back</a>
            </div>
</asp:Content>
