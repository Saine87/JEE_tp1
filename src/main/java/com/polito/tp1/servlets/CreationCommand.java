package com.polito.tp1.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;

import com.polito.tp1.beans.Command;
import com.polito.tp1.beans.User;

/**
 * Servlet implementation class CreationCommand
 */
public class CreationCommand extends HttpServlet {

    private static final long   serialVersionUID = 1L;
    private static final String VIEW             = "/showCommand.jsp";
    private static final String SUCCESS_MESSAGE  = "User  and command created with succss";
    private static final String FAILURE_MESSAGE  = "Missing some field. <a href=\"createUser.jsp\" Click here </a> to access to access to the form";

    @Override
    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {

        User user = new User();
        Command command = new Command();

        String message;

        /* read User parameter */
        String firstName = request.getParameter( "firstName" );
        String lastName = request.getParameter( "lastName" );
        String address = request.getParameter( "address" );
        String telephone = request.getParameter( "telephone" );
        String email = request.getParameter( "email" );

        /* read Command parameter */
        DateTime date = new DateTime();
        date.toString( DateTimeFormat.forPattern( "dd/MM:YYYY HH:mm:ss" ) );
        Integer ammount;
        try {
            ammount = Integer.parseInt( request.getParameter( "ammount" ) );
        } catch ( NumberFormatException nfe ) {
            ammount = -1;
        }
        String paymentMode = request.getParameter( "paymentMode" );
        String deliveryMode = request.getParameter( "deliveryMode" );
        String deliveryStatus = request.getParameter( "deliveryStatus" );

        message = this.checkParameters( firstName, address, telephone, ammount, deliveryMode, paymentMode );

        /* create User Attribute */
        user.setFirstName( firstName );
        user.setLastName( lastName );
        user.setAddress( address );
        user.setTelephone( telephone );
        user.setEmail( email );

        /* create Command Attribute */
        command.setDate( date );
        command.setAmmount( ammount );
        command.setPaymentMode( paymentMode );
        command.setDeliveryMode( deliveryMode );
        command.setDeliveryStatus( deliveryStatus );

        request.setAttribute( "user", user );
        request.setAttribute( "command", command );
        request.setAttribute( "message", message );

        this.getServletContext().getRequestDispatcher( VIEW ).forward( request, response );
    }

    private String checkParameters( String firstName, String address, String telephone, Integer ammount,
            String deliveryMode, String paymentMode ) {
        try {
            if ( firstName.trim().isEmpty() || address.trim().isEmpty() || telephone.trim().isEmpty()
                    || deliveryMode.trim().isEmpty() || paymentMode.trim().isEmpty() || ammount <= 0 )
                return FAILURE_MESSAGE;
            else
                return SUCCESS_MESSAGE;
        } catch ( NullPointerException npe ) {
            return FAILURE_MESSAGE;
        }

    }
}
