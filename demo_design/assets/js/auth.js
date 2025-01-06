
// Switch between login and register tabs
document.getElementById('loginTab').addEventListener('click', () => {
	document.getElementById('loginTab').classList.add('active');
	document.getElementById('registerTab').classList.remove('active');
	document.getElementById('loginForm').classList.add('active');
	document.getElementById('registerForm').classList.remove('active');
});

document.getElementById('registerTab').addEventListener('click', () => {
	document.getElementById('registerTab').classList.add('active');
	document.getElementById('loginTab').classList.remove('active');
	document.getElementById('registerForm').classList.add('active');
	document.getElementById('loginForm').classList.remove('active');
});

// Handle login form submission
document.getElementById('loginForm').addEventListener('submit', (event) => {
	event.preventDefault();
	const email = document.getElementById('loginEmail').value;
	const password = document.getElementById('loginPassword').value;

	// Simulate login
	if (email === 'test@example.com' && password === 'password123') {
		alert('Login successful!');
		localStorage.setItem('loggedIn', 'true');
		window.location.href = './index.html';
	} else {
		alert('Invalid email or password!');
	}
});

// Handle register form submission
document.getElementById('registerForm').addEventListener('submit', (event) => {
	event.preventDefault();
	const name = document.getElementById('registerName').value;
	const username = document.getElementById('registerUsername').value;
	const phone = document.getElementById('registerPhone').value;
	const email = document.getElementById('registerEmail').value;
	const password = document.getElementById('registerPassword').value;

	// Validate phone number
	if (!/^\d{10}$/.test(phone)) {
		alert('Please enter a valid 10-digit phone number!');
		return;
	}

	// Simulate registration
	alert(`Account created for ${name} (Username: ${username}, Phone: ${phone})!`);
	localStorage.setItem('loggedIn', 'true');
	localStorage.setItem('username', username);
	window.location.href = './index.html';
});

