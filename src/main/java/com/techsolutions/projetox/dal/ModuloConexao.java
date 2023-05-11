/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techsolutions.projetox.dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Rodrigo
 */
public class ModuloConexao {
    // método responsável pela conexão
    
    public static Connection conector(){
        
        java.sql.Connection conexao = null;
        
        String driver = "com.mysql.cj.jdbc.Driver";
        
        String url = "jdbc:mysql://localhost:3306/dbinfox";
                
        String user = "root";
                
        String password = "senha";
                
        try{
    Class.forName(driver);
    conexao = DriverManager.getConnection(url, user, password);
    return conexao;
        } catch (ClassNotFoundException | SQLException e){
            System.out.println(e);
            return null;
        }
        
    }
    
}
