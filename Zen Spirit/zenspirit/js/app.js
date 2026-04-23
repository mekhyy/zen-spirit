let allProducts = [];
let cartCount = 0;

async function initPage() {
    const grid = document.getElementById('product-grid');
    if (!grid) return;

    const categoryToLoad = grid.getAttribute('data-page');

    try {
        const response = await fetch('api/products.php');
        allProducts = await response.json();

        const filtered = (categoryToLoad === "All") 
            ? allProducts 
            : allProducts.filter(p => p.Category === categoryToLoad);

        renderGrid(filtered);
    } catch (error) {
        console.error("Fetch error:", error);
    }
}

function renderGrid(products) {
    const grid = document.getElementById('product-grid');
    grid.innerHTML = products.map(p => `
        <div class="product-card">
            <div class="img-container">
                <img src="img/${p.Image}" alt="${p.Name}">
            </div>
            <div class="product-info">
                <h3>${p.Name}</h3>
                <p class="price">$${parseFloat(p.Price).toFixed(2)}</p>
                <button class="buy-btn" onclick="addToCart(event, '${p.Name}', ${p.Price})">
                    Add to Cart
                </button>
            </div>
        </div>
    `).join('');
}


function scrollToShop() {
    document.getElementById('shop-container').scrollIntoView({ behavior: 'smooth' });
}

document.addEventListener('DOMContentLoaded', initPage);



function addToCart(event, name, price) {
    let cart = JSON.parse(localStorage.getItem('zenCart')) || [];

    cart.push({ 
        name: name, 
        price: parseFloat(price) 
    });

    localStorage.setItem('zenCart', JSON.stringify(cart));

    updateCartCounterUI();

    const btn = event.target;
    btn.innerText = "✓ Added";
    setTimeout(() => { btn.innerText = "Add to Cart"; }, 1000);
}

function updateCartCounterUI() {
    const cart = JSON.parse(localStorage.getItem('zenCart')) || [];
    const counter = document.getElementById('cart-count');
    if (counter) {
        counter.innerText = cart.length;
    }
}

document.addEventListener('DOMContentLoaded', updateCartCounterUI);


function renderCartPage() {
    const cart = JSON.parse(localStorage.getItem('zenCart')) || [];
    
    const displayArea = document.getElementById('cart-display-area');
    const totalSpan = document.getElementById('cart-total-amount');
    const summary = document.getElementById('cart-summary-section');

    if (!displayArea) return; 
    if (cart.length === 0) {
        displayArea.innerHTML = "<p>Your cart is empty.</p>";
        if (summary) summary.style.display = "none";
        return;
    }

    if (summary) summary.style.display = "block";
    
    let total = 0;
    displayArea.innerHTML = cart.map((item, index) => {
        total += item.price;
        return `
            <div class="cart-item" style="display:flex; justify-content:space-between; padding:10px; border-bottom:1px solid #eee;">
                <span>${item.name}</span>
                <span>$${item.price.toFixed(2)}</span>
                <button onclick="removeFromCart(${index})">Remove</button>
            </div>
        `;
    }).join('');

    if (totalSpan) totalSpan.innerText = total.toFixed(2);
}
function removeFromCart(index) {
    let cart = JSON.parse(localStorage.getItem('zenCart')) || [];

    cart.splice(index, 1);

    localStorage.setItem('zenCart', JSON.stringify(cart));

    renderCartPage();       
    updateCartCounterUI(); 
}


displayArea.innerHTML = cart.map((item, index) => {
    return `
        <div class="cart-item">
            <div class="item-details">
                <strong>${item.name}</strong>
                <p>$${item.price.toFixed(2)}</p>
            </div>
            <button class="remove-btn" onclick="removeFromCart(${index})">
                Remove
            </button>
        </div>
    `;
}).join('');

const contactForm = document.getElementById('contact-form');
if (contactForm) {
    contactForm.addEventListener('submit', function(e) {
        e.preventDefault();
        
        const btn = this.querySelector('button');
        btn.innerText = "Sending...";
        
        setTimeout(() => {
            alert("Thank you! Your message has been sent to the Zen Spirit team.");
            contactForm.reset();
            btn.innerText = "Send Message";
        }, 1500);
    });
}


function clearEntireCart() {
    if (confirm("Are you sure you want to clear your sanctuary selection?")) {
        
        localStorage.removeItem('zenCart');

        updateCartCounterUI();

        location.reload(); 
    }
}