/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Supplier;
import java.util.ArrayList;
import java.sql.*;
/**
 *
 * @author DucVu
 */
public class SuppDao extends DAO {
    public ArrayList<Supplier> getListSupp(String name){
       ArrayList<Supplier> res=new ArrayList<Supplier>();
       String sql="SELECT * FROM pttk.supplier "
                +   "WHERE supplier.name LIKE ? ";
       try{
           PreparedStatement ps = conn.prepareStatement(sql);
           ps.setString(1,"%"+name+"%");
           System.out.println(ps);
           ResultSet rs = ps.executeQuery();
           while(rs.next()){
               Supplier tmp = new Supplier();
               tmp.setId(rs.getInt("id"));
               tmp.setName(rs.getString("name"));
               tmp.setAddress(rs.getString("address"));
               tmp.setPhone(rs.getString("phone"));
               tmp.setDesc(rs.getString("describer"));
               res.add(tmp);
           }
       }catch(Exception e){
           e.printStackTrace();
       }
       return res;
    }
    public void addSupp(Supplier supp){
        String sql = "INSERT INTO pttk.supplier (name,address,phone,describer)"
                + " VALUES ( ?, ?, ?, ? ) ";
        try{
            this.conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,supp.getName());
            ps.setString(2,supp.getAddress());
            ps.setString(3,supp.getPhone());
            ps.setString(4,supp.getDesc());
            ps.executeUpdate();
            this.conn.commit();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
