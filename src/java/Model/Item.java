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
public class Item implements Serializable {
    private int id;
    private String name, type, dess;
    private float price;

    public Item() {
    }
    
    public Item(int id, String name, String type, String dess, float price) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.dess = dess;
        this.price = price;
    }

    @Override
    public String toString() {
        return "Item{" + "id=" + id + ", name=" + name + ", type=" + type + ", dess=" + dess + ", price=" + price + '}';
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setDess(String dess) {
        this.dess = dess;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public String getDess() {
        return dess;
    }

    public float getPrice() {
        return price;
    }
    
}
