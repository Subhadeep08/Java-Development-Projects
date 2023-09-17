<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>WELCOME TO THE LOGIN PAGE !!!!</title>
</head>
<body>

<br/><br/> <h3>Please enter the below information:</h3>

<br/><br/>

<form action="login" method="POST">
    <br/><br/>UserId: <input type="text" name="userId"/>
    <br/><br/>Password: <input type="text" name="pswd"/>
    <br/>
    <label>
        <select name="country">
            <option value="India">India</option>
            <option value="USA">USA</option>
            <option value="UK">UK</option>
            <option value="Germany">Germany</option>
            <option value="France">France</option>
        </select>
    </label>

    <br/> <input type="submit"/>
</form>

<br/>
</body>
</html>