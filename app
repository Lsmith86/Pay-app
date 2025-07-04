<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Overtime Tax Calculator</title>
  <style>
    body {
      font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
      margin: 0;
      padding: 20px;
      background: #f5f5f5;
      color: #333;
    }

    .container {
      max-width: 500px;
      margin: auto;
      background: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }

    h2 {
      text-align: center;
      margin-bottom: 25px;
    }

    label {
      display: block;
      margin: 12px 0 4px;
    }

    input[type="number"] {
      width: 100%;
      padding: 10px;
      font-size: 1rem;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    #result {
      margin-top: 20px;
      font-size: 1.2rem;
      font-weight: bold;
      text-align: center;
    }

    footer {
      text-align: center;
      margin-top: 40px;
      font-size: 0.9rem;
      color: #888;
    }
  </style>
</head>
<body>
  <div class="container">
    <h2>Overtime Pay After-Tax</h2>

    <label for="hours">Overtime Hours Worked:</label>
    <input type="number" id="hours" step="0.1" placeholder="e.g., 10">

    <label for="rate">Overtime Rate ($/hr):</label>
    <input type="number" id="rate" step="0.01" placeholder="e.g., 25">

    <label for="tax">Marginal Tax Rate (%):</label>
    <input type="number" id="tax" step="0.1" placeholder="e.g., 22">

    <div id="result">Total After-Tax Overtime Pay: $0.00</div>
  </div>

  <footer>© 2025 OvertimeCalc</footer>

  <script>
    const hours = document.getElementById('hours');
    const rate = document.getElementById('rate');
    const tax = document.getElementById('tax');
    const result = document.getElementById('result');

    function calculate() {
      const h = parseFloat(hours.value) || 0;
      const r = parseFloat(rate.value) || 0;
      const t = parseFloat(tax.value) || 0;

      const gross = h * r;
      const net = gross * (1 - t / 100);

      result.textContent = `Total After-Tax Overtime Pay: $${net.toFixed(2)}`;
    }

    [hours, rate, tax].forEach(input => input.addEventListener('input', calculate));
  </script>
</body>
</html>