<%@ Page Title="" Language="C#" MasterPageFile="~/doctor/MasterPage.master" AutoEventWireup="true" CodeFile="chat.aspx.cs" Inherits="doctor_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:DataList ID="DataList2" runat="server" CellPadding="20" CellSpacing="40" DataKeyField="pet_id" DataSourceID="SqlDataSource2" ForeColor="#333333" Height="448px" Width="325px" RepeatColumns="3" RepeatDirection="Horizontal">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <ItemTemplate>
            Pet Details<br />
            <asp:Image ID="Image1" runat="server" Height="223px" ImageUrl='<%# "../users/uploads/"+Eval("pet_photo") %>' Width="261px" />
            <br />
            <br />
            Pet age:
            <asp:Label ID="pet_ageLabel" runat="server" Text='<%# Eval("pet_age") %>' />
            <br />
            Pet category:
            <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT * FROM [pets] WHERE ([email] = @email)">
        <SelectParameters>
            <asp:QueryStringParameter Name="email" QueryStringField="reciever_id" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="257px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <ItemTemplate>
            Message:
            <asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message") %>' />
            <br />
            time
            <asp:Label ID="timeanddateLabel" runat="server" Text='<%# Eval("timeanddate") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT message, timeanddate FROM chats WHERE (sender_id = @sender_id) AND (reciever_id = @reciever_id) OR (sender_id = @sender_id2) AND (reciever_id = @reciever_id2)">
        <SelectParameters>
            <asp:SessionParameter Name="sender_id" SessionField="email" Type="String" />
            <asp:QueryStringParameter Name="reciever_id" QueryStringField="reciever_id" Type="String" />
            <asp:QueryStringParameter Name="sender_id2" QueryStringField="reciever_id" Type="String" />
            <asp:SessionParameter Name="reciever_id2" SessionField="email" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label">Type Message:</asp:Label>
    <br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="84px"  Width="341px"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" Width="184px" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Content>

