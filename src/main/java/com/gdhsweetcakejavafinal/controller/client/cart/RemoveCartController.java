package com.gdhsweetcakejavafinal.controller.client.cart;

import com.gdhsweetcakejavafinal.model.client.Cart;
import com.gdhsweetcakejavafinal.model.client.CartDetail;
import com.gdhsweetcakejavafinal.model.client.CustomerCL;
import com.gdhsweetcakejavafinal.service.client.impl.CartDetailServices;
import com.gdhsweetcakejavafinal.service.client.impl.CartServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "RemoveCartController", value = "/removeToCart")
public class RemoveCartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        HttpSession ss = request.getSession();
        if (ss.getAttribute("accountLogin") != null) {
            CustomerCL customerCL = (CustomerCL) ss.getAttribute("accountLogin");

            List<CartDetail> cartData = CartDetailServices.getInstance().getCartForImg(customerCL.getMaKH());

            request.setAttribute("quantityCart", cartData.size());

        } else {

            if (ss.getAttribute("listCart") != null) {
                List<CartDetail> cartList = (List<CartDetail>) ss.getAttribute("listCart");

                request.setAttribute("quantityCart", cartList.size());

            } else {
                request.setAttribute("quantityCart", 0);

            }


        }
        doPost(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            String idSP = request.getParameter("maSP");
            System.out.println(idSP);

            HttpSession ss = request.getSession();


            if (ss.getAttribute("accountLogin") != null) {
                CustomerCL user = (CustomerCL) ss.getAttribute("accountLogin");
                Cart newCart = CartServices.getInstance().getCartByCustomerId(user.getMaKH());
                CartDetail cartDetail = CartDetailServices.getInstance().getCartDetailBySP(idSP, newCart.getCartId());
                if (cartDetail.getQuantity() > 1) {
                    CartDetail updateQuantity = cartDetail.reduceQuantity();
                    CartDetailServices.getInstance().update(updateQuantity);
                }
                System.out.println("remove to cart successful");
                request.getRequestDispatcher("/cart").forward(request, response);

            } else {
                List<CartDetail> cartList = (ArrayList) ss.getAttribute("listCart");

                for (CartDetail cart : cartList) {
                    if (cart.getMaSP().equals(idSP)) {
                        if (cart.getQuantity() > 1) {
                            cart.setQuantity(cart.getQuantity() - 1);
                            break;
                        }
                    }
                }
                ss.setAttribute("listCart", cartList);
                request.getRequestDispatcher("/cart").forward(request, response);

            }
        } catch (Exception e) {

        }
    }
}