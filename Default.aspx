<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Text2 {
            width: 400px;
        }
        #Text3 {
            width: 400px;
        }
        #Text1 {
            width: 400px;
        }
        #Button1 {
            width: 253px;
        }
        .auto-style1 {
            width: 479px;
        }
        .auto-style2 {
            width: 354px;
        }
        #Reset1 {
            width: 275px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Label">Name</asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="name" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" Display="Dynamic" ErrorMessage="Name is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="name" Display="Dynamic" ErrorMessage="Enter correct name" ForeColor="Red" ValidationExpression="[a-zA-Z.\s]+$"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Label">Email</asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="email" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Please enter correct email id" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Email is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Label">Phone</asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="phone" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="phone" Display="Dynamic" ErrorMessage="phone numer is required" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="phone" Display="Dynamic" ErrorMessage="Please enter correct phone number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^([0-9\(\)\/\+ \-]*)$"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" />
        <asp:Button ID="Button2" runat="server" Text="Reset" Width="271px" />
    </form>
</body>
</html>
