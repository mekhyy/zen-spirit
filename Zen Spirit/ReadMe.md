# Zen Spirit

A minimalist e-commerce shop for yoga and wellness products.

## Project Goals
- Clean and simple user interface.
- No italics, using only regular "Inter" font.
- Fast and functional shopping experience.

## Key Features
- **Product Display:** Items are loaded dynamically from a MySQL database.
- **Persistent Cart:** Adding items works across different pages using LocalStorage.
- **Admin Portal:** A simple form to add new products with a password check.

## Built With
- **Frontend:** HTML5, CSS3, JavaScript
- **Backend:** PHP 8.0+
- **Database:** MySQL

## Setup Instructions
1. Copy the project folder to your local server (XAMPP `htdocs`).
2. Open **phpMyAdmin** and create a database named `zenspirit_db`.
3. Import the `database.sql` file provided in the folder.
4. Update `api/db.php` with your database username and password.
5. Visit `http://localhost/zenspirit` in your browser.

## Main Files
- `index.html`: Home page with hero section.
- `cart.html`: The shopping cart view.
- `admin.html`: Inventory management page.
- `css/style.css`: Maximum clarity and calm
- `js/app.js`: Main cart and logic functions.