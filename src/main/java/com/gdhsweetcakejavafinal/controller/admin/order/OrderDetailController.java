package com.gdhsweetcakejavafinal.controller.admin.order;

import com.gdhsweetcakejavafinal.model.Order;
import com.gdhsweetcakejavafinal.model.OrderDetails;
import com.gdhsweetcakejavafinal.service.admin.impl.OrderDetailService;
import com.gdhsweetcakejavafinal.service.admin.impl.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "OrderDetail", value = "/admin/order-detail")
public class OrderDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String id  = request.getParameter("idOrder");
//            List<Order> orderList =  OrderService.getInstance().getListOrder();
            List<OrderDetails> orderList= OrderDetailService.getInstance().getListOrderDetail(id);
//            System.out.println(orderList.size());
            request.setAttribute("orderList", orderList);
            request.setAttribute("idOrder", id);

            request.getRequestDispatcher("/view/admin/admin-chi-tiet-don-hang.jsp").forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }
}
