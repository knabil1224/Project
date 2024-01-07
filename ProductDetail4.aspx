<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetail4.aspx.cs" Inherits="GROUPPROJECT.ProductDetail4" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <title>Product Detail - sneakerXbundle</title>
    
    <style>
       
        .product-detail {
            display: center;
            margin-top: 20px;
        }
        .product-image {
            flex: 1;
            text-align: center;
        }
        .product-image img {
            max-width: 1000px;
            height: 600px;
        }
        .product-info {
            flex: 2;
            padding-left: 20px;
        }
        .product-info h1 {
            margin-bottom: 10px;
        }
        .product-info p {
            margin-bottom: 5px;
        }
        .button {
            display: inline-block;
            padding: 10px 15px;
            margin: 5px;
            background-color: #ffc107;
            color: white;
            text-decoration: none;
            cursor: pointer;
        }
        .auto-style1 {
            height: 1199px;
        }
    </style>
</head>
<body>
    <header>
       
    </header>

    
    <main>
        <div class="product-detail">
             <form runat="server">
            <div class="product-image img">
                <img src="Air Jordan 1 High Woman.jpeg" alt="Product Image" class="auto-style1" />
            <main>
        <div class="product-detail">
           <div class="product-info">
                <h1>Air Jordan 1 High Women</h1>
                <p>RM 200.00</p>
                <p>Store: KEDAI MALIS</p>
                <p>Status: In stock</p>
                
                <asp:Button ID="btnSaveUserData" runat="server" Text="Buy Now" CssClass="button" OnClick="btnSaveUserData_Click" />
            </div>
    </div>
</main>

    
            </div>
        </form>
    </div>
</main>
</body>
</html>