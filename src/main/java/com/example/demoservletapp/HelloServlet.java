package com.example.demoservletapp;

import java.io.*;
import javax.servlet.ServletContext;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
        ServletContext context = request.getServletContext();
        String userName = (String)request.getParameter("username");
        if(userName !=null){
            context.setAttribute("username",userName);
        }
        out.print("Context with savedUsername: "+context.getAttribute("username"));
    }

    public void destroy() {
    }
}