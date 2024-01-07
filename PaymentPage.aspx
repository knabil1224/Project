<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="GROUPPROJECT.PaymentPage" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <title>Payment Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-control {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 5px;
        }
        .form-submit {
            background-color: #4CAF50;
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        .card-icons {
            margin: 10px 0;
            text-align: center;
        }
        .card-icons img {
            width: 50px;
            margin-right: 10px;
        }
        .error-message {
            color: red;
            font-size: 14px;
            display: none; 
        }
        .auto-style1 {
            width: 262px;
            height: 192px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">

            <div class="form-group">
                <label>First name</label>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="First name is required." CssClass="error-message" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Last name</label>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last name is required." CssClass="error-message" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Card number</label>
                <asp:TextBox ID="txtCardNumber" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCardNumber" runat="server" ControlToValidate="txtCardNumber" ErrorMessage="Card number is required." CssClass="error-message" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revCardNumber" runat="server" ControlToValidate="txtCardNumber" ValidationExpression="\d{4}-?\d{4}-?\d{4}-?\d{4}" ErrorMessage="Invalid card format." CssClass="error-message" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <label>CW</label>
                <asp:TextBox ID="txtCW" runat="server" CssClass="form-control" Width="80px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCW" runat="server" ControlToValidate="txtCW" ErrorMessage="CW is required." CssClass="error-message" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revCW" runat="server" ControlToValidate="txtCW" ValidationExpression="\d{3}" ErrorMessage="Invalid CW." CssClass="error-message" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>

            <div class="form-group">
                <label>Expiry Date</label>
                <asp:TextBox ID="txtExpiry" runat="server" CssClass="form-control" Width="100px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvExpiry" runat="server" ControlToValidate="txtExpiry" ErrorMessage="Expiry date is required." CssClass="error-message" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revExpiry" runat="server" ControlToValidate="txtExpiry" ValidationExpression="(0[1-9]|1[0-2])\/\d{2}" ErrorMessage="Invalid expiry date." CssClass="error-message" Display="Dynamic"></asp:RegularExpressionValidator>
                <img alt="visa" class="auto-style1" src="Visa.png" /></div>

            <asp:Button ID="btnSaveUserData" runat="server" Text="Submit Payment" CssClass="form-submit" OnClick="btnSaveUserData_Click"></asp:Button>
        </form>
    </div>
</body>
</html>