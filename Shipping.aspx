<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shipping.aspx.cs" Inherits="GROUPPROJECT.Shipping" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shipping</title>
    <style type="text/css">
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 300px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 3px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 3px;
            background-color: #5cb85c;
            color: white;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #4cae4c;
        }

        .error {
            color: red;
            font-size: 0.8em;
        }
        .auto-style1 {
            background-color: #fff;
            padding: 40px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 834px;
            height: 878px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div class="auto-style1">
            &nbsp;<img src="login_banner.jpeg" alt="Login Banner" style="width:100%; border-radius: 5px 5px 0 0;" />
            <div class="form-group">
                <label for="TextBox1">Name:</label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Name is required" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="ContactBox">Contact (Phone Number):</label>
                <asp:TextBox ID="ContactBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="ContactRequired" runat="server" ControlToValidate="ContactBox"
                    ErrorMessage="Contact (Phone Number) is required" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="AddressBox">Address:</label>
                <asp:TextBox ID="AddressBox" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="AddressRequired" runat="server" ControlToValidate="AddressBox"
                    ErrorMessage="Address is required" CssClass="error" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <asp:Button ID="ViewOrderButton" runat="server" Text="View Order Details" OnClick="ViewOrderButton_Click" UseSubmitBehavior="true" />
            </div>
        </div>
    </form>
</body>
</html>