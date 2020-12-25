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
public class OrderItem implements Serializable{
    private int id;
    private Item item;
    private float price;
    private int quantity;
    private float total;

    public OrderItem() {
    }

    public OrderItem(int id, Item item, float price, int quantity, float total) {
        this.id = id;
        this.item = item;
        this.price = price;
        this.quantity = quantity;
        this.total = total;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public Item getItem() {
        return item;
    }

    public float getPrice() {
        return price;
    }

    public int getQuantity() {
        return quantity;
    }

    public float getTotal() {
        return total;
    }

    
    
}
