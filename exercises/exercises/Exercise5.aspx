<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Exercise5.aspx.cs" Inherits="exercises.Exercise5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">

            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Enter a name here:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Session and Cookie Test" CssClass="btn btn-primary" OnClick="Button1_Click" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter something fam." ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
            </div>


        </div>
    </div>
</asp:Content>
