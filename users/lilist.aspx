<%@ Page Title="" Language="C#" MasterPageFile="~/users/MasterPage.master" AutoEventWireup="true" CodeFile="lilist.aspx.cs" Inherits="users_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CellPadding="4" DataKeyField="email" RepeatColumns="3" RepeatDirection="Horizontal" ForeColor="#333333" OnItemCommand="DataList1_ItemCommand" Height="298px" Width="547px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            LI List
        </HeaderTemplate>
        <ItemStyle BackColor="#E3EAEB" />
        <ItemTemplate>
            Name:
            <asp:Label ID="aLabel" runat="server" Text='<%# Eval("a") %>' />
            <br />
            Hospital name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("hospital_name") %>'></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("email") %>' CommandName="chat" Text="Chat now" />
            <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("email") %>' CommandName="consult" Text="Request Consultation" />


            

<br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT registration.name AS a, registration.email, hospitals.hospital_name FROM registration INNER JOIN login ON registration.email = login.email AND login.usertype = 'li' INNER JOIN staff ON registration.email = staff.email INNER JOIN hospitals ON staff.hospital_id = hospitals.hospital_id"></asp:SqlDataSource>

</asp:Content>

