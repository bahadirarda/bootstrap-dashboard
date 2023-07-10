//FREE APIKEY = ec6dc3df002e27a1ee7758f4

fetch("https://v6.exchangerate-api.com/v6/ec6dc3df002e27a1ee7758f4/latest/USD")
  .then((response) => response.json())
  .then((data) => {
    let rates = data.conversion_rates;
    let listItem = document.createElement("li");
    listItem.classList.add(
      "list-group-item",
      "d-flex",
      "justify-content-between",
      "align-items-center"
    );

    let currencyDiv = document.createElement("div");
    currencyDiv.textContent = "USD";

    let rateDiv = document.createElement("div");
    rateDiv.textContent = `${rates["TRY"].toFixed(2)} TRY`;

    listItem.appendChild(currencyDiv);
    listItem.appendChild(rateDiv);

    document.querySelector(".list-group").appendChild(listItem);
  })
  .catch((error) => {
    console.error("Error:", error);
  });

fetch("https://v6.exchangerate-api.com/v6/ec6dc3df002e27a1ee7758f4/latest/EUR")
  .then((response) => response.json())
  .then((data) => {
    let rates = data.conversion_rates;
    let listItem = document.createElement("li");
    listItem.classList.add(
      "list-group-item",
      "d-flex",
      "justify-content-between",
      "align-items-center"
    );

    let currencyDiv = document.createElement("div");
    currencyDiv.textContent = "EURO";

    let rateDiv = document.createElement("div");
    rateDiv.textContent = `${rates["TRY"].toFixed(2)} TRY`;

    listItem.appendChild(currencyDiv);
    listItem.appendChild(rateDiv);

    document.querySelector(".list-group").appendChild(listItem);
  })
  .catch((error) => {
    console.error("Error:", error);
  });

fetch("https://v6.exchangerate-api.com/v6/ec6dc3df002e27a1ee7758f4/latest/GBP")
  .then((response) => response.json())
  .then((data) => {
    let rates = data.conversion_rates;
    let listItem = document.createElement("li");
    listItem.classList.add(
      "list-group-item",
      "d-flex",
      "justify-content-between",
      "align-items-center"
    );

    let currencyDiv = document.createElement("div");
    currencyDiv.textContent = "GBP";

    let rateDiv = document.createElement("div");
    rateDiv.textContent = `${rates["TRY"].toFixed(2)} TRY`;

    listItem.appendChild(currencyDiv);
    listItem.appendChild(rateDiv);

    document.querySelector(".list-group").appendChild(listItem);
  })
  .catch((error) => {
    console.error("Error:", error);
  });
