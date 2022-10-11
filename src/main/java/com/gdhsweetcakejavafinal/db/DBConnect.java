package com.gdhsweetcakejavafinal.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    private static DBConnect dbConnect;
    private static Connection connection;
    private static final String DB_URL="jdbc:mysql://localhost:3308/gdhsweetcake?useUnicode=true&characterEncoding=utf-8";
    private static final String USER="root";
    private static  final String PASS="";

    public static Connection getConnect() {
        Connection connection = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3308/gdhsweetcake", "root", "");
            System.out.println("Kết nối thành công!");
        } catch (ClassNotFoundException | SQLException var2) {
            System.out.println("Kết nối thất bại!" + var2.getMessage());
        }
        return connection;
    }
    public static void main(String[] args) {
        System.out.println(getConnect());
    }

}