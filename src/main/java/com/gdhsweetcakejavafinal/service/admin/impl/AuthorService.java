package com.gdhsweetcakejavafinal.service.admin.impl;


import com.gdhsweetcakejavafinal.service.admin.IAuthorService;
import com.gdhsweetcakejavafinal.dao.admin.impl.AuthorDao;
import com.gdhsweetcakejavafinal.model.Admin;


import java.sql.SQLException;
import java.util.List;

public class AuthorService implements IAuthorService {
    private static AuthorService authorService;
    private AuthorDao dao;

    public AuthorService() {
        this.dao = new AuthorDao();
    }
    public static AuthorService getInstance(){
        if(authorService== null){
            authorService= new AuthorService();
        }
        return authorService;
    }
    public List<Admin> getListAuthor() throws SQLException {
        return dao.getListAuthor();
    }

    @Override
    public boolean addAuthor(Admin admin) {
        return dao.addAuthor(admin);
    }

    @Override
    public boolean delete(String id) {
        return dao.delete(id);
    }

    @Override
    public boolean updateAccount(Admin admin) {
        return dao.updateAccount(admin);
    }

    @Override
    public Admin getAccountById(String id) {
        return dao.getAccountById(id);
    }


}
