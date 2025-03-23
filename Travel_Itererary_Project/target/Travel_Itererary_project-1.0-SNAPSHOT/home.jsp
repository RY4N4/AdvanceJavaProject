<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>PlanYourOuting - Home</title>
</head>
<style>
    * {
        /*margin: 0;*/
        /*padding: 0;*/
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        background-color: #f4f4f4;
    }

    .navbar {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 15px 20px;
        background-color: #222;
        color: white;
    }

    .logo {
        font-size: 1.5rem;
        font-weight: bold;
    }

    .nav-links {
        list-style: none;
        display: flex;
    }

    .nav-links li {
        margin: 0 15px;
    }

    .nav-links a {
        color: white;
        text-decoration: none;
        font-size: 1rem;
        transition: color 0.3s ease;
    }

    .nav-links a:hover {
        color: #ff9800;
    }

    .hamburger {
        display: none;
        flex-direction: column;
        cursor: pointer;
    }

    .hamburger span {
        width: 25px;
        height: 3px;
        background: white;
        margin: 4px;
        transition: 0.3s;
    }

    /* Responsive */
    @media screen and (max-width: 768px) {
        .nav-links {
            display: none;
            flex-direction: column;
            width: 100%;
            background: #222;
            position: absolute;
            top: 60px;
            left: 0;
            padding: 10px 0;
        }

        .nav-links.active {
            display: flex;
        }

        .hamburger {
            display: flex;
        }
    }

</style>
<body>

<!-- Include Navbar (copied from index.html) -->
<nav class="navbar">
    <div class="logo">Travel-Itinerary</div>
    <ul class="nav-links">
        <li><a href="home.jsp">Home</a></li>
        <li><a href="reservation.jsp">Reserve</a></li>
        <li><a href="about.jsp">About us</a></li>
        <li><a href="contactUS.jsp">Contact us</a></li>
    </ul>
</nav>

<h2>Home Page</h2>
<p>Will show some view stuff here.</p>

</body>
</html>
