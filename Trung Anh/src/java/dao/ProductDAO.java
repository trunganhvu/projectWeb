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
import model.product;

/**
 *
 * @author Tomm
 */
public class ProductDAO {
    public ArrayList<product> getListProductByCategory(long category_id) throws SQLException {
        Connection connection = DBConnect.getConnection() ;
        String sql = "SELECT * FROM product WHERE category_id = '" + category_id + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<product> list = new ArrayList<>();
        while (rs.next()) {
            product product = new product();
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
            list.add(product);
        }
        return list;
    }
    //hien thi thong tin chi tiet san pham
    public product getProduct(long productID) throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM product WHERE product_id = '" + productID + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        product product = new product();
        while (rs.next()) {
            product.setProductID(rs.getLong("product_id"));
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductPrice(rs.getDouble("product_price"));
            product.setProductDescription(rs.getString("product_description"));
        }
        return product;
    }
    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();
//        for (product p : dao.getListProductByCategory(1)){
//            System.out.println(p.getProductID() + "-" +p.getProductName());
//        }
        System.out.println(dao.getProduct(3).getProductName());
    }
}
