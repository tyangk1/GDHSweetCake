package com.gdhsweetcakejavafinal.dao.client.impl;


import com.gdhsweetcakejavafinal.dao.client.IIntroduce;
import com.gdhsweetcakejavafinal.db.DBConnect;
import com.gdhsweetcakejavafinal.model.client.Chef;
import com.gdhsweetcakejavafinal.model.client.Introduce;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class IntroduceDao implements IIntroduce {

    @Override
    public List<Introduce> getListIntroduce() {
        Connection connection = DBConnect.getConnect();
        String sql ="SELECT * FROM gioithieu where gioithieu.MaGT='GT02'";
        List<Introduce> list= new ArrayList<Introduce>();
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Introduce introduce = new Introduce();
                introduce.setId(rs.getString("MaGT"));
                introduce.setContent(rs.getString("Noidung"));
                list.add(introduce);
            }
            ps.close();
            rs.close();
        }catch (SQLException ex){
            Logger.getLogger(IntroduceDao.class.getName()).log(Level.SEVERE,null,ex);
        }
        return list;
    }

    @Override
    public List<Chef> getListChef() {
        Connection connection = DBConnect.getConnect();
        String sql ="select * from daubep";
        List<Chef> listChef = new ArrayList<Chef>();
        try{
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Chef db = new Chef();
                db.setIdDB(rs.getString("MaDB"));
                db.setNameDB(rs.getString("TenDB"));
                db.setImg(rs.getString("LinkHinhAnh"));
                db.setPosition(rs.getString("ChucVu"));
                listChef.add(db);
            }
            ps.close();
            rs.close();
        }catch (SQLException ex){
            Logger.getLogger(IntroduceDao.class.getName()).log(Level.SEVERE,null,ex);
        }
        return listChef;

    }
}
