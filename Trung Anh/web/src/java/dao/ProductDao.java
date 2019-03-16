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
import model.Product;

/**
 *
 * @author Administrator
 */
public class ProductDao {
    public ArrayList<Product> getListProductByCategory(long category_id) throws SQLException{
        Connection connection = DBConnect.getConnection();
        String sql = "select * from product where category_id = '" + category_id + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while(rs.next()){
            Product product = new Product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getInt("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
    public static void main(String[] args) throws SQLException {
        ProductDao dao = new ProductDao();
        for (Product p : dao.getListProductByCategory(2)){
            System.out.println(p.getProductID()+ "-" + p.getProductName());
        }
    }
}
