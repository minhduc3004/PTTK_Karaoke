package Model;


import Model.Item;
import java.io.Serializable;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DucVu
 */
public class ItemStat extends Item implements Serializable{
    private int quantity;
    private long total;

    public ItemStat() {
    }

    public ItemStat(int quantity, long total, int id, String name, String type, String dess, float price) {
        super(id, name, type, dess, price);
        this.quantity = quantity;
        this.total = total;
    }

    public ItemStat(int id, String name, String type, String dess, float price) {
        super(id, name, type, dess, price);
    }

    public int getQuantity() {
        return quantity;
    }

    public long getTotal() {
        return total;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setTotal(long total) {
        this.total = total;
    }
    
}
