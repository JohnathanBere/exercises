<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Exercise8.aspx.cs" Inherits="exercises.Exercise8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-6 col-lg-3">

            <asp:GridView ID="grd_myGrid" runat="server" AutoGenerateColumns="False" DataSourceID="dsrc_phone_procedure">
                <Columns>
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="dsrc_phone_procedure" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringToMyDatabase %>" SelectCommand="selectPhone" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="searchField" Name="surname" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

            <div class="form-group">
                <asp:TextBox ID="searchField" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:Button ID="searchBtn" runat="server" Text="Search" CssClass="btn btn-success"/>
            </div>

        </div>
    </div>
</asp:Content>
