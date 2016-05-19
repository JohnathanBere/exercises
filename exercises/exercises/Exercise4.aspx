<%@ Page Title="Fourth Exercise" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Exercise4.aspx.cs" Inherits="exercises.Exercise4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
            <div class="col-lg-6 col-lg-offset-3">
                <div class="form-group">
                    <asp:Label ID="fName" runat="server" Text="First Name"></asp:Label><asp:TextBox ID="fNBox" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="fNameRequiredFieldValidator" runat="server" Text="Required!" ErrorMessage="First name is required" ControlToValidate="fNBox"></asp:RequiredFieldValidator>
                </div> <!-- /firstname -->

                <div class="form-group">
                    <asp:Label ID="sName" runat="server" Text="Surname"></asp:Label><asp:TextBox ID="sNBox" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="sNameRequiredFieldValidator" runat="server" Text="Required!"  ErrorMessage="Surname is required" ControlToValidate="sNBox"></asp:RequiredFieldValidator>
                </div> <!-- /surname -->

                <div class="form-group">
                    <asp:Label ID="address" runat="server" Text="Address"></asp:Label><asp:TextBox ID="addBox" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="addRequiredFieldValidator" runat="server" Text="Required!"  ErrorMessage="Address is required" ControlToValidate="addBox"></asp:RequiredFieldValidator>
                </div> <!-- /address -->

                <div class="form-group">
                    <asp:Label ID="postcode" runat="server" Text="Post Code"></asp:Label><asp:TextBox ID="pcBox" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="pcRequiredFieldValidator" runat="server" Text="Required!"  ErrorMessage="Post code is required" ControlToValidate="pcBox"></asp:RequiredFieldValidator>
                </div> <!-- /postcode -->

                <div class="form-group">
                    <asp:Label ID="email" runat="server" Text="Email"></asp:Label><asp:TextBox ID="emBox" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="emRequiredFieldValidator" runat="server" Text="Required!" ErrorMessage="Email is required" ControlToValidate="emBox"></asp:RequiredFieldValidator>
                </div> <!-- /email -->

                <div class="form-group">
                    <asp:Label ID="phone" runat="server" Text="Phone"></asp:Label><asp:TextBox ID="phBox" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="phRequiredFieldValidator" runat="server" Text="Required!"  ErrorMessage="Phone number is required" ControlToValidate="phBox"></asp:RequiredFieldValidator>
                </div> <!-- /phone -->

                <div class="form-group">
                    <asp:Label ID="age" runat="server" Text="Age"></asp:Label><asp:TextBox ID="ageBox" CssClass="form-control" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="ageRequiredFieldValidator" runat="server" Text="Required!" ErrorMessage="An age is required" ControlToValidate="ageBox"></asp:RequiredFieldValidator><asp:RangeValidator ID="ageRangeValidator" runat="server" ErrorMessage="Must be between 18 and 70" Text="Out of range" ControlToValidate="ageBox" MaximumValue="70" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                </div> <!-- /Age -->
                
                <asp:Button ID="formSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="formSubmit_Click" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div> <!-- /.col -->
        </div> <!-- /.row -->
</asp:Content>
