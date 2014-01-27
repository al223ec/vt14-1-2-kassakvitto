<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Content/style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="mainPanel" runat="server">
            <p class="heading">1.2-Kassakvitto</p>
            <h1>Kassakvitto</h1>
            <p class="intro">
                Total köpesumma:
                <asp:TextBox ID="InputTextBox" runat="server">
                </asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Detta fält får inte vara tomt" ControlToValidate="InputTextBox" Display="Dynamic" CssClass="error"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Endast tal större än 0 är tillåtna" ControlToValidate="InputTextBox" Operator="GreaterThan" Type="Double" Display="Dynamic" ValueToCompare="0" CssClass="error"></asp:CompareValidator>
            </p>
            <p>
                <asp:Button ID="SubmitButton" runat="server" Text="Beräkna rabatt" OnClick="SubmitButton_Click" />
            </p>
            <asp:Panel ID="OutputPanel" runat="server" CssClass="receipt" Visible="False">
<%--                <asp:Label ID="OutputLabel" runat="server"></asp:Label>--%>
                <asp:Literal ID="OutputLiteral" runat="server"></asp:Literal>
            </asp:Panel>
            <p class="footer">Anton Ledström</p>
        </asp:Panel>
    </form>
</body>
</html>
