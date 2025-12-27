let total = 0;

async function loadProducts() {
  const keyword = document.getElementById("search").value;
  const res = await fetch(
    `https://3q3c4z5r71.execute-api.REGION.amazonaws.com/prod/products?search=${keyword}`
  );
  const products = await res.json();

  const div = document.getElementById("products");
  div.innerHTML = "";

  products.forEach(p => {
    const item = document.createElement("div");
    item.innerHTML = `
      <h4>${p.name}</h4>
      <p>₹${p.price}</p>
      <button onclick="addToCart(${p.price})">Add</button>
    `;
    div.appendChild(item);
  });
}

function addToCart(price) {
  total += price;
  document.getElementById("total").innerText = total;
}

loadProducts();
