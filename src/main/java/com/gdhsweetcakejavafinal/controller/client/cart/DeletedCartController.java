package com.gdhsweetcakejavafinal.controller.client.cart;


import com.gdhsweetcakejavafinal.model.client.CartDetail;
import com.gdhsweetcakejavafinal.model.client.CustomerCL;
import com.gdhsweetcakejavafinal.service.client.impl.CartDetailServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DeleteCartController", value = "/deletedSPCart")
public class DeletedCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession ss = request.getSession();
        String maSP = request.getParameter("maSPCart");

        if (ss.getAttribute("accountLogin") != null) {
            CustomerCL customerCL = (CustomerCL) ss.getAttribute("accountLogin");

            List<CartDetail> cartData = CartDetailServices.getInstance().getCartForImg(customerCL.getMaKH());

            boolean delete = CartDetailServices.getInstance().deleteByMaSP(cartData.get(1).getCartId(),maSP);
            request.setAttribute("quantityCart", cartData.size());
            if (delete) {
                request.getRequestDispatcher("/cart").forward(request, response);
            } else {
                request.getRequestDispatcher("/page404").forward(request, response);

            }
        } else {
            if (ss.getAttribute("listCart") != null) {
                List<CartDetail> cartList = (List<CartDetail>) ss.getAttribute("listCart");
                for (CartDetail cart : cartList
                ) {
                    if (cart.getMaSP().equals(maSP)){
                        cartList.remove(cart);
                        break;
                    }
                }
                request.setAttribute("quantityCart", cartList.size());

            } else {
                request.setAttribute("quantityCart", 0);

            }
            request.getRequestDispatcher("/cart").forward(request, response);


        }

    }
}
