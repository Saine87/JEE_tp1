package com.polito.tp1.beans;

import org.joda.time.DateTime;

// TODO: Auto-generated Javadoc
/**
 * The Class Command.
 */
public class Command {

    /** The date. */
    private DateTime date;

    /** The ammount. */
    private Integer  ammount;

    /** The payment mode. */
    private String   paymentMode;

    /** The delivery mode. */
    private String   deliveryMode;

    /** The delivery status. */
    private String   deliveryStatus;

    /**
     * Gets the date.
     * 
     * @return the date
     */
    public DateTime getDate() {
        return date;
    }

    /**
     * Sets the date.
     * 
     * @param date2
     *            the new date
     */
    public void setDate( DateTime date2 ) {
        this.date = date2;
    }

    /**
     * Gets the ammount.
     * 
     * @return the ammount
     */
    public Integer getAmmount() {
        return ammount;
    }

    /**
     * Sets the ammount.
     * 
     * @param ammount
     *            the new ammount
     */
    public void setAmmount( Integer ammount ) {
        this.ammount = ammount;
    }

    /**
     * Gets the payment mode.
     * 
     * @return the payment mode
     */
    public String getPaymentMode() {
        return paymentMode;
    }

    /**
     * Sets the payment mode.
     * 
     * @param paymentMode
     *            the new payment mode
     */
    public void setPaymentMode( String paymentMode ) {
        this.paymentMode = paymentMode;
    }

    /**
     * Gets the delivery mode.
     * 
     * @return the delivery mode
     */
    public String getDeliveryMode() {
        return deliveryMode;
    }

    /**
     * Sets the delivery mode.
     * 
     * @param deliveryMode
     *            the new delivery mode
     */
    public void setDeliveryMode( String deliveryMode ) {
        this.deliveryMode = deliveryMode;
    }

    /**
     * Gets the delivery status.
     * 
     * @return the delivery status
     */
    public String getDeliveryStatus() {
        return deliveryStatus;
    }

    /**
     * Sets the delivery status.
     * 
     * @param deliveryStatus
     *            the new delivery status
     */
    public void setDeliveryStatus( String deliveryStatus ) {
        this.deliveryStatus = deliveryStatus;
    }

}
