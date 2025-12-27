async function addProduct() {
  const token = localStorage.getItem("idToken");

  await fetch("https://3q3c4z5r71.execute-api.REGION.amazonaws.com/prod/products", {
    method: "POST",
    headers: {
      "Authorization": token,
      "Content-Type": "application/json"
    },
    body: JSON.stringify({
      name: name.value,
      price: Number(price.value)
    })
  });

  alert("Product added");
}
