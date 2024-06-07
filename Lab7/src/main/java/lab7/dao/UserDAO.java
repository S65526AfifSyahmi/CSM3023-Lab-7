/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab7.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import lab7.model.User;

/**
 *
 * @author Ahmad Afif Syahmi bin Ahmad Rozali
 */
public class UserDAO {
    
    private Connection connection;
    
    private static final String INSERT_USER = "INSERT INTO users VALUES (?, ?, ?)";
    private static final String DELETE_USER = "DELETE FROM users WHERE userID = ?";
    private static final String UPDATE_USER = "UPDATE users SET firstname = ?, lastname = ? WHERE userID = ?";
    private static final String SELECT_ALL_USERS = "SELECT * FROM users";
    private static final String SELECT_USER_BY_ID = "SELECT * FROM users WHERE userID = ?";
    
    public UserDAO() throws ClassNotFoundException {
        connection = DBConnection.getConnection();
    }
    
    public void addUser(User user) {
        
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USER);
            
            // Parameters start with 1
            preparedStatement.setString(1, user.getUserID());
            preparedStatement.setString(2, user.getFirstname());
            preparedStatement.setString(3, user.getLastname());
            
            preparedStatement.executeUpdate();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
    
    public void deleteUser(String userID) {
        
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USER);
            
            preparedStatement.setString(1, userID);
            
            preparedStatement.executeUpdate();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
    
    public void updateUser(User user) {
        
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USER);
            
            // Parameters start with 1
            preparedStatement.setString(1, user.getFirstname());
            preparedStatement.setString(2, user.getLastname());
            preparedStatement.setString(3, user.getUserID());
            
            preparedStatement.executeUpdate();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
    
    public List<User> getAllUsers() {
        
        List<User> users = new ArrayList<>();
        
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            
            while ( resultSet.next() ) {
                User user = new User();
                user.setUserID(resultSet.getString("userID"));
                user.setFirstname(resultSet.getString("firstname"));
                user.setLastname(resultSet.getString("lastname"));
                
                users.add(user);
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        
        return users;
        
    }
    
    public User getUserByID(String userID) {
        
        User user = new User();
        
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);
            
            preparedStatement.setString(1, userID);
            
            ResultSet resultSet = preparedStatement.executeQuery();
            
            while ( resultSet.next() ) {
                user.setUserID(resultSet.getString("userID"));
                user.setFirstname(resultSet.getString("firstname"));
                user.setLastname(resultSet.getString("lastname"));
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        
        return user;
        
    }
    
}