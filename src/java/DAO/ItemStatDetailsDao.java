/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.ItemStatDetails;
import java.util.ArrayList;
import java.sql.*;
/**
 *
 * @author DucVu
 */
public class ItemStatDetailsDao extends DAO {
    public ArrayList<ItemStatDetails> getTKRieng(String start, String end, int id) {
        ArrayList<ItemStatDetails> res = new ArrayList<ItemStatDetails>();
        String sql = "select booking.paymentDate as Ngay, orderitem.id as Id, item.name as name,orderitem.price as gia, orderitem.quantity as LuongTieuThu, (orderitem.price*orderitem.quantity) as DoanhThu "
                + "from orderitem "
                + "left join booking "
                + "on orderitem.Booking_id=booking.id, item "
                + "where booking.paymentDate >= ? and booking.paymentDate <= ? and orderitem.Item_id=item.id and orderitem.Item_id = ? "
                + "order by DoanhThu desc ";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, start);
            ps.setString(2, end);
            ps.setString(3, id + "");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ItemStatDetails tmp = new ItemStatDetails();
                tmp.setId(rs.getInt("Id"));
                tmp.setPrice(rs.getFloat("gia"));
                tmp.setQuantity(rs.getInt("LuongTieuThu"));
                tmp.setTotal((long)rs.getFloat("DoanhThu"));
                tmp.setDate(rs.getString("Ngay"));
                res.add(tmp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
}
