<%@ Page Title="" Language="C#" MasterPageFile="~/users/MasterPage.master" AutoEventWireup="true" CodeFile="review.aspx.cs" Inherits="users_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" RepeatColumns="4" Width="640px" Height="233px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" GridLines="Both" RepeatLayout="Flow" ShowFooter="False">
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <HeaderTemplate>
            Hospital Reviews
        </HeaderTemplate>
        <ItemStyle BackColor="White" ForeColor="#330099" />
        <ItemTemplate>
            Name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            &nbsp;<asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
            <br />
&nbsp;<asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
<br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT review.description, registration.name, review.datetime FROM review INNER JOIN registration ON review.email = registration.email WHERE (review.hospital_id = @hospital_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="hospital_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    &nbsp;<asp:Label ID="Label1" runat="server" Text="Label">Type Review:</asp:Label><asp:TextBox ID="TextBox1" runat="server" Height="113px" Width="383px"></asp:TextBox>
    <br />
    <br />
    &nbsp;
    <asp:Button ID="Button1" runat="server" Text="Submit Review" Height="36px" OnClick="Button1_Click" Width="140px" />

</asp:Content>

