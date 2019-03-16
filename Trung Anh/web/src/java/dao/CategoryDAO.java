/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Category;

/**
 *
 * @author Administrator
 */
public class CategoryDAO {
    public ArrayList<Category> getListCategory() throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql = "select * from category";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Category> list = new ArrayList<>();
        while(rs.next()){
            Category ca = new Category();
            ca.setCategoryID(rs.getLong("category_id"));
            ca.setCategoryName(rs.getString("category_name"));
            list.add(ca);
            
        }
        return list;
    }
    public static void main(String[] args) throws SQLException {
        CategoryDAO dao = new CategoryDAO();
        for (Category ds : dao.getListCategory()){
            System.out.println(ds.getCategoryID() + "-" + ds.getCategoryName());
        }
    }
}
