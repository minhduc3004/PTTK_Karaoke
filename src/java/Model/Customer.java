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
public class Customer extends User implements Serializable{
    private String type;

    public Customer() {
    }

    public Customer(String type, int id, String name, String address, String phone, String email, String username, String password, String role) {
        super(id, name, address, phone, email, username, password, role);
        this.type = type;
    }

    

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
}
