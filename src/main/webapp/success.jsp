<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>LOGIN SUCCESSFUL !!!</title>
</head>
<body>
<h3>LOGIN SUCCESSFUL !!!!</h3>

<br/><br/>

The user: ${param.get("userId")} got logged in  with userAgent:
<%= request.getLocale()%> and occupation: <%= request.getParameter("occupation")%> from country: ${param.get("country")}


<br/><br/>

<%-- <%--%>
<%--     String userAddedCookie = "defaultCountry";--%>
<%--     Cookie[] cookies = request.getCookies();--%>
<%--     if (cookies != null) {--%>
<%--         for (Cookie eachCookie : cookies) {--%>
<%--             if ("user.country.cookie".equals(eachCookie.getName())) {--%>
<%--                 userAddedCookie = eachCookie.getValue();--%>
<%--                 break;--%>
<%--             }--%>
<%--         }--%>
<%--     }--%>
<%--%>--%>

<br/><br/>

/*
Below are the JSTL tags which are collection of custom tags that provides us a set of standardized, reusable tags
for common tasks in JavaServer pages (JSP) development. JSTL simplifies JSP development by offering higher-level
abstractions for tasks like iteration, conditionals, formatting, and database access. It enhances the readability
and maintainability of JSP code by reducing the need for embedded Java code.
*/
<%--<jsp:useBean id="User" class="com.example.firstmvcserveletpp.User">--%>
<%--    <jsp:setProperty property="userName" value="JohnDoe" name="User"/>--%>
<%--</jsp:useBean>--%>

<%--<jsp:getProperty name="User" property="userName"/>--%>
<br/><br/>

<a href="login.jsp">Return to homepage.</a>

<br/>

<a href="cookies-personalize-form.html">Go to personalized homepage.</a>


</body>
</html>
