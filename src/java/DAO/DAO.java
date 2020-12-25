/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author DucVu
 */
import java.sql.Connection;
import java.sql.DriverManager;
 
public class DAO {
public static Connection conn;
     
    public DAO(){
        if(conn == null){
            String dbUrl = "jdbc:mysql://localhost:3306/pttk?autoReconnect=true&useSSL=false";
            String dbClass = "com.mysql.jdbc.Driver";
 
            try {
                Class.forName(dbClass);
                conn = DriverManager.getConnection (dbUrl, "root", "minhduc3004");
            }catch(Exception e) {
                e.printStackTrace();
            }
        }
    }
    
}
