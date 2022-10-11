package com.gdhsweetcakejavafinal.controller.client;

import com.gdhsweetcakejavafinal.dao.client.impl.IndexDao;
import com.gdhsweetcakejavafinal.dao.client.impl.ProductDao;
import com.gdhsweetcakejavafinal.model.OrderDetails;
import com.gdhsweetcakejavafinal.model.client.Category;
import com.gdhsweetcakejavafinal.model.client.Chef;
import com.gdhsweetcakejavafinal.model.client.Introduce;
import com.gdhsweetcakejavafinal.model.client.ProductType;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "WelcomeController", value = "/welcome")
public class WelcomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IndexDao dao = new IndexDao();
        ProductDao pd = new ProductDao();
        List<Introduce> listI = dao.getListIntroduceIndex();
        List<Introduce> listA= dao.getListIntroduce();
        List<OrderDetails> listOD= dao.getListPSelling();
        List<ProductType> listT = pd.getAllProductType();
        List<Category> listC = pd.getCategory();


        request.setAttribute("listT", listT);
        request.setAttribute("listC", listC);
        request.setAttribute("listI",listI);
        request.setAttribute("listIA",listA);
        request.setAttribute("listOD", listOD);

        response.setContentType("text/html;charset=UTF-8");
        request.getRequestDispatcher("/view/client/index.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }
}
