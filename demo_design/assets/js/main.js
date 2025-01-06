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
		window.location.href = './login.html';
	}
};

// Function to render books from JSON
export function renderBooks() {
	const booksContainer = document.getElementById("books-container");

	fetch("./assets/js/bestselling_books.json")
	.then((response) => {
		if (!response.ok) {
			throw new Error("Failed to load books.json");
		}
		return response.json();
	})
	.then((books) => {
		books.forEach((book) => {
			const ratingStars = Array(book.rating)
				.fill('<img src="./assets/images/icons/star.png" alt="Star" class="star">')
				.join("");

			const bookElement = `
				<a href="${book.detailPage}" style="text-decoration: none;" class="book">
					<img src="${book.path}" alt="${book.name}" class="book-image">
					<h3 class="book-title">${book.name}</h3>
					<p class="book-author">By: ${book.author}</p>
					<div class="rating">${ratingStars}</div>
					<p class="book-price">${book.price}</p>
					<button class="btn btn-primary">Add to Cart</button>
				</a>
			`;
			booksContainer.innerHTML += bookElement;
		});
	})
	.catch((error) => { console.error("Error loading books:", error); });
};

// Function to render new arrivals
export function renderNewArrivals() {
	const newArrivalsContainer = document.getElementById("new-arrivals-container");

	fetch("./assets/js/new_arrival_books.json")
	.then((response) => {
		if (!response.ok) {
			throw new Error("Failed to load books.json");
		}
		return response.json();
	})
	.then((books) => {
		books.slice(0, 5).forEach((book) => {
			const ratingStars = Array(book.rating)
				.fill('<img src="./assets/images/icons/star.png" alt="Star" class="star">')
				.join("");

			const bookElement = `
				<a href="${book.detailPage}" style="text-decoration: none;" class="book">
					<img src="${book.path}" alt="${book.name}" class="book-image">
					<h3 class="book-title">${book.name}</h3>
					<p class="book-author">By: ${book.author}</p>
					<div class="rating">${ratingStars}</div>
					<p class="book-price">${book.price}</p>
					<button class="btn btn-primary">Add to Cart</button>
				</a>
			`;
			newArrivalsContainer.innerHTML += bookElement;
		});
	})
	.catch((error) => { console.error("Error loading new arrivals:", error); });
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

	// Call renderBooks to display the books
	renderBooks();
	// Call renderNewArrivals to display the books
	renderNewArrivals();
};

// Run initialization
init();
