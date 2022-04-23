<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="HomeView.aspx.cs" Inherits="Erecruitment.HomeView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>

        <FooterStyle BackColor="#CCCCCC"></FooterStyle>

        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
    </asp:GridView>
</asp:Content>
