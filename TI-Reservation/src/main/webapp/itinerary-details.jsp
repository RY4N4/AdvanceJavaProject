<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Itinerary Details</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: #1A1A1A;
            color: #FFD800;
            font-family: 'Poppins', sans-serif;
        }
        .title {
            background: #000;
            color: #FFCC00;
            height: 100px;
            width: 90%;
            margin: 40px auto;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            transition: 0.3s ease-in-out;
        }
        .title:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.25);
        }
        .title h1 {
            font-size: 48px;
            text-transform: uppercase;
            margin: 0;
        }
        .container {
            background: #000;
            width: 90%;
            margin: 20px auto;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }
        .trip-header {
            border-bottom: 2px solid #FFD800;
            padding-bottom: 15px;
            margin-bottom: 20px;
        }
        .trip-header h2 {
            margin-top: 0;
            font-size: 32px;
        }
        .trip-info {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 15px;
            margin-bottom: 30px;
        }
        .info-box {
            background: rgba(255, 216, 0, 0.1);
            padding: 15px;
            border-radius: 8px;
        }
        .info-box h3 {
            margin-top: 0;
            margin-bottom: 10px;
            font-size: 18px;
        }
        .info-box p {
            margin: 5px 0;
        }
        .section-title {
            font-size: 24px;
            margin-bottom: 15px;
            padding-bottom: 10px;
            border-bottom: 1px solid #FFD800;
        }
        .card {
            background: rgba(255, 216, 0, 0.05);
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 15px;
            transition: 0.3s;
        }
        .card:hover {
            background: rgba(255, 216, 0, 0.1);
            transform: translateY(-3px);
        }
        .card h4 {
            margin-top: 0;
            margin-bottom: 10px;
            color: #FFD800;
        }
        .card p {
            margin: 5px 0;
        }
        .price {
            font-size: 20px;
            font-weight: bold;
            color: #FFD800;
            margin-top: 15px;
        }
        .price-breakdown {
            background: rgba(255, 216, 0, 0.1);
            padding: 15px;
            border-radius: 8px;
            margin-top: 30px;
        }
        .price-item {
            display: flex;
            justify-content: space-between;
            padding: 8px 0;
            border-bottom: 1px dashed rgba(255, 216, 0, 0.2);
        }
        .price-total {
            display: flex;
            justify-content: space-between;
            padding: 12px 0;
            border-top: 2px solid #FFD800;
            font-size: 20px;
            font-weight: bold;
            margin-top: 10px;
        }
        .itinerary-day {
            background: rgba(0, 0, 0, 0.5);
            border-radius: 8px;
            padding: 15px;
            margin-bottom: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .day-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }
        .day-title {
            font-size: 20px;
            font-weight: bold;
            margin: 0;
        }
        .day-date {
            background: #FFD800;
            color: #1A1A1A;
            padding: 5px 10px;
            border-radius: 4px;
            font-weight: 500;
        }
        .activity-item {
            display: flex;
            margin-bottom: 15px;
            background: rgba(255, 255, 255, 0.05);
            padding: 10px;
            border-radius: 6px;
        }
        .activity-time {
            flex: 0 0 80px;
            font-weight: bold;
            color: #FFD800;
        }
        .activity-content {
            flex: 1;
        }
        .activity-content h5 {
            margin-top: 0;
            margin-bottom: 5px;
        }
        .activity-content p {
            margin: 5px 0;
            font-size: 14px;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }
        .button {
            padding: 12px 24px;
            background: #FFD800;
            color: #1A1A1A;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }
        .button:hover {
            background: #FFCC00;
            transform: translateY(-3px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }
        .button.secondary {
            background: transparent;
            border: 2px solid #FFD800;
            color: #FFD800;
        }
        .button.secondary:hover {
            background: rgba(255, 216, 0, 0.1);
        }
        .navigation {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background: #000;
            padding: 15px 5%;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
        }
        .nav-logo {
            font-size: 24px;
            font-weight: 700;
            color: #FFD800;
        }
        .nav-links {
            display: flex;
        }
        .nav-links a {
            color: #FFD800;
            text-decoration: none;
            margin: 0 15px;
            padding: 5px 10px;
            border-radius: 5px;
            transition: 0.3s;
        }
        .nav-links a:hover {
            background: rgba(255, 216, 0, 0.1);
        }
        .nav-links a.active {
            background: #FFD800;
            color: #1A1A1A;
        }
        .customization-options {
            margin-top: 20px;
        }
        .option-selector {
            width: 100%;
            padding: 10px;
            background: #1A1A1A;
            color: #FFD800;
            border: 1px solid #FFD800;
            border-radius: 5px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<%
    // Getting parameters from request
    String tripId = request.getParameter("tripId");
    String tripFrom = request.getParameter("tripFrom");
    String tripTo = request.getParameter("tripTo");
    String tripType = request.getParameter("tripType");
    String startDateStr = request.getParameter("startDate");
    String endDateStr = request.getParameter("endDate");
    String travelers = request.getParameter("travelers");

    // Calculate trip duration
    int tripDuration = 0;
    Date startDate = null;
    Date endDate = null;

    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat displayFormat = new SimpleDateFormat("MMMM dd, yyyy");

    try {
        if(startDateStr != null && endDateStr != null) {
            // For dates coming from the request parameters as strings
            startDate = sdf.parse(startDateStr);
            endDate = sdf.parse(endDateStr);
        } else if(request.getParameter("startDate") instanceof java.sql.Date) {
            // For dates coming directly from the database
            startDate = new Date(((java.sql.Date)request.getParameter("startDate")).getTime());
            endDate = new Date(((java.sql.Date)request.getParameter("endDate")).getTime());
        }

        if(startDate != null && endDate != null) {
            long diffInMillies = Math.abs(endDate.getTime() - startDate.getTime());
            tripDuration = (int)(diffInMillies / (1000 * 60 * 60 * 24)) + 1; // +1 to include both start and end day
        }
    } catch(Exception e) {
        // Handle parsing exception
        tripDuration = 5; // Default fallback duration
    }

    // Generate pricing based on trip type and duration
    double basePrice = 0;
    switch(tripType) {
        case "Business Trip":
            basePrice = 2500 * tripDuration;
            break;
        case "Summer Vacation":
            basePrice = 1800 * tripDuration;
            break;
        case "Spring Vacation":
            basePrice = 1600 * tripDuration;
            break;
        case "Winter Vacation":
            basePrice = 2200 * tripDuration;
            break;
        default:
            basePrice = 1500 * tripDuration;
    }

    // Calculate number of travelers and adjust price
    int numTravelers = 1; // Default
    if(travelers != null && travelers.contains("-")) {
        String[] parts = travelers.split("-");
        if(parts.length > 1) {
            String lastPart = parts[parts.length - 1].trim();
            if(lastPart.equals("4+")) {
                numTravelers = 4;
            } else {
                try {
                    numTravelers = Integer.parseInt(lastPart.trim());
                } catch(Exception e) {
                    numTravelers = 1; // Default if parsing fails
                }
            }
        }
    }

    // Adjust price based on number of travelers
    double totalPrice = basePrice * numTravelers;
    double accommodationPrice = basePrice * 0.4; // 40% of base price for accommodation
    double transportPrice = basePrice * 0.3; // 30% of base price for transportation
    double activitiesPrice = basePrice * 0.2; // 20% of base price for activities
    double servicesFees = basePrice * 0.1; // 10% of base price for service fees

    // Set up sample accommodation data
    String[] accommodationTypes = {"Luxury Hotel", "Standard Hotel", "Budget Hotel", "Vacation Rental"};
    double[] accommodationMultipliers = {1.5, 1.0, 0.7, 1.2};

    // Set up sample transportation data
    String[] transportTypes = {"Flight", "Train", "Rental Car", "Bus"};
    double[] transportMultipliers = {1.8, 1.0, 1.2, 0.6};

    // Generate itinerary days
    Calendar calendar = Calendar.getInstance();
    if(startDate != null) {
        calendar.setTime(startDate);
    }
%>

<!-- Navigation Bar -->
<div class="navigation">
    <div class="nav-logo">TravelPro</div>
    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="reservation.jsp">Reservations</a>
        <a href="#" class="active">Itinerary</a>
        <a href="transport-options.jsp">Transport</a>
        <a href="accommodation.jsp">Stays</a>
        <a href="activities.jsp">Activities</a>
    </div>
</div>

<!-- Title Section -->
<div class="title">
    <h1>Your Travel Itinerary</h1>
</div>

<!-- Main Content Container -->
<div class="container">
    <!-- Trip Header -->
    <div class="trip-header">
        <h2><%= tripFrom %> to <%= tripTo %> - <%= tripType %></h2>
    </div>

    <!-- Trip Info Section -->
    <div class="trip-info">
        <div class="info-box">
            <h3>Trip Details</h3>
            <p><strong>From:</strong> <%= tripFrom %></p>
            <p><strong>To:</strong> <%= tripTo %></p>
            <p><strong>Trip Type:</strong> <%= tripType %></p>
            <p><strong>Duration:</strong> <%= tripDuration %> days</p>
        </div>
        <div class="info-box">
            <h3>Dates</h3>
            <p><strong>Departure:</strong> <%= startDate != null ? displayFormat.format(startDate) : "Not specified" %></p>
            <p><strong>Return:</strong> <%= endDate != null ? displayFormat.format(endDate) : "Not specified" %></p>
        </div>
        <div class="info-box">
            <h3>Travelers</h3>
            <p><strong>Number of Travelers:</strong> <%= numTravelers %></p>
            <p><strong>Traveler Type:</strong> <%= travelers != null ? travelers : "Adult" %></p>
        </div>
    </div>

    <!-- Accommodation Section -->
    <h3 class="section-title">Accommodation Options</h3>
    <div class="customization-options">
        <select class="option-selector" id="accommodationType" onchange="updatePricing()">
            <% for(int i = 0; i < accommodationTypes.length; i++) { %>
            <option value="<%= i %>"><%= accommodationTypes[i] %></option>
            <% } %>
        </select>
    </div>

    <div id="accommodationDetails">
        <div class="card">
            <h4><%= accommodationTypes[0] %></h4>
            <p>Experience luxury during your stay with premium amenities and excellent service.</p>
            <p><strong>Features:</strong> Free WiFi, Breakfast included, Swimming pool, Fitness center, Room service</p>
            <p class="price">$<span id="accommodationPrice"><%= String.format("%.2f", accommodationPrice * accommodationMultipliers[0]) %></span></p>
        </div>
    </div>

    <!-- Transportation Section -->
    <h3 class="section-title">Transportation Options</h3>
    <div class="customization-options">
        <select class="option-selector" id="transportType" onchange="updatePricing()">
            <% for(int i = 0; i < transportTypes.length; i++) { %>
            <option value="<%= i %>"><%= transportTypes[i] %></option>
            <% } %>
        </select>
    </div>

    <div id="transportDetails">
        <div class="card">
            <h4><%= transportTypes[0] %></h4>
            <p>Quick and convenient air travel to your destination.</p>
            <p><strong>Details:</strong> Direct flights available, 23kg baggage allowance, In-flight entertainment</p>
            <p class="price">$<span id="transportPrice"><%= String.format("%.2f", transportPrice * transportMultipliers[0]) %></span></p>
        </div>
    </div>

    <!-- Activities Section -->
    <h3 class="section-title">Suggested Activities</h3>
    <div class="card">
        <h4>Guided City Tour</h4>
        <p>Explore the highlights of <%= tripTo %> with a knowledgeable local guide.</p>
        <p><strong>Duration:</strong> 3 hours</p>
        <p class="price">$<%= String.format("%.2f", activitiesPrice * 0.3) %></p>
    </div>
    <div class="card">
        <h4>Cultural Experience</h4>
        <p>Immerse yourself in the local culture with traditional activities and demonstrations.</p>
        <p><strong>Duration:</strong> 4 hours</p>
        <p class="price">$<%= String.format("%.2f", activitiesPrice * 0.4) %></p>
    </div>
    <div class="card">
        <h4>Outdoor Adventure</h4>
        <p>Experience the natural beauty of the region with guided outdoor activities.</p>
        <p><strong>Duration:</strong> 5 hours</p>
        <p class="price">$<%= String.format("%.2f", activitiesPrice * 0.5) %></p>
    </div>

    <!-- Itinerary Timeline -->
    <h3 class="section-title">Itinerary Timeline</h3>

    <%
        // Generate sample itinerary for each day
        for(int day = 1; day <= tripDuration && day <= 5; day++) {
            String dayDate = "";
            if(startDate != null) {
                dayDate = displayFormat.format(calendar.getTime());
                calendar.add(Calendar.DATE, 1);
            }
    %>
    <div class="itinerary-day">
        <div class="day-header">
            <h4 class="day-title">Day <%= day %></h4>
            <span class="day-date"><%= dayDate %></span>
        </div>

        <div class="activity-item">
            <div class="activity-time">09:00 AM</div>
            <div class="activity-content">
                <h5>Breakfast at Hotel</h5>
                <p>Start your day with a delicious breakfast at your accommodation.</p>
            </div>
        </div>

        <div class="activity-item">
            <div class="activity-time">10:30 AM</div>
            <div class="activity-content">
                <h5><%= day == 1 ? "City Tour" : day == 2 ? "Museum Visit" : day == 3 ? "Local Market" : day == 4 ? "Historical Sites" : "Nature Hike" %></h5>
                <p><%= day == 1 ? "Explore the main attractions of " + tripTo + " with a local guide." :
                        day == 2 ? "Visit the renowned museums and galleries in the area." :
                                day == 3 ? "Experience local culture and cuisine at the bustling market." :
                                        day == 4 ? "Discover the rich history of the region with a visit to historical landmarks." :
                                                "Enjoy the natural beauty of the surroundings with a guided nature hike." %></p>
            </div>
        </div>

        <div class="activity-item">
            <div class="activity-time">01:00 PM</div>
            <div class="activity-content">
                <h5>Lunch Break</h5>
                <p>Enjoy a delicious lunch at a local restaurant.</p>
            </div>
        </div>

        <div class="activity-item">
            <div class="activity-time">03:00 PM</div>
            <div class="activity-content">
                <h5><%= day == 1 ? "Shopping Time" : day == 2 ? "Cultural Experience" : day == 3 ? "Beach Time" : day == 4 ? "Adventure Activity" : "Free Time" %></h5>
                <p><%= day == 1 ? "Visit local shops and boutiques for souvenirs and gifts." :
                        day == 2 ? "Participate in a traditional cultural experience or workshop." :
                                day == 3 ? "Relax at the beach and enjoy water activities." :
                                        day == 4 ? "Experience an adrenaline-pumping adventure activity." :
                                                "Free time to explore on your own or relax at your accommodation." %></p>
            </div>
        </div>

        <div class="activity-item">
            <div class="activity-time">07:00 PM</div>
            <div class="activity-content">
                <h5>Dinner</h5>
                <p><%= day == 1 ? "Welcome dinner at a fine dining restaurant." :
                        day == tripDuration ? "Farewell dinner with local entertainment." :
                                "Dinner at a recommended local restaurant." %></p>
            </div>
        </div>
    </div>
    <% } %>

    <!-- Price Breakdown Section -->
    <h3 class="section-title">Price Breakdown</h3>
    <div class="price-breakdown">
        <div class="price-item">
            <span>Accommodation (<span id="accommodationTypeText"><%= accommodationTypes[0] %></span>)</span>
            <span>$<span id="accommodationPriceBreakdown"><%= String.format("%.2f", accommodationPrice * accommodationMultipliers[0]) %></span></span>
        </div>
        <div class="price-item">
            <span>Transportation (<span id="transportTypeText"><%= transportTypes[0] %></span>)</span>
            <span>$<span id="transportPriceBreakdown"><%= String.format("%.2f", transportPrice * transportMultipliers[0]) %></span></span>
        </div>
        <div class="price-item">
            <span>Activities & Excursions</span>
            <span>$<%= String.format("%.2f", activitiesPrice) %></span>
        </div>
        <div class="price-item">
            <span>Service Fees</span>
            <span>$<%= String.format("%.2f", servicesFees) %></span>
        </div>
        <div class="price-total">
            <span>Total Price (for <%= numTravelers %> <%= numTravelers > 1 ? "travelers" : "traveler" %>)</span>
            <span>$<span id="totalPrice"><%= String.format("%.2f", totalPrice) %></span></span>
        </div>
    </div>

    <!-- Action Buttons -->
    <div class="button-container">
        <a href="reservation.jsp" class="button secondary">Back to Reservation</a>
        <a href="transport-options.jsp?tripId=<%= tripId %>" class="button">Continue to Transportation</a>
    </div>
</div>

<!-- JavaScript for Dynamic Content -->
<script>
    function updatePricing() {
        // Get selected accommodation and transport options
        const accommodationSelect = document.getElementById('accommodationType');
        const transportSelect = document.getElementById('transportType');

        const accommodationIndex = parseInt(accommodationSelect.value);
        const transportIndex = parseInt(transportSelect.value);

        // Get accommodation and transport details
        const accommodationTypes = [<%= "\"" + String.join("\", \"", accommodationTypes) + "\"" %>];
        const accommodationMultipliers = [<%= String.join(", ", Arrays.stream(accommodationMultipliers).mapToObj(String::valueOf).toArray(String[]::new)) %>];

        const transportTypes = [<%= "\"" + String.join("\", \"", transportTypes) + "\"" %>];
        const transportMultipliers = [<%= String.join(", ", Arrays.stream(transportMultipliers).mapToObj(String::valueOf).toArray(String[]::new)) %>];

        // Base prices
        const baseAccommodationPrice = <%= accommodationPrice %>;
        const baseTransportPrice = <%= transportPrice %>;
        const activitiesPrice = <%= activitiesPrice %>;
        const servicesFees = <%= servicesFees %>;

        // Calculate new prices
        const accommodationPrice = baseAccommodationPrice * accommodationMultipliers[accommodationIndex];
        const transportPrice = baseTransportPrice * transportMultipliers[transportIndex];

        // Update accommodation details
        document.getElementById('accommodationDetails').innerHTML = `
                <div class="card">
                    <h4>${accommodationTypes[accommodationIndex]}</h4>
                    <p>${getAccommodationDescription(accommodationIndex)}</p>
                    <p><strong>Features:</strong> ${getAccommodationFeatures(accommodationIndex)}</p>
                    <p class="price">$${accommodationPrice.toFixed(2)}</p>
                </div>
            `;

        // Update transport details
        document.getElementById('transportDetails').innerHTML = `
                <div class="card">
                    <h4>${transportTypes[transportIndex]}</h4>
                    <p>${getTransportDescription(transportIndex)}</p>
                    <p><strong>Details:</strong> ${getTransportFeatures(transportIndex)}</p>
                    <p class="price">$${transportPrice.toFixed(2)}</p>
                </div>
            `;

        // Update price breakdown
        document.getElementById('accommodationTypeText').textContent = accommodationTypes[accommodationIndex];
        document.getElementById('transportTypeText').textContent = transportTypes[transportIndex];
        document.getElementById('accommodationPriceBreakdown').textContent = accommodationPrice.toFixed(2);
        document.getElementById('transportPriceBreakdown').textContent = transportPrice.toFixed(2);

        // Calculate and update total price
        const totalPrice = accommodationPrice + transportPrice + activitiesPrice + servicesFees;
        document.getElementById('totalPrice').textContent = totalPrice.toFixed(2);
    }

    function getAccommodationDescription(index) {
        const descriptions = [
            "Experience luxury during your stay with premium amenities and excellent service.",
            "Comfortable accommodation with good amenities and convenient location.",
            "Affordable accommodation with all basic necessities for a comfortable stay.",
            "Home-like comfort with private amenities and local experience."
        ];
        return descriptions[index] || descriptions[0];
    }

    function getAccommodationFeatures(index) {
        const features = [
            "Free WiFi, Breakfast included, Swimming pool, Fitness center, Room service",
            "Free WiFi, Breakfast available, 24-hour reception, Laundry service",
            "Free WiFi, 24-hour reception, Basic amenities",
            "Free WiFi, Full kitchen, Living area, Local host assistance"
        ];
        return features[index] || features[0];
    }

    function getTransportDescription(index) {
        const descriptions = [
            "Quick and convenient air travel to your destination.",
            "Comfortable train journey with scenic views.",
            "Flexible transportation with your own rental car.",
            "Affordable bus transportation with scheduled routes."
        ];
        return descriptions[index] || descriptions[0];
    }

    function getTransportFeatures(index) {
        const features = [
            "Direct flights available, 23kg baggage allowance, In-flight entertainment",
            "Reserved seating, Dining car, Onboard amenities",
            "Unlimited mileage, 24/7 roadside assistance, Full insurance",
            "Air conditioning, Scheduled stops, Free WiFi"
        ];
        return features[index] || features[0];
    }
</script>
</body>
</html>