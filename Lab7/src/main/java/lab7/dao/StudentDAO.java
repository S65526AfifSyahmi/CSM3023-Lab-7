/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab7.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import lab7.model.Student;

/**
 *
 * @author Ahmad Afif Syahmi bin Ahmad Rozali
 */
public class StudentDAO {
    
    private String jdbcurl = "jdbc:mysql://localhost:3306/csm3023lab7";
    private String username = "root";
    private String password = "admin";
    
    private static final String INSERT_STUDENT = "INSERT INTO student VALUES (?, ?)";
    private static final String SELECT_STUDENT_BY_ID = "SELECT * FROM student WHERE studID = ?";
    
    protected Connection getConnection() {
        
        Connection connection = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcurl, username, password);
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        
        return connection;
        
    }
    
    public boolean insertStudent(Student student) throws SQLException {
        
        boolean isSuccess = false;
        
        try {
            Connection connection = getConnection();
            
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_STUDENT);
            preparedStatement.setString(1, student.getStudID());
            preparedStatement.setString(2, student.getStudName());
            
            isSuccess = preparedStatement.executeUpdate() > 0;
            
            connection.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        
        return isSuccess;
        
    }
    
    public Student selectStudentByID(int studID) {
        
        Student student = null;
        
        try {
            Connection connection = getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_STUDENT_BY_ID);

            preparedStatement.setInt(1, studID);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            if (rs.next()) {
                student.setStudID(rs.getString("studID"));
                student.setStudName(rs.getString("studName"));
            }
            
            connection.close();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        
        return student;
        
    }
    
}