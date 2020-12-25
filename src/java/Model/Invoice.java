/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author DucVu
 */
public class Invoice implements Serializable {
    private int id;
    private ArrayList<ItemInvoice> itemInvoice;
    private WarehouseManager manager;
    private Supplier suppp;
    private long total;
    private float sale;
    private String date;

    public Invoice() {
        this.itemInvoice=new ArrayList<ItemInvoice>();
        this.manager=new WarehouseManager();
        this.sale=0;
        this.total=0;
        this.suppp=new Supplier();
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Invoice(int id, ArrayList<ItemInvoice> itemInvoice, WarehouseManager manager, Supplier suppp, long total, float sale, String date) {
        this.id = id;
        this.itemInvoice = itemInvoice;
        this.manager = manager;
        this.suppp = suppp;
        this.total = total;
        this.sale = sale;
        this.date = date;
    }

    public String getDate() {
        return date;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setItemInvoice(ArrayList<ItemInvoice> itemInvoice) {
        this.itemInvoice = itemInvoice;
    }

    public void setManager(WarehouseManager manager) {
        this.manager = manager;
    }

    public void setSuppp(Supplier suppp) {
        this.suppp = suppp;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public void setSale(float sale) {
        this.sale = sale;
    }

    public int getId() {
        return id;
    }

    public ArrayList<ItemInvoice> getItemInvoice() {
        return itemInvoice;
    }

    public WarehouseManager getManager() {
        return manager;
    }

    public Supplier getSuppp() {
        return suppp;
    }

    public long getTotal() {
        return total;
    }

    public float getSale() {
        return sale;
    }


    @Override
    public String toString() {
        return "Invoice{" + "itemInvoice=" + itemInvoice.size() + ", manager=" + manager + ", suppp=" + suppp + ", total=" + total + ", sale=" + sale + '}';
    }   
    
    public void addItem(ItemInvoice item){
        this.itemInvoice.add(item);
    }

   
    
}
