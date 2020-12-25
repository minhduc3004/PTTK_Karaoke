/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.DAO.conn;
import Model.Invoice;
import Model.ItemInvoice;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DucVu
 */
public class InvoiceDao extends DAO{
    private ItemInvoiceDao itemInvoiceDao;
    public InvoiceDao() {
        itemInvoiceDao=new ItemInvoiceDao();
    }
    public void add(Invoice invoice){
        String sql = "INSERT INTO pttk.invoice (sale, Supplier_id,manager_id, time)"
                + " VALUES ( ?, ?, ?, ?) ";
        try{
            this.conn.setAutoCommit(false);
            itemInvoiceDao.conn.setAutoCommit(false);
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,invoice.getSale()+"");
            ps.setString(2,invoice.getSuppp().getId()+"");
            ps.setString(3,invoice.getManager().getId()+"");
            ps.setString(4,invoice.getDate());
            System.out.println(ps);
            ps.executeUpdate();
            ArrayList<ItemInvoice> listItem=invoice.getItemInvoice();
            System.out.println("So luong item: "+listItem.size());
            for(int i=0;i<listItem.size();i++){
                itemInvoiceDao.add(listItem.get(i));
            }
            this.conn.commit();
            itemInvoiceDao.conn.commit();
        }catch(Exception e){
            try {
                this.conn.rollback();
                itemInvoiceDao.conn.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            e.printStackTrace();
        }
        finally{
            try {
                this.conn.setAutoCommit(true);
                itemInvoiceDao.conn.setAutoCommit(true);
            } catch (SQLException ex) {
                Logger.getLogger(InvoiceDao.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
    }
    public static int getID(){
        int res=0;
        String sql="SELECT MAX(id) as MaxId FROM pttk.invoice ";
        try{
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                res=rs.getInt("MaxId");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        if(res==0) res=1;
        return res;
    }
}
