<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/style.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p class="heading">1.2-Kassakvitto</p>
            <h1>Kassakvitto</h1>
            <p class="intro">
                Total köpesumma:
            <asp:TextBox ID="InputTextBox" runat="server"></asp:TextBox>
            </p>
            <p>
                <asp:Button ID="SubmitButton" runat="server" Text="Beräkna rabatt" OnClick="SubmitButton_Click" />
            </p>
            <div class="receipt">
                <h4>DeVe</h4>
                <asp:Label ID="OutputLabel" runat="server" Text=""></asp:Label>
            </div>
            <p class="footer">Anton Ledström</p>
        </div>
    </form>
</body>
</html>
