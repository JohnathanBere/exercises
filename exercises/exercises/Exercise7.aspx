<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Exercise7.aspx.cs" Inherits="exercises.Exercise7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-lg-6 col-lg-offset-3">
            <asp:GridView ID="grd_myGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="personId" CssClass="table table-responsive table-bordered" DataSourceID="dsrc_peopleObject">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="personId" HeaderText="personId" InsertVisible="False" ReadOnly="True" SortExpression="personId" />
                    <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                    <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="dsrc_peopleObject" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="peopleTableAdapters.peopleTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_personId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="lastname" Type="String" />
                    <asp:Parameter Name="firstname" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="lastname" Type="String" />
                    <asp:Parameter Name="firstname" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="Original_personId" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
        </div>    
    </div>
</asp:Content>
