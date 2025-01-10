<%--
  Created by IntelliJ IDEA.
  User: macintosh
  Date: 09/01/2025 A
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Book Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.1/normalize.css">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/css_front/shop.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/css_front/style.css' />">
</head>
<body>
<header class="header">
    <!-- Top Header Bar -->
    <div class="top-header">
        <a href="#" class="left">
            <img src="<c:url value='/assets/images/icons/bookstore.png' /> " alt="MOBS Logo" class="logo">
            <span class="project-name">MOBS</span>
            <span class="subname">Market Online Book Store</span>
        </a>
        <div class="center">
            <div class="search-container">
                <img src="<c:url value='/assets/images/icons/search.png' />" alt="Search Icon" class="search-icon">
                <input type="text" placeholder="Search for books..." class="search-bar">
                <button class="search-btn">Search</button>
            </div>
        </div>
        <div class="right">
            <select class="language-select">
                <option value="en">EN</option>
                <option value="vi">VI</option>
                <option value="fr">FR</option>
            </select>
            <button class="icon-btn cart-btn">
                <img src="<c:url value='/assets/images/icons/cart.png' />" alt="Cart">
            </button>
            <button class="icon-btn user-btn">
                <img src="<c:url value='/assets/images/icons/user.png' />" alt="User">
            </button>
        </div>
    </div>
    <!-- Bottom Header Bar -->
    <div class="bottom-header">
        <nav class="navigation">
            <a href="#" class="nav-link neon-text">Home</a>
            <a href="#" class="nav-link neon-text">Shop</a>
            <a href="#" class="nav-link neon-text">Blogs</a>
            <a href="#" class="nav-link neon-text">Pages</a>
            <a href="#" class="nav-link neon-text">Contact</a>
        </nav>
        <div class="current-time neon-text" id="current-time"></div>
    </div>
    <!-- Hamburger Menu Overlay -->
    <div id="hamburgerMenu" class="overlay">
        <button class="closebtn">
            <img src="<c:url value='/assets/images/icons/x_close.png' />" alt="Close Menu">
        </button>
        <div class="overlay-content">
            <a href="#">Home</a>
            <a href="#">Shop</a>
            <a href="#">Blogs</a>
            <a href="#">Pages</a>
            <a href="#">Contact</a>
        </div>
    </div>
    <!-- Hamburger Icon -->
    <button id="hamburgerIcon" class="hamburger">
        <img src="<c:url value='/assets/images/icons/menu.png' />" alt="Menu">
    </button>
</header>

<main class="shop-page">
    <section class="shop-header">
        <h1 class="shop-title neon-text">Our Book Collection</h1>
        <div class="search-filter">
            <div class="search-container">
                <img src="<c:url value='/assets/images/icons/search.png' />" alt="Search Icon" class="search-icon">
                <input type="text" placeholder="Search for books..." class="search-bar">
                <button class="search-btn">Search</button>
            </div>
            <div class="filters">
                <select class="filter-dropdown">
                    <option value="">Category</option>
                    <option value="programming">Programming</option>
                    <option value="algorithms">Algorithms</option>
                    <option value="databases">Databases</option>
                    <option value="security">Security</option>
                </select>
                <select class="filter-dropdown">
                    <option value="">Price Range</option>
                    <option value="low">Below $20</option>
                    <option value="medium">$20 - $50</option>
                    <option value="high">Above $50</option>
                </select>
                <select class="filter-dropdown">
                    <option value="">Rating</option>
                    <option value="5">5 Stars</option>
                    <option value="4">4 Stars & Up</option>
                    <option value="3">3 Stars & Up</option>
                </select>
            </div>
        </div>
    </section>

    <section class="book-list" id="book-list">
    </section>

    <section class="pagination">
        <button class="pagination-btn">Previous</button>
        <button class="pagination-btn">1</button>
        <button class="pagination-btn">2</button>
        <button class="pagination-btn">3</button>
        <button class="pagination-btn">Next</button>
    </section>
</main>

<!-- Cart Modal -->
<div id="cartModal" class="modal">
    <div class="modal-content">
        <img src="<c:url value='/assets/images/icons/x_close.png' />" alt="Close" class="close-btn" id="closeModal">
        <h2>Login Required</h2>
        <p>You need to log in or register to add items to your cart.</p>
        <a href="#" class="modal-btn">Login/Register</a>
    </div>
</div>

<!-- Footer -->
<footer class="footer">
    <div class="footer-top">
        <div class="footer-about">
            <img src="<c:url value='/assets/images/icons/bookstore.png' />" alt="MOBS Logo" class="footer-logo">
            <p><a href="#" class="neon-text" style="color: aqua; text-decoration: none;">MOBS</a> brings tech enthusiasts and developers together by offering curated books and resources in programming, algorithms, AI, and more.</p>
            <p><strong>+84 - 1800 - 4635</strong></p>
            <p>contact@mobs.com</p>
        </div>
        <div class="footer-links">
            <div class="footer-column">
                <h3>Category</h3>
                <ul>
                    <li><a href="#">Programming</a></li>
                    <li><a href="#">Algorithms</a></li>
                    <li><a href="#">AI & Machine Learning</a></li>
                    <li><a href="#">Databases</a></li>
                    <li><a href="#">Security</a></li>
                    <li><a href="#">Tech Research</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Useful Links</h3>
                <ul>
                    <li><a href="#">Secure Shopping</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Terms of Use</a></li>
                    <li><a href="#">Shipping Policy</a></li>
                    <li><a href="#">Returns Policy</a></li>
                    <li><a href="#">Payment Options</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Explore</h3>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Store Locator</a></li>
                    <li><a href="#">Tech Blogs</a></li>
                    <li><a href="#">FAQs</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Get In Touch</h3>
                <ul>
                    <li><a href="#">Careers</a></li>
                    <li><a href="#">Become a Partner</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2025 MOBS. All rights reserved.</p>
        <img src="<c:url value='/assets/images/payment_methods.png' />" alt="Payment Methods">
    </div>
</footer>

<script type="module">
    import { toggleMenu } from '"<c:url value='/assets/js/main.js' />"';
    document.getElementById('hamburgerIcon').addEventListener('click', toggleMenu);
    document.querySelector('.closebtn').addEventListener('click', toggleMenu);
</script>
<script type="module" src=""<c:url value='/assets/js/shop.js' />"</script>
<noscript>Your browser does not support JavaScript!</noscript>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
