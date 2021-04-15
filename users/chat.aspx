<%@ Page Title="" Language="C#" MasterPageFile="~/users/MasterPage.master" AutoEventWireup="true" CodeFile="chat.aspx.cs" Inherits="users_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DataList ID="DataList1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" Width="257px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <ItemTemplate>
            Message:
            <asp:Label ID="messageLabel" runat="server" Text='<%# Eval("message") %>' />
            <br />
            &nbsp;<asp:Label ID="timeanddateLabel" runat="server" Text='<%# Eval("timeanddate") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT chats.message, chats.timeanddate FROM chats INNER JOIN registration ON registration.email = chats.reciever_id WHERE (chats.sender_id = @sender_id) AND (chats.reciever_id = @reciever_id) OR (chats.sender_id = @sender_id2) AND (chats.reciever_id = @reciever_id2)">
        <SelectParameters>
            <asp:SessionParameter Name="sender_id" SessionField="email" Type="String" />
            <asp:QueryStringParameter Name="reciever_id" QueryStringField="reciever_id" Type="String" />
            <asp:QueryStringParameter Name="sender_id2" QueryStringField="reciever_id" Type="String" />
            <asp:SessionParameter Name="reciever_id2" SessionField="email" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label">Type Message:</asp:Label>
    <br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="84px"  Width="341px"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" Width="184px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

</asp:Content>

