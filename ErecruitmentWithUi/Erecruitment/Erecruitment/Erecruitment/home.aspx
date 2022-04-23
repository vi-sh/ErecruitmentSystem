<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Erecruitment.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    Register Candidate Profile
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <tr>
                            <td>Candidate Name</td>
                            <td>
                                <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                        </tr>
                    </table>

                </div>
                <div class="panel-footer">
                    
                        <asp:Button ID="Button1" runat="server" Text="Button"  CssClass="btn btn-success"/>
                        <asp:Button ID="Button2" runat="server" Text="Button" CssClass="btn btn-warning" />

                   

                </div>
            </div>
        </div>
    </div>


</asp:Content>
