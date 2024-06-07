/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab7.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Ahmad Afif Syahmi bin Ahmad Rozali
 */
public class DBConnection {
    
    private static Connection connection = null;
    private static String url = "jdbc:mysql://localhost:3306/csm3023lab7";
    private static String username = "root";
    private static String password = "admin";
    
    public static Connection getConnection() throws ClassNotFoundException {
        
        if (connection != null)
            return connection;
        
        else {
            try {
                // Establish and open MySQL database connection
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(url, username, password);
            }
            catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return connection;
        
    }
    
    public void closeConnection() throws ClassNotFoundException {
        
        try {
            connection.close();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
    
}