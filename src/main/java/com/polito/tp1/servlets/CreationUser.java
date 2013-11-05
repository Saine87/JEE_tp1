package com.polito.tp1.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.polito.tp1.beans.User;

public class CreationUser extends HttpServlet {

    private static final long   serialVersionUID = 1L;
    private static final String VIEW             = "/showUser.jsp";
    private static final String SUCCESS_MESSAGE  = "User created with succss";
    private static final String FAILURE_MESSAGE  = "Missing some field. <a href = \"createUser.jsp\" Click here </a> to access to access to the form";

    @Override
    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {

        User user = new User();
        String message;

        /* read parameter */
        String firstName = request.getParameter( "firstName" );
        String lastName = request.getParameter( "lastName" );
        String address = request.getParameter( "address" );
        String telephone = request.getParameter( "telephone" );
        String email = request.getParameter( "email" );

        message = this.checkParameters( firstName, address, telephone );

        user.setFirstName( firstName );
        user.setLastName( lastName );
        user.setAddress( address );
        user.setTelephone( telephone );
        user.setEmail( email );

        request.setAttribute( "user", user );
        request.setAttribute( "message", message );

        this.getServletContext().getRequestDispatcher( VIEW ).forward( request, response );
    }

    private String checkParameters( String firstName, String address, String telephone ) {
        try {
            if ( firstName.trim().isEmpty() || address.trim().isEmpty() || telephone.trim().isEmpty() )
                return FAILURE_MESSAGE;
            else
                return SUCCESS_MESSAGE;
        } catch ( NullPointerException npe ) {
            return FAILURE_MESSAGE;
        }

    }
}
