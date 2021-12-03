/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kasapp.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author agungFikri
 */
public class DatabaseConfig {
   private static final String URL = "jdbc:mysql://localhost:3306/dbkas";
   private static final String DRIVER = "com.mysql.jdbc.Driver";
   private static final String USERNAME = "root";
   private static final String PASSWORD = "";
   private static Connection connection = null;
   
   public static Connection openConnection(){
       try {
           if(connection != null && !connection.isClosed()){
               return connection;
           } else {
               try {
                   Class.forName(DRIVER);
                   connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
               }catch(ClassNotFoundException | SQLException e){
                   System.out.println("error connection"+e.getMessage());
               }
               return connection;
           }
       } catch (SQLException ex){
           try {
               Class.forName(DRIVER);
               connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
           }catch(ClassNotFoundException | SQLException e){
                   System.out.println("error connection"+e.getMessage());
           }
           return connection;
        }
   }
}
