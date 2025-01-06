// Add book to cart
export function addToCart() {
    const isLoggedIn = localStorage.getItem('loggedIn') === 'true';

    if (!isLoggedIn) {
        // Show login modal if not logged in
        const modal = document.getElementById('cartModal');
        modal.style.display = 'block';
    } else {
        // Simulate adding to cart
        alert('Book added to cart!');
    }
}

// Close modal logic
document.getElementById('closeModal').addEventListener('click', () => {
    const modal = document.getElementById('cartModal');
    modal.style.display = 'none';
});

// Event listener for add-to-cart button
document.querySelector('.add-to-cart-btn').addEventListener('click', addToCart);

