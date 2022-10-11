package com.gdhsweetcakejavafinal.dao.client.impl;

import com.gdhsweetcakejavafinal.dao.client.IFooter;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.client.OperateTime;
import com.gdhsweetcakejavafinal.model.client.Store;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FooterDao implements IFooter {

    @Override
    public List<OperateTime> getListTime() {
        Connection conn = DBConnect.getConnect();
        String sql = "select * from giolamviec ";
        List<OperateTime> listOperateTime = new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                OperateTime footer = new OperateTime();
                footer.setIdTime(rs.getString("MaGio"));
                footer.setContent(rs.getString("NoiDung"));
                listOperateTime.add(footer);
            }
            ps.close();
            rs.close();
        } catch (SQLException e) {
            Logger.getLogger(FooterDao.class.getName()).log(Level.SEVERE, null, e);
        }

        return listOperateTime;
    }

    @Override
    public List<Store> getListStore() {
        Connection conn = DBConnect.getConnect();
        String sql= "select * from tencuahang";
        List<Store> listStore= new ArrayList<>();
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Store store = new Store();
                store.setIdStore(rs.getString("MaTenCH"));
                store.setNameStore(rs.getString("TenCH"));
                store.setImg(rs.getString("LinkHinhAnh"));
                store.setContent(rs.getString("NoiDung"));
                listStore.add(store);
            }
            ps.close();
            rs.close();
        } catch (SQLException e) {
            Logger.getLogger(FooterDao.class.getName()).log(Level.SEVERE, null, e);
        }
        return listStore;
    }
}