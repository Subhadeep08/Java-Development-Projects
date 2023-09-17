<%@ page import="java.net.URLDecoder" %>
<%@ page import="java.net.URLEncoder" %>
<html>

<body>
<h3>Training Portal</h3>

<!-- read the favorite programming language cookie -->
<%
    // the default ... if there are no cookies
    String favOccupation = "defaultJob";

    // get the cookies from the browser request
    Cookie[] theCookies = request.getCookies();

    // find our favorite language cookie
    if (theCookies != null) {

        for (Cookie tempCookie : theCookies) {

            if ("myApp.favoriteOccupation".equals(tempCookie.getName())) {
                favOccupation = URLDecoder.decode(tempCookie.getValue());
                break;
            }
        }
    }
%>

<!-- now show a personalized page ... use the "favLang" variable -->

<!-- show new books for this lang -->
<h4>New Tutorials for <%= favOccupation %></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<h4>Latest News Reports for <%= favOccupation %></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<h4>Hot Jobs for <%= favOccupation %></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>
</body>

</html>











