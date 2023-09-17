<%@ page import="java.net.URLEncoder" %>
<html>

<head><title>Confirmation</title></head>

<%
    final int defaultCookieDuration = 60*60*24;
    // read form data
    String favOccupation = request.getParameter("occupation");
    favOccupation = URLEncoder.encode(favOccupation,"UTF-8");

    // create the cookie
    Cookie theCookie = new Cookie("myApp.favoriteOccupation", favOccupation);

    // set the life span ... total number of seconds (yuk!)
    theCookie.setMaxAge(defaultCookieDuration);    // <-- for a day

    // send cookie to browser
    response.addCookie(theCookie);
%>
<body>

Thanks! We set your favorite occupation to: <%=favOccupation%>

<br/><br/>

<a href="cookies-homepage.jsp">Return to personalized home page with your favourite occupation.</a>

</body>

</html>








