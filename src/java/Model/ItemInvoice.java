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
public class ItemInvoice implements Serializable {
    private Item item;
    private int quantity;
    private float price,sale;
    private long total;
    private int invoiceId;

    public ItemInvoice() {
    }

    public ItemInvoice(Item item, int quantity, float price, float sale, long total, int invoiceId) {
        this.item = item;
        this.quantity = quantity;
        this.price = price;
        this.sale = sale;
        this.total = total;
        this.invoiceId = invoiceId;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public void setSale(float sale) {
        this.sale = sale;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public void setInvoiceId(int invoiceId) {
        this.invoiceId = invoiceId;
    }

    public Item getItem() {
        return item;
    }

    public int getQuantity() {
        return quantity;
    }

    public float getPrice() {
        return price;
    }

    public float getSale() {
        return sale;
    }

    public long getTotal() {
        return total;
    }

    public int getInvoiceId() {
        return invoiceId;
    }

    
    @Override
    public String toString() {
        return "ItemInvoice{" + "item=" + item.getName() + ", quantity=" + quantity + ", price=" + price + ", sale=" + sale + ", total=" + total + '}';
    }

   
}
