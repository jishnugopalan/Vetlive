<%@ Page Title="" Language="C#" MasterPageFile="~/doctor/MasterPage.master" AutoEventWireup="true" CodeFile="prescription.aspx.cs" Inherits="doctor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="con_id" DataSourceID="SqlDataSource1" Height="203px" Width="329px">
            <ItemTemplate>
                Name:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT consultation.user_email, registration.name, consultation.con_id FROM consultation INNER JOIN registration ON registration.email = consultation.user_email WHERE (consultation.con_id = @con_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="con_id" QueryStringField="con_id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    &nbsp;<asp:Label ID="Label1" runat="server" Text="Label">Type prescription:</asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="77px" Width="274px"></asp:TextBox>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="Send Prescription" Width="156px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

