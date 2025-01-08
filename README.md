# **MOBS** - Market Online Book Shop

## Overview

MOBS (Market Online Book Shop) is an e-commerce website specializing in selling programming and computer-related books. The platform is designed to provide a seamless shopping experience for developers, tech enthusiasts, and anyone interested in learning programming, algorithms, artificial intelligence, databases, and other tech-related topics.

---

## Features

### User Features
- **Browse Books:** Explore a wide variety of categories and books.
- **Search & Filter:** Easily search for books by title, category, price range, or rating.
- **Book Details:** View detailed information about each book, including author, price, and reviews.
- **User Account:** 
  - Register and log in to manage your account.
  - Update personal information, view past orders, and manage reviews.
- **Reviews & Ratings:** Users can provide ratings and reviews for purchased books.
- **Secure Shopping:** Safe and reliable order processing with multiple payment options.

### Admin Features (Future Enhancements)
- **Manage Inventory:** Add, update, or remove books from the inventory.
- **Order Management:** Track and manage customer orders.
- **Analytics Dashboard:** View sales statistics, customer insights, and book performance.

---

## Technologies Used

### Frontend
- **JSP (JavaServer Pages)**: Used to dynamically generate HTML content on the server-side.
- **HTML, CSS, JavaScript**: For structuring, styling, and adding interactivity to the pages.
- **Responsive Design**: Ensures compatibility across different devices and screen sizes.

### Backend
- **Apache Tomcat**: Java Servlet container to deploy and run JSP-based web applications.
- **MySQL**: Database management system for storing and retrieving data.
- **JDBC (Java Database Connectivity)**: To connect and interact with the MySQL database.

### Tools & Libraries
- **Eclipse IDE**: For Java and JSP development.
- **MySQL Workbench**: For designing and managing the database schema.
- **Bootstrap/TailwindCSS** *(Optional for Styling)*: Used to ensure modern and responsive styling during the prototyping phase.

---

## Database Schema

The database consists of the following tables:

- **Categories**: Stores information about book categories.
- **Books**: Details about books, including their author, price, stock, and category.
- **Users**: User account details such as username, email, and role (e.g., Admin, User).
- **Orders**: Order information, including user and order status.
- **OrderDetails**: Breakdown of items in each order.
- **Reviews**: User reviews and ratings for books.

For a detailed database schema, refer to [`/data/casestudy.sql`](./data/casestudy.sql).

---

## Installation & Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/mobs.git
   cd mobs
