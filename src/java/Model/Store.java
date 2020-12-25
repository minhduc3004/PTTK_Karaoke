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
public class Store implements Serializable{
    private int id;
    private String name,address,desc;
    Staff[] staff;

    public Store(int id, String name, String address, String desc, Staff[] staff) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.desc = desc;
        this.staff = staff;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getAddress() {
        return address;
    }

    public String getDesc() {
        return desc;
    }

    public Staff[] getStaff() {
        return staff;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public void setStaff(Staff[] staff) {
        this.staff = staff;
    }
    
}
