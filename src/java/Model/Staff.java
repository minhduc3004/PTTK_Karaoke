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
public class Staff extends User implements Serializable{
    private String position;

    public Staff() {
    }

    
    public Staff(String position, int id, String name, String address, String phone, String email, String username, String password, String role) {
        super(id, name, address, phone, email, username, password, role);
        this.position = position;
    }

    

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
    
}
