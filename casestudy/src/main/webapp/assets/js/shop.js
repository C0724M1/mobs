// Function to load books from JSON file and display them
async function loadBooks() {
	try {
		const response = await fetch('./assets/js/books.json');
		const books = await response.json();

		const bookList = document.getElementById('book-list');
		bookList.innerHTML = '';

		books.forEach((book) => {
			const bookItem = document.createElement('div');
			bookItem.classList.add('book-item');

			bookItem.innerHTML = `
				<a href="${book.detailPage}" class="book-link" style="text-decoration: none;">
					<img src="${book.path}" alt="${book.name}">
					<h3>${book.name}</h3>
					<p>Author: ${book.author}</p>
					<div class="rating">
						${'★'.repeat(book.rating).padEnd(5, '☆')}
					</div>
					<p class="price">${book.price}</p>
				</a>
				<button>Add to Cart</button>
			`;

			bookList.appendChild(bookItem);
		});
	} catch (error) {
		console.error('Error loading books:', error);
	}
};

// Initialize the script
function init() {
	// Load books
	loadBooks();
};

// Run initialization
init();
