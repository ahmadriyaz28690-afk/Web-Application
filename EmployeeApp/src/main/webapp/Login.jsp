<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Login</title>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
    }

    body {
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background: linear-gradient(135deg, #667eea, #764ba2);
    }

    .login-container {
        background-color: #fff;
        padding: 40px 35px;
        border-radius: 12px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        width: 360px;
        text-align: center;
        animation: fadeIn 0.8s ease-in-out;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: scale(0.95); }
        to { opacity: 1; transform: scale(1); }
    }

    h2 {
        color: #333;
        margin-bottom: 25px;
        font-size: 24px;
    }

    .input-field {
        width: 100%;
        margin-bottom: 18px;
        position: relative;
    }

    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 10px 15px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
        outline: none;
        transition: 0.3s ease;
    }

    input[type="email"]:focus,
    input[type="password"]:focus {
        border-color: #667eea;
        box-shadow: 0 0 6px rgba(102, 126, 234, 0.4);
    }

    input[type="submit"] {
        width: 100%;
        background-color: #667eea;
        color: #fff;
        font-size: 16px;
        font-weight: 600;
        padding: 10px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: 0.3s ease;
        margin-top: 10px;
    }

    input[type="submit"]:hover {
        background-color: #5a67d8;
        box-shadow: 0 4px 10px rgba(102, 126, 234, 0.4);
        transform: translateY(-2px);
    }

    .forgot {
        margin-top: 15px;
        font-size: 13px;
        color: #666;
    }

    .forgot a {
        color: #667eea;
        text-decoration: none;
        transition: 0.3s;
    }

    .forgot a:hover {
        text-decoration: underline;
    }

    .footer {
        margin-top: 20px;
        font-size: 12px;
        color: #aaa;
    }
</style>
</head>
<body>
    <div class="Login-container">
    <h4 style='color:red'>${msg}</h4>
        <h2>Employee Login</h2>
        <form action="Login" method="post">
            <div class="input-field">
                <input type="email" name="email" placeholder="Enter Email" required>
            </div>
            <div class="input-field">
                <input type="password" name="password" placeholder="Enter Password" required>
            </div>
            <input type="submit" value="Login">
        </form>

        <div class="extra-link">
            <p>Don't have an account <a href="employee.html">Sign Up </a></p>
        </div>

        <div class="footer">
            © 2025 Employee Management System
        </div>
    </div>
</body>
</html>
