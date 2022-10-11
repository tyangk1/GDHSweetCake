package com.gdhsweetcakejavafinal.dao.client.impl;

import com.gdhsweetcakejavafinal.dao.client.IBlog;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.client.Blog;
import com.gdhsweetcakejavafinal.model.client.Comment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BlogDao implements IBlog {
    Connection conn = null;
    PreparedStatement ps = null;
    @Override
    public List<Blog> getListBlog() {
        conn = DBConnect.getConnect();
        String sql = "select * from blog";
        List<Blog> listBlog = new ArrayList<>();
        try{
            ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Blog blog = new Blog();
                blog.setId(rs.getString("MaBlog"));
                blog.setContent(rs.getString("NoiDung"));
                listBlog.add(blog);
            }
            ps.close();
            rs.close();
        }catch (SQLException e) {
            Logger.getLogger(BlogDao.class.getName()).log(Level.SEVERE, null, e);
        }
        return listBlog;
    }

    public static void main(String[] args) {
        BlogDao bd = new BlogDao();
        List<Blog> list = bd.getListBlog();
        for (Blog b : list
             ) {
            System.out.println(b);
        }
    }

}
