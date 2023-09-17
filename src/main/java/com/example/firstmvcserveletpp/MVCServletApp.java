package com.example.firstmvcserveletpp;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="loginServlet", value = "/login")
public class MVCServletApp extends HttpServlet {


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String userId = request.getParameter("userId");
        String pswd = request.getParameter("pswd");
        LoginService loginService = new LoginService();
        boolean authenticated = loginService.authenticate(userId,pswd);
        if(authenticated){
//            response.sendRedirect("success.jsp");   //if you want to pass on the request object newly to a new jsp page
            RequestDispatcher requestDispatcher  = request.getRequestDispatcher("success.jsp"); /* this is done in order to pass the
            request and response object internally between the servlet */

            try {

                requestDispatcher.forward(request,response);
            }catch (Exception e){
                throw new RuntimeException("cannot forwarded the call",e);
            }
        }
        else{
            response.sendRedirect("failure.jsp");
        }
    }
}
