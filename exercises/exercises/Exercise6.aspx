<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Exercise6.aspx.cs" Inherits="exercises.Exercise6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">

            <asp:GridView ID="grd_myGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="personId" DataSourceID="dsrc_myDatabase" CssClass="table table-responsive table-condensed" BorderStyle="None">
                <Columns>
                    <asp:BoundField DataField="personId" HeaderText="personId" InsertVisible="False" ReadOnly="True" SortExpression="personId" />
                    <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                    <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="dsrc_myDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringToMyDatabase %>" SelectCommand="SELECT [personId], [lastname], [firstname], [address], [phone] FROM [people]"></asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
