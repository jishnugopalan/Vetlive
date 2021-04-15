<%@ Page Title="" Language="C#" MasterPageFile="~/doctor/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="doctor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="210px">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderTemplate>
        My Hospital
    </HeaderTemplate>
    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <ItemTemplate>
        Hospital name:
        <asp:Label ID="hospital_nameLabel" runat="server" Text='<%# Eval("hospital_name") %>' />
        <br />
        Phone:
        <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
        <br />
        Place:
        <asp:Label ID="placeLabel" runat="server" Text='<%# Eval("place") %>' />
        <br />
        City:
        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
        <br />
        District:
        <asp:Label ID="districtLabel" runat="server" Text='<%# Eval("district") %>' />
        <br />
        pincode:
        <asp:Label ID="pincodeLabel" runat="server" Text='<%# Eval("pincode") %>' />
        <br />
        <br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT hospitals.hospital_name, hospitals.phone, hospitals.email AS Expr1, hospitals.place, hospitals.city, hospitals.district, hospitals.state, hospitals.country, hospitals.pincode FROM staff INNER JOIN registration ON staff.email = registration.email INNER JOIN hospitals ON staff.hospital_id = hospitals.hospital_id WHERE (staff.email = @email)">
    <SelectParameters>
        <asp:SessionParameter Name="email" SessionField="email" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
<asp:DataList ID="DataList2" runat="server" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" Height="337px" Width="222px">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderTemplate>
        Hospital Reviews
    </HeaderTemplate>
    <ItemStyle BackColor="#EFF3FB" />
    <ItemTemplate>
        Name:
        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
        <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
        <br />
        &nbsp;<asp:Label ID="datetimeLabel" runat="server" Text='<%# Eval("datetime") %>' />
        <br />
        <br />
        <br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT review.description, review.datetime, registration.name FROM staff INNER JOIN review ON staff.hospital_id = review.hospital_id INNER JOIN registration ON review.email = registration.email WHERE (staff.email = @email)">
    <SelectParameters>
        <asp:SessionParameter Name="email" SessionField="email" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>

</asp:Content>

