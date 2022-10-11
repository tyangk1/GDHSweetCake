package com.gdhsweetcakejavafinal.dao.client.impl;

import com.gdhsweetcakejavafinal.dao.client.IContact;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.client.Comment;
import com.gdhsweetcakejavafinal.model.client.StoreBranch;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ContactDao implements IContact {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    @Override
    public List<StoreBranch> getListStoreBranch() {
        conn = DBConnect.getConnect();
        String sql = "select * from chinhanhch ";
        List<StoreBranch> list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                StoreBranch sb = new StoreBranch();
                sb.setIdStoreBranch(rs.getString("MaChiNhanh"));
                sb.setDistrictName(rs.getString("TenQuan"));
                sb.setAddress(rs.getString("DiaChi"));
                sb.setSDT(rs.getString("SoDienThoai"));
                sb.setEmail(rs.getString("Email"));
                list.add(sb);
            }
            ps.close();
            rs.close();
        } catch (SQLException e) {
            Logger.getLogger(ContactDao.class.getName()).log(Level.SEVERE, null, e);
        }

        return list;
    }
    @Override
    public boolean addComment(Comment comments) {
        String  sql = "INSERT INTO lienhegopy(HoTen, Email,LoiGopY) VALUES (?,?,?)";
        conn = DBConnect.getConnect();
        try {
            ps= conn.prepareStatement(sql);
            ps.setString(1,comments.getName());
            ps.setString(2,comments.getEmai());
            ps.setString(3,comments.getComments());

            return ps.executeUpdate()>0;
        } catch (SQLException e) {
            System.err.println("Có lỗi không gửi được!"+ e.getMessage());
        }
        finally {
            try{
                if(conn!= null){
                    conn.close();
                }
            }catch (SQLException e){
                e.printStackTrace();
            }
        }
        return false;
    }
}