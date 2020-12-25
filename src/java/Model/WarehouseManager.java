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
public class WarehouseManager extends Staff implements Serializable {

    public WarehouseManager() {
    }

    public WarehouseManager(String position, int id, String name, String address, String phone, String email, String username, String password, String role) {
        super(position, id, name, address, phone, email, username, password, role);
    }

}
