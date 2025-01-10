// Simulated user data and orders
const user = {
	name: "John Doe",
	username: "johndoe",
	email: "johndoe@example.com",
	phone: "1234567890",
	password: "password123",
};

const orders = [
	{ id: 1, item: "Clean Code", date: "2025-01-01", price: "$39.99" },
	{ id: 2, item: "Concrete Mathematics", date: "2025-01-10", price: "$29.99" },
	{ id: 3, item: "Python Data Science Handbook", date: "2025-01-15", price: "$19.99" },
];

// Load user data
export function loadUserData() {
	document.getElementById("profileName").textContent = user.name;
	document.getElementById("profileUsername").value = user.username;
	document.getElementById("profileEmail").value = user.email;
	document.getElementById("profilePhone").value = user.phone;
	document.getElementById("profilePassword").value = user.password;
};

// Load orders
export function loadOrders() {
	const orderList = document.getElementById("orderList");
	orders.forEach((order) => {
		const listItem = document.createElement("li");
		listItem.textContent = `${order.item} - ${order.date} - ${order.price}`;
		orderList.appendChild(listItem);
	});
};

// Handle profile update
document.getElementById("profileForm").addEventListener("submit", (event) => {
	event.preventDefault();

	user.email = document.getElementById("profileEmail").value;
	user.phone = document.getElementById("profilePhone").value;
	user.password = document.getElementById("profilePassword").value;

	alert("Profile updated successfully!");
});

// Handle logout
document.getElementById("logoutBtn").addEventListener("click", () => {
	localStorage.removeItem("loggedIn");
	localStorage.removeItem("username");
	alert("Logged out successfully!");
	window.location.href = "./login.html";
});

// Initialize profile page
function initProfilePage() {
	loadUserData();
	loadOrders();
};

initProfilePage();
