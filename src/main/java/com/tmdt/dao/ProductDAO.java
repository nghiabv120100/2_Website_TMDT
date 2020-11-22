package com.tmdt.dao;

import com.tmdt.mapper.ProductMapper;
import com.tmdt.model.ProductModel;
import com.tmdt.service.ProductService;

import java.sql.*;
import java.util.List;

public class ProductDAO extends GenericDAO<ProductModel>{
//    public int save(ProductModel productModel){
//        ResultSet resultSet;
//        Connection connection =null;
//        PreparedStatement statement=null;
//        int id= -1;
//
//        String sql="Insert into Product(product_name,image,price,describe_pro,detail_cate_id) values(?,?,?,?,?)";
//                        //String sql ="DELETE into product where id=10";
//        try {
//            connection = getConnection();
//            connection.setAutoCommit(false);
//            statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
//            statement.setString(1, productModel.getProductName());
//            statement.setString(2, productModel.getImage());
//            statement.setDouble(3, productModel.getPrice());
//            statement.setString(4, productModel.getDescribePro());
//            statement.setInt(5, productModel.getDetailCateId());
//            statement.executeUpdate();
//            resultSet = statement.getGeneratedKeys();
//            if (resultSet.next()) {
//                id = resultSet.getInt(1);
//            }
//            connection.commit();
//        }
//        catch (SQLException e){
//            if(connection != null){
//                try {
//                    connection.rollback();
//                }
//                catch (SQLException ex){
//                    ex.printStackTrace();
//                }
//
//            e.printStackTrace();
//            return id;
//        }
//
//        }finally {
//            try {
//                if (connection != null) {
//                    connection.close();
//                }
//                if (statement != null) {
//                    statement.close();
//                }
//            }catch (SQLException ex){
//                ex.printStackTrace();
//            }
//
//        }
//        return id;
//    }
    public int save(ProductModel productModel){
        String sql="insert into Product(product_name,image,price,describe_pro,detail_cate_id) values(?,?,?,?,?)";
        return insert(sql,productModel.getProductName(),productModel.getImage()
                ,productModel.getPrice(),productModel.getDescribePro(),productModel.getDetailCateId());
    }
    public ProductModel findOne(int id){
        String sql="Select * from Product where id =?";
        List<ProductModel> products = query(sql,new ProductMapper(),id);
        return products.isEmpty() ? null : products.get(0);
    }
    public void update(ProductModel productModel){
        String sql="update Product set product_name=?,image=?,price=?,describe_pro=?,detail_cate_id=? where id=?";
        update(sql,productModel.getProductName(),productModel.getImage(),productModel.getPrice()
                ,productModel.getDescribePro(),productModel.getDetailCateId(),productModel.getId());
    }
    public void delete(int id){
        String sql="delete from Product where id=?";
        update(sql,id);
    }

}
