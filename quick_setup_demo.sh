# Create folders
mkdir demo_design && cd demo_design

# Create files
touch index.html shop.html details.html orders.html rating.html login.html profile.html checkout.html

mkdir -p assets/{css,js,images}

touch assets/css/style.css assets/css/home.css assets/css/shop.css assets/css/details.css \
	assets/css/orders.css assets/css/rating.css assets/css/auth.css assets/css/profile.css \
	assets/css/checkout.css

touch assets/js/main.js assets/js/shop.js assets/js/details.js assets/js/orders.js \
	assets/js/rating.js assets/js/auth.js assets/js/profile.js assets/js/checkout.js

touch assets/images/.gitkeep

# Print result
echo "Project structure created successfully!"
