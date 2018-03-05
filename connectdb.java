/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Bhushan
 */
public class connectdb {
    Connection conn = null;
    Statement stmt = null;
    
    public connectdb() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/userdb?user=root");
            stmt = conn.createStatement();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(connectdb.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(connectdb.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ResultSet FetchData(String qry){
        ResultSet rs = null;
        try {
            rs = stmt.executeQuery(qry);
        } catch (SQLException ex) {
            Logger.getLogger(connectdb.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    
    public Boolean insert(String qry){
        Boolean ret = false;
        try {
            if(stmt.executeUpdate(qry)>0){
                ret = true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(connectdb.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret;
    }
    
}
