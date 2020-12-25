/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author DucVu
 */
public class ItemStatDetails extends Item{
    private String date;
    private int quantity;
    private long total;

    public ItemStatDetails() {
    }

    public ItemStatDetails(String date, int quantity, long total, int id, String name, String type, String dess, float price) {
        super(id, name, type, dess, price);
        this.date = date;
        this.quantity = quantity;
        this.total = total;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public String getDate() {
        return date;
    }

    public int getQuantity() {
        return quantity;
    }

    public long getTotal() {
        return total;
    }
    
}
