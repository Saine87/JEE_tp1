package com.polito.tp1.beans;

import org.joda.time.DateTime;

public class Command {

    private DateTime date;
    private Integer  ammount;
    private String   paymentMode;
    private String   deliveryMode;
    private String   deliveryStatus;

    public DateTime getDate() {
        return date;
    }

    public void setDate( DateTime date2 ) {
        this.date = date2;
    }

    public Integer getAmmount() {
        return ammount;
    }

    public void setAmmount( Integer ammount ) {
        this.ammount = ammount;
    }

    public String getPaymentMode() {
        return paymentMode;
    }

    public void setPaymentMode( String paymentMode ) {
        this.paymentMode = paymentMode;
    }

    public String getDeliveryMode() {
        return deliveryMode;
    }

    public void setDeliveryMode( String deliveryMode ) {
        this.deliveryMode = deliveryMode;
    }

    public String getDeliveryStatus() {
        return deliveryStatus;
    }

    public void setDeliveryStatus( String deliveryStatus ) {
        this.deliveryStatus = deliveryStatus;
    }

}
