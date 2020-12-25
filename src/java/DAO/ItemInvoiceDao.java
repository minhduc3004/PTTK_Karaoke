/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.ItemInvoice;
import java.sql.*;
/**
 *
 * @author DucVu
 */
public class ItemInvoiceDao extends DAO{

    public ItemInvoiceDao() {
    }
    
    public void add(ItemInvoice item){
        String sql = "INSERT INTO pttk.iteminvoice (quantity,price,sale,Item_id,Invoice_id)"
                + " VALUES ( ?, ?, ?, ?, ?) ";
        try{
            this.conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,item.getQuantity()+"");
            ps.setString(2,item.getItem().getPrice()+"");
            ps.setString(3,item.getSale()+"");
            ps.setString(4,item.getItem().getId()+"");
            ps.setString(5,item.getInvoiceId()+"");
            System.out.println(ps);
            ps.executeUpdate();
            this.conn.commit();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}
