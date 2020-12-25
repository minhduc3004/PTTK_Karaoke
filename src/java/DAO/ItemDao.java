/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Item;
import com.mysql.cj.jdbc.PreparedStatementWrapper;
import com.mysql.cj.xdevapi.PreparableStatement;
import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author DucVu
 */
public class ItemDao extends DAO{

    public ItemDao() {
    }
    public static ArrayList<Item> getListItem(String name){
        System.out.println("In DAO:" +name);
        ArrayList<Item> res = new ArrayList<Item>();
        int index=0;
        String sql = "SELECT * FROM pttk.item "
                +   "WHERE item.name LIKE ? ";
        try{
            String key = "%" +name+"%";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, key);
            System.out.println(ps);
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
                Item tmp = new Item();
                tmp.setId(rs.getInt("id"));
                tmp.setName(rs.getString("name"));
                tmp.setDess(rs.getString("describer"));
                tmp.setPrice(rs.getFloat("price"));
                tmp.setType(rs.getString("type"));
                res.add(tmp);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return res;
    }
    
    public static Item getItembyId(int id){
        Item res = new Item();
        String sql ="SELECT * FROM pttk.item "
                +   "WHERE item.id = ? ; ";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,""+id);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                res.setId(rs.getInt("id"));
                res.setName(rs.getString("name"));
                res.setPrice(rs.getFloat("price"));
                res.setType(rs.getString("type"));
                res.setDess(rs.getString("describer"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return res;
    }
    
    public void update(Item item){
        System.out.println(item.toString());
        String sql="UPDATE pttk.item " +
        "SET type = ?, describer = ?, name = ? , price = ? " +
        "WHERE item.id = ? ;";
        try{
            this.conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,item.getType());
            ps.setString(2,item.getDess());
            ps.setString(3,item.getName());
            ps.setString(4,item.getPrice()+"");
            ps.setString(5,item.getId()+"");
            System.out.println(ps);
            ps.executeUpdate();
            this.conn.commit();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public void deleteItem(int id){
        String sql="DELETE from pttk.item WHERE item.id = ? ;";
        try{
            this.conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,id+"");
            ps.executeUpdate();
            this.conn.commit();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    public void add(Item item){
        String sql = "INSERT INTO pttk.item (name,type,describer,price)"
                + " VALUES ( ?, ?, ?, ? ) ";
        try{
            this.conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,item.getName());
            ps.setString(2,item.getType());
            ps.setString(3,item.getDess());
            ps.setString(4,item.getPrice()+"");
            ps.executeUpdate();
            this.conn.commit();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
