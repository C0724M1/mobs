drop database new_case;
create database new_case;
use new_case;

-- Table: Categories
-- Purpose: Stores information about book categories (e.g., Programming, Security, etc.)
create table categories(
	category_ID int primary key auto_increment,
	category_Name varchar(50) not null,
	category_Description varchar(150)
);

-- Table: Books
-- Purpose: Stores detailed information about the books in the inventory.
create table books(
	book_ID int primary key auto_increment,
	book_Name varchar(150) not null,
	author varchar(50) not null,
	publisher varchar(150),
	book_ISBN varchar(20) unique, -- Unique identifier for each book (e.g., ISBN)
	price decimal(10,2) not null, -- Price of the book
	stock int not null, -- Number of books available in stock
	category_ID int, -- Foreign key to the 'categories' table
	foreign key (category_ID) references categories(category_ID)
);

-- Table: Users
-- Purpose: Stores user information for authentication and authorization.
create table users(
	user_ID int primary key auto_increment,
	user_name varchar(50) not null,
	user_pass varchar(255) not null,
	email varchar(100) not null unique,
	user_role varchar(10) not null default 'Customer',
	check (user_role in ('Admin', 'User', 'Customer')),
	user_status varchar(10) not null default 'Active',
	check (user_status in ('Active', 'Inactive', 'Banned')),
	phone varchar(10) not null
);

-- Table: Orders
-- Purpose: Stores information about orders placed by users.
create table orders(
	order_ID int primary key auto_increment,
	user_ID int not null, -- Foreign key to the 'users' table
	foreign key (user_ID) references users(user_ID),
	orderDate date not null, -- Date when the order was placed
	order_TotalAmount decimal(10,2), -- Total amount of the order
	order_status enum('Pending', 'Processing', 'Completed', 'Cancelled') default 'Pending' -- Current status of the order
);

-- Table: OrderDetails
-- Purpose: Stores detailed information about the books included in each order.
create table orderDetails(
	orderDetail_ID int primary key auto_increment,
	order_ID int not null, -- Foreign key to the 'orders' table
	foreign key (order_ID) references orders(order_ID),
	book_ID int not null, -- Foreign key to the 'books' table
	foreign key (book_ID) references books(book_ID),
	quantity int not null, -- Quantity of the book ordered
	subTotal decimal(10,2) -- Subtotal amount for this book in the order
);

-- Table: Reviews
-- Purpose: Stores reviews and ratings provided by users for books.
create table reviews(
	review_ID int primary key auto_increment,
	book_ID int not null, -- Foreign key to the 'books' table
	user_ID int not null, -- Foreign key to the 'users' table
	rating tinyint check (rating between 1 and 5), -- Rating for the book (1 to 5)
	review_Comment text, -- User's review/comment about the book
	review_Date date, -- Date when the review was posted
	foreign key(book_ID) references books(book_ID),
	foreign key(user_ID) references users(user_ID)
);


-- Test
INSERT INTO categories (category_Name, category_Description) VALUES
('Programming', 'Books about programming languages and concepts'),
('Algorithms', 'Books about algorithms and data structures');

INSERT INTO books (book_Name, author, publisher, book_ISBN, price, stock, category_ID) VALUES
('Java Programming', 'James Gosling', 'Sun Microsystems', '1234567890', 29.99, 10, 1),
('Data Structures', 'Mark Allen Weiss', 'Pearson', '1234567891', 35.99, 5, 2);
