<%--<%@ page import="java.util.*" %>--%>
<%--<%@ page import="java.sql.*" %>--%>
<%--<%@ page import="java.io.*" %>--%>

<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>
<%--    <meta charset="UTF-8">--%>
<%--    <meta name="viewport" content="width=device-width, initial-scale=1.0">--%>
<%--    <title>Reservation</title>--%>
<%--    <style>--%>
<%--        body {--%>
<%--            margin: 0;--%>
<%--            padding: 0;--%>
<%--            background: #1A1A1A;--%>
<%--            color: #FFD800;--%>
<%--            font-family: 'Poppins', sans-serif;--%>
<%--        }--%>
<%--        .title {--%>
<%--            background: #000;--%>
<%--            color: #FFCC00;--%>
<%--            height: 100px;--%>
<%--            width: 90%;--%>
<%--            margin: 40px auto;--%>
<%--            border-radius: 12px;--%>
<%--            display: flex;--%>
<%--            align-items: center;--%>
<%--            justify-content: center;--%>
<%--            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);--%>
<%--            transition: 0.3s ease-in-out;--%>
<%--        }--%>
<%--        .title:hover {--%>
<%--            transform: translateY(-5px);--%>
<%--            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.25);--%>
<%--        }--%>
<%--        .title h1 {--%>
<%--            font-size: 48px;--%>
<%--            text-transform: uppercase;--%>
<%--            margin: 0;--%>
<%--        }--%>
<%--        .trip-overview {--%>
<%--            background: #000;--%>
<%--            color: #FFD800;--%>
<%--            padding: 20px;--%>
<%--            width: 90%;--%>
<%--            margin: 0 auto;--%>
<%--            border-radius: 12px;--%>
<%--        }--%>
<%--        .trip-details {--%>
<%--            display: grid;--%>
<%--            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));--%>
<%--            gap: 20px;--%>
<%--        }--%>
<%--        .form-group {--%>
<%--            display: flex;--%>
<%--            flex-direction: column;--%>
<%--        }--%>
<%--        label {--%>
<%--            margin-bottom: 8px;--%>
<%--            font-weight: 600;--%>
<%--        }--%>
<%--        select, input[type="date"] {--%>
<%--            padding: 10px;--%>
<%--            border-radius: 6px;--%>
<%--            border: none;--%>
<%--            outline: none;--%>
<%--            font-size: 16px;--%>
<%--        }--%>
<%--        select:focus, input[type="date"]:focus {--%>
<%--            box-shadow: 0 0 0 2px #FFD800;--%>
<%--        }--%>
<%--        .button-container {--%>
<%--            grid-column: 1 / -1;--%>
<%--            display: flex;--%>
<%--            justify-content: center;--%>
<%--            margin-top: 20px;--%>
<%--        }--%>
<%--        #submit {--%>
<%--            padding: 14px 28px;--%>
<%--            background: #FFD800;--%>
<%--            color: #1A1A1A;--%>
<%--            border: none;--%>
<%--            border-radius: 10px;--%>
<%--            font-size: 18px;--%>
<%--            font-weight: 600;--%>
<%--            cursor: pointer;--%>
<%--            transition: 0.3s ease-in-out;--%>
<%--            min-width: 200px;--%>
<%--        }--%>
<%--        #submit:hover {--%>
<%--            background: #FFCC00;--%>
<%--            box-shadow: 0 6px 15px rgba(255, 204, 0, 0.5);--%>
<%--            transform: translateY(-3px);--%>
<%--        }--%>
<%--        #submit:active {--%>
<%--            transform: translateY(0);--%>
<%--            box-shadow: 0 4px 10px rgba(255, 204, 0, 0.3);--%>
<%--        }--%>
<%--        /* Styling for the result table */--%>
<%--        table {--%>
<%--            width: 90%;--%>
<%--            margin: 30px auto;--%>
<%--            border-collapse: collapse;--%>
<%--            background: #000;--%>
<%--            color: #FFD800;--%>
<%--            border-radius: 8px;--%>
<%--            overflow: hidden;--%>
<%--        }--%>
<%--        th, td {--%>
<%--            padding: 12px;--%>
<%--            text-align: center;--%>
<%--            border-bottom: 1px solid #FFD800;--%>
<%--        }--%>
<%--        th {--%>
<%--            background: #FFD800;--%>
<%--            color: #1A1A1A;--%>
<%--        }--%>
<%--        tr:hover {--%>
<%--            background: rgba(255, 255, 255, 0.1);--%>
<%--        }--%>
<%--        .search-results {--%>
<%--            background: #000;--%>
<%--            color: #FFD800;--%>
<%--            width: 90%;--%>
<%--            margin: 30px auto;--%>
<%--            border-radius: 12px;--%>
<%--            padding: 20px;--%>
<%--            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);--%>
<%--        }--%>
<%--        .search-results h2 {--%>
<%--            text-align: center;--%>
<%--            margin-top: 0;--%>
<%--            margin-bottom: 20px;--%>
<%--            font-size: 24px;--%>
<%--        }--%>
<%--        .search-summary {--%>
<%--            background: rgba(255, 216, 0, 0.1);--%>
<%--            padding: 15px;--%>
<%--            border-radius: 8px;--%>
<%--            margin-bottom: 20px;--%>
<%--        }--%>
<%--        .search-summary ul {--%>
<%--            margin: 10px 0;--%>
<%--            padding-left: 20px;--%>
<%--        }--%>
<%--        .reset-button {--%>
<%--            padding: 10px 20px;--%>
<%--            background: #333;--%>
<%--            color: #FFD800;--%>
<%--            border: 1px solid #FFD800;--%>
<%--            border-radius: 8px;--%>
<%--            cursor: pointer;--%>
<%--            transition: 0.3s;--%>
<%--            margin-top: 15px;--%>
<%--        }--%>
<%--        .reset-button:hover {--%>
<%--            background: #444;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div class="title">--%>
<%--    <h1>Reservation</h1>--%>
<%--</div>--%>

<%--<form method="post" id="tripForm">--%>
<%--    <div class="trip-overview">--%>
<%--        <div class="trip-details">--%>

<%--            <!-- From -->--%>
<%--            <div class="form-group">--%>
<%--                <label for="trip-from">From</label>--%>
<%--                <select name="tripFrom" id="trip-from">--%>
<%--                    <option value="">Select From</option>--%>
<%--                    <option>Mumbai</option>--%>
<%--                    <option>Bengaluru</option>--%>
<%--                    <option>Delhi</option>--%>
<%--                    <option>Hyderabad</option>--%>
<%--                    <option>Chennai</option>--%>
<%--                    <option>Kolkata</option>--%>
<%--                    <option>Pune</option>--%>
<%--                    <option>Ahmedabad</option>--%>
<%--                </select>--%>
<%--            </div>--%>

<%--            <!-- To -->--%>
<%--            <div class="form-group">--%>
<%--                <label for="trip-to">To</label>--%>
<%--                <select name="tripTo" id="trip-to">--%>
<%--                    <option value="">Select To</option>--%>
<%--                    <option>Goa</option>--%>
<%--                    <option>Pondicherry</option>--%>
<%--                    <option>Manali</option>--%>
<%--                    <option>Jaipur</option>--%>
<%--                    <option>Kovalam</option>--%>
<%--                    <option>Udaipur</option>--%>
<%--                    <option>Agra</option>--%>
<%--                    <option>Leh</option>--%>
<%--                    <option>Shimla</option>--%>
<%--                    <option>Darjeeling</option>--%>
<%--                    <option>Kochi</option>--%>
<%--                    <option>Mysuru</option>--%>
<%--                </select>--%>
<%--            </div>--%>

<%--            <!-- Trip Type -->--%>
<%--            <div class="form-group">--%>
<%--                <label for="trip-type">Trip Type</label>--%>
<%--                <select name="tripType" id="trip-type">--%>
<%--                    <option value="">Select trip type</option>--%>
<%--                    <option>Business Trip</option>--%>
<%--                    <option>Summer Vacation</option>--%>
<%--                    <option>Spring Vacation</option>--%>
<%--                    <option>Winter Vacation</option>--%>
<%--                    <option>Others</option>--%>
<%--                </select>--%>
<%--            </div>--%>

<%--            <!-- Trip Start Date -->--%>
<%--            <div class="form-group">--%>
<%--                <label for="start-date">Start Date</label>--%>
<%--                <input type="date" name="startDate" id="start-date">--%>
<%--            </div>--%>

<%--            <!-- Trip End Date -->--%>
<%--            <div class="form-group">--%>
<%--                <label for="end-date">End Date</label>--%>
<%--                <input type="date" name="endDate" id="end-date">--%>
<%--            </div>--%>

<%--            <!-- Number of Travelers -->--%>
<%--            <div class="form-group">--%>
<%--                <label for="travelers">Number of Travelers</label>--%>
<%--                <select name="travelers" id="travelers">--%>
<%--                    <option value="">Select group</option>--%>
<%--                    <option>Kids (1-8 years) - 1</option>--%>
<%--                    <option>Kids (1-8 years) - 2</option>--%>
<%--                    <option>Kids (1-8 years) - 3</option>--%>
<%--                    <option>Teens (8-18 years) - 1</option>--%>
<%--                    <option>Teens (8-18 years) - 2</option>--%>
<%--                    <option>Teens (8-18 years) - 3</option>--%>
<%--                    <option>Adults (18+ years) - 1</option>--%>
<%--                    <option>Adults (18+ years) - 2</option>--%>
<%--                    <option>Adults (18+ years) - 3</option>--%>
<%--                    <option>Adults (18+ years) - 4+</option>--%>
<%--                </select>--%>
<%--            </div>--%>

<%--        </div>--%>

<%--        <!-- Submit Button -->--%>
<%--        <div class="button-container">--%>
<%--            <button type="submit" id="submit">Submit</button>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</form>--%>

<%--<%--%>
<%--    // Getting form parameters--%>
<%--    String tripType = request.getParameter("tripType");--%>
<%--    String tripFrom = request.getParameter("tripFrom");--%>
<%--    String tripTo = request.getParameter("tripTo");--%>
<%--    String startDate = request.getParameter("startDate");--%>
<%--    String endDate = request.getParameter("endDate");--%>
<%--    String travelers = request.getParameter("travelers");--%>

<%--    // Check if form has been submitted (any of the key parameters are present)--%>
<%--    boolean formSubmitted =--%>
<%--            (tripType != null && !tripType.trim().isEmpty()) ||--%>
<%--                    (tripFrom != null && !tripFrom.trim().isEmpty()) ||--%>
<%--                    (tripTo != null && !tripTo.trim().isEmpty());--%>

<%--    if (formSubmitted) {--%>
<%--%>--%>
<%--<!-- Display search results -->--%>
<%--<div class="search-results">--%>
<%--    <h2>Trip Search Results</h2>--%>

<%--    <div class="search-summary">--%>
<%--        <h3>Your Search Criteria:</h3>--%>
<%--        <ul>--%>
<%--            <% if (tripFrom != null && !tripFrom.trim().isEmpty()) { %>--%>
<%--            <li>From: <%= tripFrom %></li>--%>
<%--            <% } %>--%>
<%--            <% if (tripTo != null && !tripTo.trim().isEmpty()) { %>--%>
<%--            <li>To: <%= tripTo %></li>--%>
<%--            <% } %>--%>
<%--            <% if (tripType != null && !tripType.trim().isEmpty()) { %>--%>
<%--            <li>Trip Type: <%= tripType %></li>--%>
<%--            <% } %>--%>
<%--            <% if (startDate != null && !startDate.trim().isEmpty()) { %>--%>
<%--            <li>Start Date: <%= startDate %></li>--%>
<%--            <% } %>--%>
<%--            <% if (endDate != null && !endDate.trim().isEmpty()) { %>--%>
<%--            <li>End Date: <%= endDate %></li>--%>
<%--            <% } %>--%>
<%--            <% if (travelers != null && !travelers.trim().isEmpty()) { %>--%>
<%--            <li>Travelers: <%= travelers %></li>--%>
<%--            <% } %>--%>
<%--        </ul>--%>
<%--        <button class="reset-button" onclick="resetForm()">Reset Search</button>--%>
<%--    </div>--%>

<%--    <%--%>
<%--        // JDBC Setup--%>
<%--        String url = "jdbc:mysql://localhost:3306/Travel-Iterinary";--%>
<%--        String name = "root";--%>
<%--        String password = "";--%>

<%--        Connection connection = null;--%>
<%--        PreparedStatement psmt = null;--%>
<%--        ResultSet rs = null;--%>

<%--        try {--%>
<%--            Class.forName("com.mysql.cj.jdbc.Driver");--%>
<%--            connection = DriverManager.getConnection(url, name, password);--%>

<%--            String query = "SELECT * FROM trips WHERE 1=1";--%>
<%--            if (tripType != null && !tripType.isEmpty()) {--%>
<%--                query += " AND Trip_Type = ?";--%>
<%--            }--%>
<%--            if (tripFrom != null && !tripFrom.isEmpty()) {--%>
<%--                query += " AND Trip_From LIKE ?";--%>
<%--            }--%>
<%--            if (tripTo != null && !tripTo.isEmpty()) {--%>
<%--                query += " AND Trip_To LIKE ?";--%>
<%--            }--%>
<%--            // Add date filtering if needed--%>
<%--            if (startDate != null && !startDate.isEmpty()) {--%>
<%--                query += " AND Trip_StartDate >= ?";--%>
<%--            }--%>
<%--            if (endDate != null && !endDate.isEmpty()) {--%>
<%--                query += " AND Trip_EndDate <= ?";--%>
<%--            }--%>

<%--            psmt = connection.prepareStatement(query);--%>

<%--            int i = 1;--%>
<%--            if (tripType != null && !tripType.isEmpty()) {--%>
<%--                psmt.setString(i++, tripType);--%>
<%--            }--%>
<%--            if (tripFrom != null && !tripFrom.isEmpty()) {--%>
<%--                psmt.setString(i++, "%" + tripFrom + "%");--%>
<%--            }--%>
<%--            if (tripTo != null && !tripTo.isEmpty()) {--%>
<%--                psmt.setString(i++, "%" + tripTo + "%");--%>
<%--            }--%>
<%--            if (startDate != null && !startDate.isEmpty()) {--%>
<%--                psmt.setDate(i++, java.sql.Date.valueOf(startDate));--%>
<%--            }--%>
<%--            if (endDate != null && !endDate.isEmpty()) {--%>
<%--                psmt.setDate(i++, java.sql.Date.valueOf(endDate));--%>
<%--            }--%>

<%--            rs = psmt.executeQuery();--%>

<%--            // Display results as a table with your nice styling--%>
<%--    %>--%>
<%--    <table>--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>Trip ID</th>--%>
<%--            <th>From</th>--%>
<%--            <th>To</th>--%>
<%--            <th>Trip Type</th>--%>
<%--            <th>Start Date</th>--%>
<%--            <th>End Date</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <%--%>
<%--            boolean hasResults = false;--%>
<%--            while (rs.next()) {--%>
<%--                hasResults = true;--%>
<%--        %>--%>
<%--        <tr>--%>
<%--            <td><%= rs.getInt("Trip_ID") %></td>--%>
<%--            <td><%= rs.getString("Trip_From") %></td>--%>
<%--            <td><%= rs.getString("Trip_To") %></td>--%>
<%--            <td><%= rs.getString("Trip_Type") %></td>--%>
<%--            <td><%= rs.getDate("Trip_StartDate") %></td>--%>
<%--            <td><%= rs.getDate("Trip_EndDate") %></td>--%>
<%--        </tr>--%>
<%--        <%--%>
<%--            }--%>

<%--            if (!hasResults) {--%>
<%--        %>--%>
<%--        <tr>--%>
<%--            <td colspan="6">No matching trips found. Please try different search criteria.</td>--%>
<%--        </tr>--%>
<%--        <%--%>
<%--            }--%>
<%--        %>--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--    <%--%>
<%--    } catch (SQLException e) {--%>
<%--    %>--%>
<%--    <div style="color: #FF6B6B; background: rgba(255, 0, 0, 0.1); padding: 15px; border-radius: 8px; margin-top: 20px;">--%>
<%--        <p>Database Error: <%= e.getMessage() %></p>--%>
<%--    </div>--%>
<%--    <%--%>
<%--    } catch (Exception e) {--%>
<%--    %>--%>
<%--    <div style="color: #FF6B6B; background: rgba(255, 0, 0, 0.1); padding: 15px; border-radius: 8px; margin-top: 20px;">--%>
<%--        <p>Error: <%= e.getMessage() %></p>--%>
<%--    </div>--%>
<%--    <%--%>
<%--        } finally {--%>
<%--            try {--%>
<%--                if (rs != null) rs.close();--%>
<%--                if (psmt != null) psmt.close();--%>
<%--                if (connection != null) connection.close();--%>
<%--            } catch (SQLException e) {--%>
<%--                // Silently handle closing errors--%>
<%--            }--%>
<%--        }--%>
<%--    %>--%>
<%--</div><!-- End search-results div -->--%>
<%--<% } %>--%>

<%--<script>--%>
<%--    function resetForm() {--%>
<%--        document.getElementById('tripForm').reset();--%>
<%--        window.location.href = window.location.pathname; // reload without query params--%>
<%--    }--%>
<%--</script>--%>

<%--</body>--%>
<%--</html>--%>

<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservation</title>
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
        .trip-overview {
            background: #000;
            color: #FFD800;
            padding: 20px;
            width: 90%;
            margin: 0 auto;
            border-radius: 12px;
        }
        .trip-details {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 20px;
        }
        .form-group {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-bottom: 8px;
            font-weight: 600;
        }
        select, input[type="date"] {
            padding: 10px;
            border-radius: 6px;
            border: none;
            outline: none;
            font-size: 16px;
        }
        select:focus, input[type="date"]:focus {
            box-shadow: 0 0 0 2px #FFD800;
        }
        .button-container {
            grid-column: 1 / -1;
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        #submit {
            padding: 14px 28px;
            background: #FFD800;
            color: #1A1A1A;
            border: none;
            border-radius: 10px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s ease-in-out;
            min-width: 200px;
        }
        #submit:hover {
            background: #FFCC00;
            box-shadow: 0 6px 15px rgba(255, 204, 0, 0.5);
            transform: translateY(-3px);
        }
        #submit:active {
            transform: translateY(0);
            box-shadow: 0 4px 10px rgba(255, 204, 0, 0.3);
        }
        /* Styling for the result table */
        table {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
            background: #000;
            color: #FFD800;
            border-radius: 8px;
            overflow: hidden;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #FFD800;
        }
        th {
            background: #FFD800;
            color: #1A1A1A;
        }
        tr:hover {
            background: rgba(255, 255, 255, 0.1);
        }
        .search-results {
            background: #000;
            color: #FFD800;
            width: 90%;
            margin: 30px auto;
            border-radius: 12px;
            padding: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }
        .search-results h2 {
            text-align: center;
            margin-top: 0;
            margin-bottom: 20px;
            font-size: 24px;
        }
        .search-summary {
            background: rgba(255, 216, 0, 0.1);
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
        }
        .search-summary ul {
            margin: 10px 0;
            padding-left: 20px;
        }
        .reset-button {
            padding: 10px 20px;
            background: #333;
            color: #FFD800;
            border: 1px solid #FFD800;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 15px;
        }
        .reset-button:hover {
            background: #444;
        }
        .action-button {
            padding: 10px 20px;
            background: #FFD800;
            color: #1A1A1A;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
            margin: 5px;
        }
        .action-button:hover {
            background: #FFCC00;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
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
    </style>
</head>
<body>

<!-- Navigation Bar -->
<div class="navigation">
    <div class="nav-logo">TravelEase</div>
    <div class="nav-links">
        <a href="index.jsp">Home</a>
        <a href="reservation.jsp" class="active">Reservation</a>
        <a href="itinerary-details.jsp">Itinerary</a>
        <a href="transport-options.jsp">Transport</a>
        <a href="accommodation.jsp">Stays</a>
        <a href="activities.jsp">Activities</a>
    </div>
</div>

<div class="title">
    <h1>Reservation</h1>
</div>

<form method="post" id="tripForm" action="reservation.jsp">
    <div class="trip-overview">
        <div class="trip-details">

            <!-- From -->
            <div class="form-group">
                <label for="trip-from">From</label>
                <select name="tripFrom" id="trip-from">
                    <option value="">Select From</option>
                    <option>Mumbai</option>
                    <option>Bengaluru</option>
                    <option>Delhi</option>
                    <option>Hyderabad</option>
                    <option>Chennai</option>
                    <option>Kolkata</option>
                    <option>Pune</option>
                    <option>Ahmedabad</option>
                </select>
            </div>

            <!-- To -->
            <div class="form-group">
                <label for="trip-to">To</label>
                <select name="tripTo" id="trip-to">
                    <option value="">Select To</option>
                    <option>Goa</option>
                    <option>Pondicherry</option>
                    <option>Manali</option>
                    <option>Jaipur</option>
                    <option>Kovalam</option>
                    <option>Udaipur</option>
                    <option>Agra</option>
                    <option>Leh</option>
                    <option>Shimla</option>
                    <option>Darjeeling</option>
                    <option>Kochi</option>
                    <option>Mysuru</option>
                </select>
            </div>

            <!-- Trip Type -->
            <div class="form-group">
                <label for="trip-type">Trip Type</label>
                <select name="tripType" id="trip-type">
                    <option value="">Select trip type</option>
                    <option>Business Trip</option>
                    <option>Summer Vacation</option>
                    <option>Spring Vacation</option>
                    <option>Winter Vacation</option>
                    <option>Others</option>
                </select>
            </div>

            <!-- Trip Start Date -->
            <div class="form-group">
                <label for="start-date">Start Date</label>
                <input type="date" name="startDate" id="start-date">
            </div>

            <!-- Trip End Date -->
            <div class="form-group">
                <label for="end-date">End Date</label>
                <input type="date" name="endDate" id="end-date">
            </div>

            <!-- Number of Travelers -->
            <div class="form-group">
                <label for="travelers">Number of Travelers</label>
                <select name="travelers" id="travelers">
                    <option value="">Select group</option>
                    <option>Kids (1-8 years) - 1</option>
                    <option>Kids (1-8 years) - 2</option>
                    <option>Kids (1-8 years) - 3</option>
                    <option>Teens (8-18 years) - 1</option>
                    <option>Teens (8-18 years) - 2</option>
                    <option>Teens (8-18 years) - 3</option>
                    <option>Adults (18+ years) - 1</option>
                    <option>Adults (18+ years) - 2</option>
                    <option>Adults (18+ years) - 3</option>
                    <option>Adults (18+ years) - 4+</option>
                </select>
            </div>

        </div>

        <!-- Submit Button -->
        <div class="button-container">
            <button type="submit" id="submit">Find Trips</button>
        </div>
    </div>
</form>

<%
    // Getting form parameters
    String tripType = request.getParameter("tripType");
    String tripFrom = request.getParameter("tripFrom");
    String tripTo = request.getParameter("tripTo");
    String startDate = request.getParameter("startDate");
    String endDate = request.getParameter("endDate");
    String travelers = request.getParameter("travelers");

    // Check if form has been submitted (any of the key parameters are present)
    boolean formSubmitted =
            (tripType != null && !tripType.trim().isEmpty()) ||
                    (tripFrom != null && !tripFrom.trim().isEmpty()) ||
                    (tripTo != null && !tripTo.trim().isEmpty());

    if (formSubmitted) {
%>
<!-- Display search results -->
<div class="search-results">
    <h2>Available Trip Options</h2>

    <div class="search-summary">
        <h3>Your Search Criteria:</h3>
        <ul>
            <% if (tripFrom != null && !tripFrom.trim().isEmpty()) { %>
            <li>From: <%= tripFrom %></li>
            <% } %>
            <% if (tripTo != null && !tripTo.trim().isEmpty()) { %>
            <li>To: <%= tripTo %></li>
            <% } %>
            <% if (tripType != null && !tripType.trim().isEmpty()) { %>
            <li>Trip Type: <%= tripType %></li>
            <% } %>
            <% if (startDate != null && !startDate.trim().isEmpty()) { %>
            <li>Start Date: <%= startDate %></li>
            <% } %>
            <% if (endDate != null && !endDate.trim().isEmpty()) { %>
            <li>End Date: <%= endDate %></li>
            <% } %>
            <% if (travelers != null && !travelers.trim().isEmpty()) { %>
            <li>Travelers: <%= travelers %></li>
            <% } %>
        </ul>
        <button class="reset-button" onclick="resetForm()">Reset Search</button>
    </div>

    <%
        // JDBC Setup
        String url = "jdbc:mysql://localhost:3306/Travel-Iterinary";
        String name = "root";
        String password = "";

        Connection connection = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, name, password);

            String query = "SELECT * FROM trips WHERE 1=1";
            if (tripType != null && !tripType.isEmpty()) {
                query += " AND Trip_Type = ?";
            }
            if (tripFrom != null && !tripFrom.isEmpty()) {
                query += " AND Trip_From LIKE ?";
            }
            if (tripTo != null && !tripTo.isEmpty()) {
                query += " AND Trip_To LIKE ?";
            }
            // Add date filtering if needed
            if (startDate != null && !startDate.isEmpty()) {
                query += " AND Trip_StartDate >= ?";
            }
            if (endDate != null && !endDate.isEmpty()) {
                query += " AND Trip_EndDate <= ?";
            }

            psmt = connection.prepareStatement(query);

            int i = 1;
            if (tripType != null && !tripType.isEmpty()) {
                psmt.setString(i++, tripType);
            }
            if (tripFrom != null && !tripFrom.isEmpty()) {
                psmt.setString(i++, "%" + tripFrom + "%");
            }
            if (tripTo != null && !tripTo.isEmpty()) {
                psmt.setString(i++, "%" + tripTo + "%");
            }
            if (startDate != null && !startDate.isEmpty()) {
                psmt.setDate(i++, java.sql.Date.valueOf(startDate));
            }
            if (endDate != null && !endDate.isEmpty()) {
                psmt.setDate(i++, java.sql.Date.valueOf(endDate));
            }

            rs = psmt.executeQuery();

            // Display results as a table with your nice styling
    %>
    <table>
        <thead>
        <tr>
            <th>Trip ID</th>
            <th>From</th>
            <th>To</th>
            <th>Trip Type</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%
            boolean hasResults = false;
            while (rs.next()) {
                hasResults = true;
                int tripId = rs.getInt("Trip_ID");
        %>
        <tr>
            <td><%= tripId %></td>
            <td><%= rs.getString("Trip_From") %></td>
            <td><%= rs.getString("Trip_To") %></td>
            <td><%= rs.getString("Trip_Type") %></td>
            <td><%= rs.getDate("Trip_StartDate") %></td>
            <td><%= rs.getDate("Trip_EndDate") %></td>
            <td>
                <form action="itinerary-details.jsp" method="post">
                    <input type="hidden" name="tripId" value="<%= tripId %>">
                    <input type="hidden" name="tripFrom" value="<%= rs.getString("Trip_From") %>">
                    <input type="hidden" name="tripTo" value="<%= rs.getString("Trip_To") %>">
                    <input type="hidden" name="tripType" value="<%= rs.getString("Trip_Type") %>">
                    <input type="hidden" name="startDate" value="<%= rs.getDate("Trip_StartDate") %>">
                    <input type="hidden" name="endDate" value="<%= rs.getDate("Trip_EndDate") %>">
                    <input type="hidden" name="travelers" value="<%= travelers %>">
                    <button type="submit" class="action-button">Create Itinerary</button>
                </form>
            </td>
        </tr>
        <%
            }

            if (!hasResults) {
        %>
        <tr>
            <td colspan="7">No matching trips found. Please try different search criteria.</td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
    <%
    } catch (SQLException e) {
    %>
    <div style="color: #FF6B6B; background: rgba(255, 0, 0, 0.1); padding: 15px; border-radius: 8px; margin-top: 20px;">
        <p>Database Error: <%= e.getMessage() %></p>
    </div>
    <%
    } catch (Exception e) {
    %>
    <div style="color: #FF6B6B; background: rgba(255, 0, 0, 0.1); padding: 15px; border-radius: 8px; margin-top: 20px;">
        <p>Error: <%= e.getMessage() %></p>
    </div>
    <%
        } finally {
            try {
                if (rs != null) rs.close();
                if (psmt != null) psmt.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                // Silently handle closing errors
            }
        }
    %>
</div><!-- End search-results div -->
<% } %>

<script>
    function resetForm() {
        document.getElementById('tripForm').reset();
        window.location.href = window.location.pathname; // reload without query params
    }
</script>

</body>
</html>