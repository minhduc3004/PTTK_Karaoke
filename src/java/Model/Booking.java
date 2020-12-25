/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;

/**
 *
 * @author DucVu
 */
public class Booking implements Serializable{
    private String paymentType, paymentDate;
    private float total;
    private Receptionist recep;
    private Customer custom;
    private BookedRoom[] bookedRoom;

    public Booking(String paymentType, String paymentDate, float total, Receptionist recep, Customer custom, BookedRoom[] bookedRoom) {
        this.paymentType = paymentType;
        this.paymentDate = paymentDate;
        this.total = total;
        this.recep = recep;
        this.custom = custom;
        this.bookedRoom = bookedRoom;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public void setPaymentDate(String paymentDate) {
        this.paymentDate = paymentDate;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public void setRecep(Receptionist recep) {
        this.recep = recep;
    }

    public void setCustom(Customer custom) {
        this.custom = custom;
    }

    public void setBookedRoom(BookedRoom[] bookedRoom) {
        this.bookedRoom = bookedRoom;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public String getPaymentDate() {
        return paymentDate;
    }

    public float getTotal() {
        return total;
    }

    public Receptionist getRecep() {
        return recep;
    }

    public Customer getCustom() {
        return custom;
    }

    public BookedRoom[] getBookedRoom() {
        return bookedRoom;
    }
    
}
