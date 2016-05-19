<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Exercise13.aspx.cs" Inherits="exercises.Exercise13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-2">
            <asp:Label ID="picLabel" runat="server" Text="Picture"></asp:Label>
            <asp:FileUpload ID="picUpl" runat="server" />
            <asp:Label ID="tleLabel" runat="server" Text="Title"></asp:Label>
            <asp:TextBox ID="titleBox" runat="server"></asp:TextBox>
            <asp:Button ID="uplBtn" runat="server" Text="Upload" OnClick="uplBtn_Click" />
            <asp:Label ID="msgLabel" runat="server" Text="..."></asp:Label>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="sql_pictures">
                <ItemTemplate>
                    <asp:Image ID="image1" runat="server" ImageUrl='<%# Eval("picture") %>'/>
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="sql_pictures" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringToMyDatabase %>" SelectCommand="SELECT [picture], [title], [id] FROM [pictures]"></asp:SqlDataSource>
        </div>
    </div>
    </div>
</asp:Content>
