<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Weather App</title>
  <link rel="stylesheet" href="Style.css">

</head>
<body>

<h1>My Weather App</h1>

<form action="MyServelet" method="post">
    <input name="city" placeholder="Enter city name" required>
    <button type="submit">Check Weather</button>
</form>

<c:if test="${not empty city}">
    <div class="weather-card">
        <h2>${city}</h2>
        <p><strong>Date:</strong> ${date}</p>
        <p><strong>Temperature:</strong> ${temperature}°C</p>
        <p><strong>Condition:</strong> ${weatherCondition}</p>
        <p><strong>Humidity:</strong> ${humidity}%</p>
        <p><strong>Wind Speed:</strong> ${windSpeed} m/s</p>
    </div>
</c:if>

</body>
</html>
