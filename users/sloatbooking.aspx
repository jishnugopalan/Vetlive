<%@ Page Title="" Language="C#" MasterPageFile="~/users/MasterPage.master" AutoEventWireup="true" CodeFile="sloatbooking.aspx.cs" Inherits="users_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="hospital_id" DataSourceID="SqlDataSource1" Height="50px"  Width="499px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="hospital_id" HeaderText="hospital_id" InsertVisible="False" ReadOnly="True" SortExpression="hospital_id" Visible="False" />
                <asp:BoundField DataField="hospital_name" HeaderText="Hospital name" SortExpression="hospital_name" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="place" HeaderText="Place" SortExpression="place" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="district" HeaderText="District" SortExpression="district" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <FooterTemplate>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </FooterTemplate>
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT * FROM [hospitals] WHERE ([hospital_id] = @hospital_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="hospital_id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
        <asp:DataList ID="DataList1" runat="server" BorderColor="Black" BorderWidth="5px" CellPadding="30" CellSpacing="30" DataSourceID="SqlDataSource2" GridLines="Both" Height="189px"  RepeatColumns="3" RepeatDirection="Horizontal" Width="501px">
            <HeaderTemplate>
                Hospital Staffs
            </HeaderTemplate>
            <ItemTemplate>
                <br />
                Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("usertype") %>'></asp:Label>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT registration.name, login.usertype, staff.email FROM staff INNER JOIN registration ON staff.email = registration.email INNER JOIN login ON staff.email = login.email WHERE (staff.hospital_id = @hospital_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="hospital_id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="320px" TextMode="Date"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Height="33px" Text="Book Now" Width="277px" BackColor="#009933" ForeColor="White" OnClick="Button1_Click1" />
    <br />
    <p>
        &nbsp;</p>
</asp:Content>

