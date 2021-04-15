<%@ Page Title="" Language="C#" MasterPageFile="~/users/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="users_Default" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h3 class="title">Hospitals Sloat <span>Booking</span></h3>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <p>
        &nbsp; &nbsp;</p>
    <p>
        <asp:DataList ID="DataList1" runat="server" CellPadding="30" DataKeyField="hospital_id" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Italic="False" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" Font-Underline="False" RepeatColumns="3" RepeatDirection="Horizontal" BackColor="White" BorderColor="Red" BorderStyle="None" BorderWidth="20px" OnItemCommand="DataList1_ItemCommand" CellSpacing="30" ForeColor="Red" Height="16px" ShowFooter="False" ShowHeader="False" Width="725px">
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <ItemStyle ForeColor="#000066" />
            <ItemTemplate>
                Hospital Name:
                <asp:Label ID="hospital_nameLabel" runat="server" Text='<%# Eval("hospital_name") %>' />
                <br />
                District:
                <asp:Label ID="districtLabel" runat="server" Text='<%# Eval("district") %>' />
                <br />
<br />
                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("hospital_id") %>' Text="Book a sloat"  CommandName="book"  />
                <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("hospital_id") %>' Text="View Reviews"  CommandName="rate"  />

                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT [hospital_name], [place], [city], [district], [hospital_id] FROM [hospitals]"></asp:SqlDataSource>
    </p>
</asp:Content>

