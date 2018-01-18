package com.fpt.test;/*
  By Chi Can Em  18-01-2018
 */


import java.sql.*;

public class ExampleConnectDataBase {

    private Connection testconnect() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection connection = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DatabaseName=ProductDB", "sa", "123456");
            return connection;
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        ExampleConnectDataBase exampleConnectDataBase = new ExampleConnectDataBase();
        Connection connection = exampleConnectDataBase.testconnect();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM dbo.Product");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                System.out.println(resultSet.getString(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
