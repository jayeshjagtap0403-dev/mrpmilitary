<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AQI + Soil + Water Checker</title>
  <style>
    body{font-family:Arial;padding:20px;background:#f5f5f5}
    .box{background:white;padding:20px;border-radius:10px;max-width:600px;margin:auto;box-shadow:0 0 10px rgba(0,0,0,0.1)}
    input,button{padding:10px;font-size:16px;margin:5px;width:95%}
    button{cursor:pointer;background:#007bff;color:white;border:none;border-radius:5px}
    button:hover{background:#0056b3}
    .result{margin-top:20px;padding:10px;background:#e8e8e8;border-radius:8px}
  </style>
</head>
<body>
<div class="box">
  <h2>Maharashtra AQI, Soil & Water Checker</h2>
  <input id="search" placeholder="Enter any Taluka or District of Maharashtra">
  <button onclick="checkAll()">Check AQI, Soil & Water</button>

  <div id="output" class="result"></div>
</div>

<script>
const data = {
  "shirpur": {aqi: 82, soil:"Moderate fertility, black cotton soil", water:"Tapi river basin – moderate quality"},
  "amalner": {aqi: 91, soil:"Black soil, medium nutrients", water:"Bori river – slightly polluted"},
  "dhule": {aqi: 95, soil:"Black soil, low phosphorus", water:"Panzara river – moderate"},
  "jalgaon": {aqi: 110, soil:"Black soil, good potassium", water:"Girna river – moderate"},
  "pune": {aqi: 150, soil:"Loamy soil, high nitrogen", water:"Mula-Mutha – polluted"},
  "mumbai": {aqi: 175, soil:"Sandy & construction-mixed", water:"Mithi river – highly polluted"}
};

function checkAll(){
  let place = document.getElementById("search").value.trim().toLowerCase();
  let result = data[place];

  if(!result){
    document.getElementById("output").innerHTML = "Data not found. Try Shirpur, Amalner, Dhule, Jalgaon, Pune, Mumbai.";
    return;
  }

  document.getElementById("output").innerHTML =
    `<b>AQI:</b> ${result.aqi}<br>
     <b>Soil Quality:</b> ${result.soil}<br>
     <b>Water Quality:</b> ${result.water}`;
}
</script>
</body>
</html>
