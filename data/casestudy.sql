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
	user_name varchar(50) not null, -- Name of the user
	user_pass varchar(255) not null, -- Encrypted password
	email varchar(100) not null unique, -- Unique email address for login
	user_role enum('Admin', 'User') default 'Customer', -- Role of the user (e.g., Admin or Customer)
	user_status enum('Active', 'Inactive', 'Banned') default 'Active', -- Status of the user account
	phone varchar(10) not null -- Phone number of the user
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
