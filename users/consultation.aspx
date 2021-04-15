<%@ Page Title="" Language="C#" MasterPageFile="~/users/MasterPage.master" AutoEventWireup="true" CodeFile="consultation.aspx.cs" Inherits="users_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" CellPadding="30" CellSpacing="30" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" Width="521px">
            <ItemTemplate>
                Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                Prescription:
                <asp:Label ID="prescriptionLabel" runat="server" Text='<%# Eval("prescription") %>' />
                <br />
                Date and Time:
                <asp:Label ID="con_timeLabel" runat="server" Text='<%# Eval("con_time") %>' />
                <br />
                <br />
<br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT consultation.prescription, consultation.con_time, consultation.con_status, registration.name FROM consultation INNER JOIN registration ON registration.email = consultation.staff_email WHERE (consultation.user_email = @user_email)">
            <SelectParameters>
                <asp:SessionParameter Name="user_email" SessionField="email" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

