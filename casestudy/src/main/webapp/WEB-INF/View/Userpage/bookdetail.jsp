<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/1/2025
  Time: 11:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="MOBS - Market Online Book Shop">
  <title>MOBS</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/css_front/shop.css' />">
  <link rel="stylesheet" type="text/css" href="<c:url value='/assets/css/css_front/style.css' />">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.1/normalize.css">
</head>
<body>
<header class="header">
  <!-- Top Header Bar -->
  <div class="top-header">
    <a href="./index.html" class="left">
      <img src="./assets/images/icons/bookstore.png" alt="MOBS Logo" class="logo">
      <span class="project-name">MOBS</span>
      <span class="subname">Market Online Book Store</span>
    </a>
    <div class="center">
      <div class="search-container">
        <img src="./assets/images/icons/search.png" alt="Search Icon" class="search-icon">
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
        <img src="./assets/images/icons/cart.png" alt="Cart">
      </button>
      <button class="icon-btn user-btn" >
        <img src="./assets/images/icons/user.png" alt="User">
      </button>
    </div>
  </div>
  <!-- Bottom Header Bar -->
  <div class="bottom-header">
    <nav class="navigation">
      <a href="./index.html" class="nav-link neon-text">Home</a>
      <a href="./shop.html" class="nav-link neon-text">Shop</a>
      <a href="#" class="nav-link neon-text">Blogs</a>
      <a href="#" class="nav-link neon-text">Pages</a>
      <a href="#" class="nav-link neon-text">Contact</a>
    </nav>
    <div class="current-time neon-text" id="current-time"></div>
  </div>
  <!-- Hamburger Menu Overlay -->
  <div id="hamburgerMenu" class="overlay">
    <button class="closebtn">
      <img src="./assets/images/icons/x_close.png" alt="Close Menu">
    </button>
    <div class="overlay-content">
      <a href="./index.html">Home</a>
      <a href="./shop.html">Shop</a>
      <a href="#">Blogs</a>
      <a href="#">Pages</a>
      <a href="#">Contact</a>
    </div>
  </div>
  <!-- Hamburger Icon -->
  <button id="hamburgerIcon" class="hamburger">
    <img src="./assets/images/icons/menu.png" alt="Menu">
  </button>
</header>

<div class="grid-container">
  <main>
    <img style="width: 290px; height: 300px;" src="https://m.media-amazon.com/images/I/61Pgdn8Ys-L.jpg" alt="bookphoto">
    <div>
      <h3>Chi tiết sản phẩm</h3>
      <h5>${book.book_Name}</h5>
      <h5>${book.author}</h5>
      <h5>${book.publisher}</h5>
      <h5>${book.book_ISBN}</h5>
      <h5>${book.price}</h5>
      <h5>${book.stock}</h5>
      <h5>${book.category_ID}</h5>
    </div>
  </main>
</div>
<c:if test="${message != null}">
  <div class="alert alert-success" role="alert" id="message">
      ${message}
  </div>
</c:if>
<!-- Cart Modal -->
<div id="cartModal" class="modal">
  <div class="modal-content">
    <img src="./assets/images/icons/x_close.png" alt="Close" class="close-btn" id="closeModal">
    <h2>Login Required</h2>
    <p>You need to log in or register to add items to your cart.</p>
    <a href="./login.html" class="modal-btn">Login/Register</a>
  </div>
</div>

<!-- Footer -->
<footer class="footer">
  <div class="footer-top">
    <div class="footer-about">
      <%--            <img src="./assets/images/icons/bookstore.png" alt="MOBS Logo" class="footer-logo">--%>
      <img src="<c:url value='/assets/images/icons/bookstore.png' />" alt="MOBS Logo" class="footer-logo">
      <p><a href="./index.html" class="neon-text" style="color: aqua; text-decoration: none;">MOBS</a> brings tech
        enthusiasts and developers together by offering curated books and resources in programming, algorithms,
        AI, and more.</p>
      <p><strong>+84 - 1800 - 4635</strong></p>
      <p>contact@mobs.com</p>
    </div>
    <div class="footer-links">
      <div class="footer-column">
        <h3>Category</h3>
        <ul>
          <li><a href="./shop.html">Programming</a></li>
          <li><a href="./shop.html">Algorithms</a></li>
          <li><a href="./shop.html">AI & Machine Learning</a></li>
          <li><a href="./shop.html">Databases</a></li>
          <li><a href="./shop.html">Security</a></li>
          <li><a href="./shop.html">Tech Research</a></li>
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
  // Function to update the current time
  export function updateTime() {
    const now = new Date();
    const formattedTime = now.toLocaleString('en-US', {
      year: 'numeric',
      month: 'numeric',
      day: 'numeric',
      hour: 'numeric',
      minute: 'numeric',
      second: 'numeric',
      hour12: true,
    });
    document.getElementById('current-time').textContent = formattedTime;
  };

  // Function to toggle the hamburger menu
  export function toggleMenu() {
    const menu = document.getElementById("hamburgerMenu");
    const hamburger = document.getElementById("hamburgerIcon");
    const closebtn = document.querySelector(".closebtn");

    if (menu.style.height === "100%") {
      // Close menu
      menu.style.height = "0%";
      closebtn.classList.add("animating");
      hamburger.classList.remove("active");
      hamburger.classList.add("animating");

      setTimeout(() => {
        hamburger.style.display = "block";
        closebtn.style.display = "none";
        hamburger.classList.remove("animating");
        closebtn.classList.remove("animating");
      }, 300);
    } else {
      // Open menu
      menu.style.height = "100%";
      hamburger.classList.add("animating");
      closebtn.classList.remove("active");
      closebtn.classList.add("animating");

      setTimeout(() => {
        hamburger.style.display = "none";
        closebtn.style.display = "block";
        hamburger.classList.remove("animating");
        closebtn.classList.remove("animating");
      }, 300);
    }
  };

  // Function to handle screen resize events
  export function handleResize() {
    const menu = document.getElementById("hamburgerMenu");
    const icon = document.getElementById("hamburgerIcon");

    // Reset menu and icon when screen width exceeds 420px
    if (window.innerWidth > 420) {
      menu.style.height = "0%";
      icon.style.display = "none";
    } else {
      icon.style.display = "block";
    }
  };

  // Check if user is logged in
  export function handleUserIconClick() {
    // Simulating login check (Replace with real authentication logic)
    const isLoggedIn = localStorage.getItem('loggedIn') === 'true';

    if (isLoggedIn) {
      // Redirect to profile page
      window.location.href = './profile.html';
    } else {
      // Redirect to login/register page
      window.location.href = '/user?action=login';
    }
  };

  // Initialize the script
  function init() {
    // Update the current time every second
    setInterval(updateTime, 1000);
    updateTime();

    // Add event listener for screen resize
    window.addEventListener("resize", handleResize);

    // Check initial screen size
    handleResize();

    // Handle cart button click
    document.querySelector('.cart-btn').addEventListener('click', () => {
      const modal = document.getElementById('cartModal');
      modal.style.display = 'block';
    });

    // Handle close modal
    document.getElementById('closeModal').addEventListener('click', () => {
      const modal = document.getElementById('cartModal');
      modal.style.display = 'none';
    });

    // Close modal when clicking outside of it
    window.addEventListener('click', (event) => {
      const modal = document.getElementById('cartModal');
      if (event.target === modal) {
        modal.style.display = 'none';
      }
    });

    // Add event listener for user icon
    document.querySelector('.user-btn').addEventListener('click', handleUserIconClick);
  };

  // Run initialization
  init();
  document.getElementById('hamburgerIcon').addEventListener('click', toggleMenu);
  document.querySelector('.closebtn').addEventListener('click', toggleMenu);
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>