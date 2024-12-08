<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Payment Page</title>
  <style>
    body {
      background-color: gray;
      color: black;
      font-family: Arial, sans-serif;
    }
    .container {
      width: 80%;
      margin: auto;
      padding: 20px;
    }
    .box {
      padding: 20px;
      background-color: white;
      border-radius: 15px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .btn {
      padding: 10px 20px;
      background: linear-gradient(to right, rgb(0, 168, 255), rgb(2, 232, 255));
      color: white;
      border: none;
      cursor: pointer;
    }
    .btn:hover {
      animation-duration: 200ms;
      animation-timing-function: ease-in-out;
      animation-direction: alternate;
      animation-fill-mode: forwards;
    }
    .radio-buttons {
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="box">
      <h2>Pay Your Fine</h2>
      
      <div class="radio-buttons">
        <input type="radio" id="razorpay" name="payment" value="RazorPay" onclick="handleRadioChange()">
        <label for="razorpay">RazorPay</label><br>
        <input type="radio" id="card" name="payment" value="COD" onclick="handleRadioChange2()">
        <label for="card">COD</label>
      </div>
      <button class="btn" onclick="handlePayment()">Make Payment</button>
    </div>
  </div>

  <script>
    function handleRadioChange() {
      document.getElementById('razorpay').checked = true;
      document.getElementById('card').checked = false;
    }

    function handleRadioChange2() {
      document.getElementById('razorpay').checked = false;
      document.getElementById('card').checked = true;
    }

    function handlePayment() {
      // Check which payment method is selected
      const isRazorpay = document.getElementById('razorpay').checked;
      const isCOD = document.getElementById('card').checked;

      if (isRazorpay) {
        // Razorpay payment gateway
        const grandTotal = 10 * 10000; // Amount in paise

        const options = {
          key: "rzp_test_dnv3nQiWbqzTGt", // Your Razorpay public key
          amount: grandTotal,
          currency: "INR",
          name: "Voyawondar",
          description: "Payment",
          image: "https://rb.gy/6cdbi",
          handler: function (response) {
            window.location.href = "/Payment-Success";
            console.log(response);
          }
        };
        const rzp1 = new Razorpay(options);
        rzp1.open();
      } else if (isCOD) {
        // Redirect to the order confirmation page
        window.location.href = "/orderConfirmation.jsp";
      } else {
        alert("Please select a payment method.");
      }
    }
  </script>
  <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
</body>
</html>
