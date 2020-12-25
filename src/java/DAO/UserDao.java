/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.User;
import java.sql.*;

/**
 *
 * @author DucVu
 */
public class UserDao extends DAO{

    public UserDao() {
        super();
    }
    
    public boolean checkLogin(User user){
        boolean result = false;
//        String sql = "SELECT pttk.user.id, pttk.user.name, pttk.user.address, pttk.user.email, pttk.user.phone , pttk.staff.position, pttk.customer.type "
//                + "FROM pttk.user LEFT JOIN pttk.staff "
//                + "ON pttk.user.id = pttk.staff.user_id "
//                + "LEFT JOIN pttk.customer "
//                + "ON pttk.user.id = pttk.customer.user_id "
//                + "WHERE username = ? AND password = ?";
        String sql = "SELECT * From pttk.user "
                + "WHERE username = ? AND password = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            System.out.println(ps);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            System.out.println(ps);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setAddress(rs.getString("address"));
                user.setPhone(rs.getString("phone"));
                user.setEmail(rs.getString("email"));
                user.setRole(rs.getString("role"));
            }
//            System.out.println(user.getRole().toString());
            result = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
