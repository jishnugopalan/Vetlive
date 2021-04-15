<%@ Page Title="" Language="C#" MasterPageFile="~/li/MasterPage.master" AutoEventWireup="true" CodeFile="chatlist.aspx.cs" Inherits="li_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BorderColor="Green" BorderWidth="5px" CellPadding="10" CellSpacing="10" ForeColor="#333333" GridLines="Both" OnItemCommand="DataList1_ItemCommand" RepeatColumns="1" Width="262px">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <ItemTemplate>
            Name:
            <asp:Label ID="reciever_idLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("sender_id") %>' CommandName="replay" Text="Send Replay" />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vetliveConnectionString %>" SelectCommand="SELECT DISTINCT chats.reciever_id, registration.name, chats.sender_id FROM chats INNER JOIN registration ON chats.reciever_id = @reciever_id AND chats.sender_id = registration.email">
        <SelectParameters>
            <asp:SessionParameter Name="reciever_id" SessionField="email" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>

