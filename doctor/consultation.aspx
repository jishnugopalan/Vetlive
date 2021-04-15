<%@ Page Title="" Language="C#" MasterPageFile="~/doctor/MasterPage.master" AutoEventWireup="true" CodeFile="consultation.aspx.cs" Inherits="doctor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
        <asp:DataList ID="DataList1" runat="server" CellPadding="30" CellSpacing="30" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal">
            <ItemTemplate>
                Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("con_id") %>' CommandName="pres" Text="Send Prescription" Width="211px" />
<br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT consultation.user_email, registration.name, consultation.con_id FROM consultation INNER JOIN registration ON registration.email = consultation.user_email WHERE (consultation.staff_email = @staff_email) AND (consultation.con_status = @con_status)">
            <SelectParameters>
                <asp:SessionParameter Name="staff_email" SessionField="email" Type="String" />
                <asp:Parameter DefaultValue="0" Name="con_status" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

