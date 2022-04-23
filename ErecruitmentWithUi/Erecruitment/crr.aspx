<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="crr.aspx.cs" Inherits="Erecruitment.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" style="text-decoration: underline; font-weight: 700; font-style: italic; color: #6699FF" Text="CREATE RECRUITMENT REQUEST"></asp:Label>
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="60px" Width="482px">
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
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
<asp:Label ID="Label9" runat="server" Text="Select Placement Consultant ID"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="ddlPlaceId" runat="server" DataSourceID="SqlDataSource2" DataTextField="PlacementConsultantID" DataValueField="PlacementConsultantID">
        <asp:ListItem>--Select--</asp:ListItem>
        <asp:ListItem></asp:ListItem>
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DB01HMS92ConnectionString4 %>" SelectCommand="SELECT [PlacementConsultantID] FROM [tbl_Placement_Consul_t4_m1]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myfirstdatabaseConnectionString %>" SelectCommand="SELECT [PlacementConsultantID] FROM [tbl_Placement_Consul_t4_m1]"></asp:SqlDataSource>
<br />
<asp:Button ID="btnSubmit" runat="server" ForeColor="Red" Text="Submit" OnClick="btnSubmit_Click" />
<br />
<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
</asp:Content>
