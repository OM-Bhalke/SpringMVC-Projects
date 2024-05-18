<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:orange;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        input[type="text"], input[type="email"], input[type="tel"], select, input[type="date"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 10px;
            outline: none;
        }
        input[type="submit"] {
            width: 25%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        
        input[type="reset"]{
          width: 25%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            }
            
        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            margin-top: 5px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Registration Form</h2>
        <form action="insert" onsubmit="return validateForm()">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>
            <div id="nameError" class="error"></div>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>
            <div id="emailError" class="error"></div>

            <label for="phoneNumber">Phone Number</label>
            <input type="tel" id="phoneNumber" name="phoneNumber" pattern="[0-9]{10}" required>
            <div id="phoneError" class="error"></div>

            <label for="dob">Date of Birth</label>
            <input type="date" id="dob" name="dob" required>
            <div id="dobError" class="error"></div>

            <label for="location">Location</label>
            <select id="location" name="location" required>
                <option value="">Select Location</option>
                <option value="Banglore">Banglore</option>
                <option value="Chennai">Chennai</option>
                <option value="Hyderabad">Hyderabad</option>
                <option value="New Delhi">New Delhi</option>
            </select>
            <div id="locationError" class="error"></div>
            
            <label for="document">Document</label>
            <input type="file" id="document" name="document" required><br><br>

            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>
    </div>

    <script>
        function validateForm() {
            var isValid = true;

            var name = document.getElementById("name").value.trim();
            var email = document.getElementById("email").value.trim();
            var phoneNumber = document.getElementById("phoneNumber").value.trim();
            var dob = new Date(document.getElementById("dob").value);
            var loc = document.getElementById("location").value.trim();

            document.getElementById("nameError").innerHTML = "";
            document.getElementById("emailError").innerHTML = "";
            document.getElementById("phoneError").innerHTML = "";
            document.getElementById("dobError").innerHTML = "";
            document.getElementById("locationError").innerHTML = "";

            if (name === "") {
                document.getElementById("nameError").innerHTML = "Please enter your name";
                isValid = false;
            }

            if (email === "" || !isValidEmail(email)) {
                document.getElementById("emailError").innerHTML = "Please enter a valid email address";
                isValid = false;
            }

            if (phoneNumber === "" || !isValidPhoneNumber(phoneNumber)) {
                document.getElementById("phoneError").innerHTML = "Please enter a valid phone number (10 digits)";
                isValid = false;
            }

            if (calculateAge(dob) < 18) {
                document.getElementById("dobError").innerHTML = "You must be at least 18 years old to register";
                isValid = false;
            }

            if (loc === "") {
                document.getElementById("locationError").innerHTML = "Please select a location";
                isValid = false;
            }

            return isValid;
        }

        function isValidEmail(email) {
            return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
        }

        function isValidPhoneNumber(phoneNumber) {
            return /^\d{10}$/.test(phoneNumber);
        }

        function calculateAge(birthday) {
            var today = new Date();
            var age = today.getFullYear() - birthday.getFullYear();
            var month = today.getMonth() - birthday.getMonth();
            if (month < 0 || (month === 0 && today.getDate() < birthday.getDate())) {
                age--;
            }
            return age;
        }
    </script>
</body>
</html>