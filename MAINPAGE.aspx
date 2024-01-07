<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MAINPAGE.aspx.cs" Inherits="GROUPPROJECT.MAINPAGE" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <title>sneakerXbundle</title>
    <link rel="stylesheet" type="text/css" href="Style.css">

   
</head>
<body>
    <header>
        
        <nav>
            <div id="menu">
                <ul>
                    <li><a href="#mens-shoes">Men's</a></li>
                    <li><a href="#womens-shoes">Women's</a></li>
                    
                </ul>
            </div>
            
        </nav>
    </header>

    <p>
        <img alt="Banner" class="auto-style1" src="HOMEPAGE%20BANNER.png" /></p>

    <main>
        <section id="mens-shoes">
            <h2>Men's Shoes</h2>
            <div class="product">
                <a href="ProductDetail1.aspx?productId=1">
                    <img src="AIr Jordan 1 High.png" alt="Product 1">
                    <h3 style="text-decoration: none; color: black;">Air Jordan 1 High</h3>
                    <p>Price: $200.00</p>
                </a>
            </div>
            <div class="product">
                <a href="ProductDetail2.aspx?productId=2">
                    <img src="Air Jordan 1 Low.jpeg" alt="Product 2">
                    <h3 style="text-decoration: none; color: black;">Air Jordan 1 Low</h3>
                    <p>Price: $150.00</p>
                </a>
            </div>
            <div class="product">
                <a href="ProductDetail3.aspx?productId=3">
                    <img src="Air Jordan 1 Mid.png" alt="Product 3">
                    <h3 style="text-decoration: none; color: black;">Air Jordan 1 Mid</h3>
                    <p>Price: $175.00</p>
                </a>
            </div>
           
        </section>

        <section id="womens-shoes">
            <h2>Women's Shoes</h2>
            <div class="product">
                <a href="ProductDetail4.aspx?productId=3">
                <img src="Air Jordan 1 High Woman.jpeg" alt="Product 4">
                <h3 style="text-decoration: none; color: black;">Air Jordan 1 High</h3>
                <p>Price: $200.00</p>
            </div>
            <div class="product">
                <a href="ProductDetail5.aspx?productId=3">
                <img src="Air Jordan 1 Low Woman.jpeg" alt="Product 5">
                <h3 style="text-decoration: none; color: black;">Air Jordan 1 Low</h3>
                <p>Price: $150.00</p>
            </div>

            <div class="product">
                <a href="ProductDetail6.aspx?productId=6">
                <img src="Air Jordan 1 Mid Woman.jpeg" alt="Product 6">
                <h3 style="text-decoration: none; color: black;">Air Jordan 1 Mid</h3>
                <p>Price: $175.00</p>
            </div>
           
        </section>

    </main>

    <footer>
       
        <p>© 2024 sneakersXbundle</p>
    </footer>
</body>
</html>
