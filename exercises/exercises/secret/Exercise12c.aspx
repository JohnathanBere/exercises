<%@ Page Title="" Language="C#" MasterPageFile="~/secret/MasterPagePrivate.master" AutoEventWireup="true" CodeBehind="Exercise12c.aspx.cs" Inherits="exercises.secret.Exercise12c" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-6 col-lg-3">
            <asp:ListView ID="lst_userList" runat="server" DataSourceID="dsrc_userObject">
                <ItemTemplate></ItemTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="dsrc_userObject" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="userTableAdapters.usersTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_username" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="Original_username" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
    
</asp:Content>
