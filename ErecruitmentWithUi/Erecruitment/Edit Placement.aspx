<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Edit Placement.aspx.cs" Inherits="Erecruitment.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .btnsubmitep {
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
   

.btnsubmitep:hover {
    box-shadow: 0 12px 16px 0 #a1ea88,0 40px 100px 0 rgba(0,0,0,0.19);
    -webkit-text-fill-color:white;
}
.btnsearchep {
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
   

.btnsearchep:hover {
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
       
  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
  
    <td class="auto-style2" colspan="3"><strong style="font-style: normal; background-color:rgba(40, 35, 35, 0.89);font-family:se;font-size:30px;color: white"> Placement consultant</strong>
        <br /><br />
    <asp:Label ID="Label2" runat="server" Text="Placement Consultant Name" Font-Bold="True" Font-Names="rod" Font-Size="11pt" ForeColor="White"></asp:Label>
&nbsp;
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <br />
    <asp:Button CssClass="btnsubmitep" ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click1"  />
    <asp:Button CssClass="btnsearchep" ID="btnSearch" runat="server"  Text="Search" OnClick="btnSearch_Click1" />
    <br />
    <br />
    &nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="5" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" CellSpacing="5" ForeColor="Black" GridLines="Vertical" Height="260px" HorizontalAlign="Center" Width="700px" Font-Bold="True" Font-Names="Rod">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:LinkButton  ID="LinkButton2" runat="server" CommandName="Update">Save</asp:LinkButton>
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("PlacementConsultantID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("PlacementConsultantName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%# Eval("PlacementConsultantName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password">
                <ItemTemplate>
                    <asp:Label ID="lblpwd" runat="server" Text='<%# Eval("pass_word") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Details">
                <EditItemTemplate>
                    <asp:TextBox ID="txtLocation" runat="server" Text='<%# Eval("Location") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblLocation" runat="server" Text='<%# Eval("Location") %>'></asp:Label>
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
      
       
                <a class="backbtn" style="font-family:'Monotype Corsiva';font-size:25px;color:white;" href="HR.aspx">Back</a>
       </div>
</asp:Content>
