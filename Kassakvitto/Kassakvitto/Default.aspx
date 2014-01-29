<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Content/style.css" rel="stylesheet" />
    <title>Anton Ledström, 1.2-Kassakvitto</title>
</head>
<body>
    <form id="Form" runat="server" defaultfocus="InputTextBox">
        <%-- Visar inte felmeddelande när man använder enter --%>
        <asp:Panel ID="mainPanel" runat="server" defaultbutton="SubmitButton">
            <p class="heading">1.2-Kassakvitto</p>
            <h1>Kassakvitto</h1>
            <%-- Input --%>
            <div>
                <p class="intro">Total köpesumma:</p>
                <asp:TextBox ID="InputTextBox" runat="server">
                </asp:TextBox>
                <%-- Validering --%>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="error"></asp:ValidationSummary>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Detta fält får inte vara tomt" ControlToValidate="InputTextBox" Display="None"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Endast tal större än 0 är tillåtna" ControlToValidate="InputTextBox" Operator="GreaterThan" Type="Double" Display="None" ValueToCompare="0"></asp:CompareValidator>
            </div>
            <%-- Submit --%>
            <div>
                <asp:Button ID="SubmitButton" runat="server" Text="Beräkna rabatt" OnClick="SubmitButton_Click" />
            </div>
            <%-- Output --%>
            <asp:Panel ID="OutputPanel" runat="server" CssClass="receipt" Visible="False">
                <p class="heading">Kassakvitto </p>
                <h4>Kvitto</h4>
                <div class="left">
                    Totalt:
                    <br />
                    Rabattsats:
                    <br />
                    Rabatt:
                    <br />
                    Att betala:
                    <br />
                </div>
                <div class="right">
                    <asp:Literal ID="OutputLiteral" runat="server"></asp:Literal>
                </div>
                <p class="footer">2014-01-29</p>
            </asp:Panel>

            <p class="footer">Anton Ledström</p>
        </asp:Panel>
    </form>
</body>
</html>
