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
public class BookedRoom implements Serializable{
    private Room room;
    private float price;
    private String receiveTime,returnTime;
    OrderItem[] orderItem;

    public BookedRoom(Room room, float price, String receiveTime, String returnTime, OrderItem[] orderItem) {
        this.room = room;
        this.price = price;
        this.receiveTime = receiveTime;
        this.returnTime = returnTime;
        this.orderItem = orderItem;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setReceiveTime(String receiveTime) {
        this.receiveTime = receiveTime;
    }

    public void setReturnTime(String returnTime) {
        this.returnTime = returnTime;
    }

    public void setOrderItem(OrderItem[] orderItem) {
        this.orderItem = orderItem;
    }

    public Room getRoom() {
        return room;
    }

    public float getPrice() {
        return price;
    }

    public String getReceiveTime() {
        return receiveTime;
    }

    public String getReturnTime() {
        return returnTime;
    }

    public OrderItem[] getOrderItem() {
        return orderItem;
    }
    
}
