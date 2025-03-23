<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/index.html" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <style>
        * {
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
            /*margin: 0;*/
            /*padding: 0;*/
        }

        body {
            background-color: #f4f4f4;
        }

        /* Navbar */
        .navbar {
            width: 100%;
            background-color: #222;
            color: white;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar .logo {
            font-size: 22px;
            font-weight: bold;
            margin-left: 20px;
        }

        .navbar .nav-links {
            margin-right: 20px;
        }

        .navbar .nav-links a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-size: 16px;
            font-weight: bold;
        }

        /* Contact Us Bar */
        .contact-bar {
            width: 100%;
            background-color: #ff9800; /* New color */
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 24px;
            font-weight: bold;
        }

        /* Centering Form */
        .container {
            width: 100%;
            max-width: 600px;
            margin: 40px auto;
        }

        /* Form Box */
        .form-container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Form Inputs */
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        textarea {
            height: 100px;
        }

        /* Submit Button */
        .btn-submit {
            width: 100%;
            background-color: #ff9800;
            color: white;
            border-radius: 5px;
            padding: 10px;
            font-size: 18px;
            font-weight: bold;
            border: none;
            cursor: pointer;
        }

        .btn-submit:hover {
            background-color: #cc7a00;
        }

    </style>
</head>
<body>

<!-- Contact Us Bar -->
<div class="contact-bar">
    Contact Us
</div>

<!-- Contact Form -->
<div class="container">
    <div class="form-container">
        <form action="<%= request.getContextPath() %>/ContactUs" method="post">
            <input type="text" name="fname" placeholder="First Name" required>
            <input type="text" name="lname" placeholder="Last Name" required>
            <input type="email" name="email" placeholder="Email Address" required>
            <input type="number" name="phone" placeholder="Contact No." required>
            <textarea name="message" placeholder="Message" required></textarea>
            <button type="submit" class="btn-submit">Submit</button>
        </form>
    </div>
</div>

</body>
</html>
