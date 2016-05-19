<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Login_Form.aspx.cs" Inherits="exercises.Login_Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <asp:Label ID="Label1" runat="server" Font-Size="Large"></asp:Label>
            <div class="form-group">
                <asp:Label ID="uLabel" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="uBox" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uBox" Text="Required" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <asp:Label ID="pLabel" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="pBox" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pBox" Text="Required" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
            </div>

            <asp:Button ID="submitBtn" runat="server" CssClass="btn btn-success" Text="Login" OnClick="submitBtn_Click" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </div>
</asp:Content>
