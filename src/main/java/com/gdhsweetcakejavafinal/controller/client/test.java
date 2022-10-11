package com.gdhsweetcakejavafinal.controller.client;

import com.gdhsweetcakejavafinal.dao.client.impl.BlogDao;
import com.gdhsweetcakejavafinal.dao.client.impl.ContactDao;
import com.gdhsweetcakejavafinal.dao.client.impl.IndexDao;
import com.gdhsweetcakejavafinal.dao.client.impl.ProductDao;
import com.gdhsweetcakejavafinal.model.OrderDetails;
import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.client.Blog;
import com.gdhsweetcakejavafinal.model.client.ProductCL;
import com.gdhsweetcakejavafinal.model.client.StoreBranch;

import java.util.List;

public class test {
    public static void main(String[] args) {
        IndexDao pd = new IndexDao();
        List<OrderDetails> list= pd.getListPSelling();

        for (OrderDetails p : list){
            System.out.println(p);
        }

    }
}
