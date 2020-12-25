/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.ItemStat;
import Model.OrderItem;
import java.util.ArrayList;
import java.sql.*;

/**
 *
 * @author DucVu
 */
public class ItemStatDao extends DAO {

    public ItemStatDao() {
    }

    public ArrayList<ItemStat> getDSTK(String start, String end) {
        ArrayList<ItemStat> res = new ArrayList<ItemStat>();
        String sql = "select orderitem.Item_id as ItemId, item.name as name, sum(orderitem.quantity) as LuongTieuThu, sum(orderitem.price*orderitem.quantity) as DoanhThu "
                + "from orderitem "
                + "left join booking "
                + "on orderitem.Booking_id=booking.id, item "
                + "where booking.paymentDate >= ? and booking.paymentDate <= ? and orderitem.Item_id=item.id "
                + "group by orderitem.Item_id "
                + "order by DoanhThu desc ";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, start);
            ps.setString(2, end);
            System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ItemStat tmp = new ItemStat();
                tmp.setId(rs.getInt("ItemId"));
                tmp.setName(rs.getString("name"));
                tmp.setQuantity(rs.getInt("LuongTieuThu"));
                tmp.setTotal((long)rs.getFloat("DoanhThu"));
                res.add(tmp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

}
