package com.gdhsweetcakejavafinal.controller.client.cart;


import com.gdhsweetcakejavafinal.dao.client.impl.CustomerCLDao;
import com.gdhsweetcakejavafinal.dao.client.impl.ProductDao;
import com.gdhsweetcakejavafinal.model.Product;
import com.gdhsweetcakejavafinal.model.client.*;
import com.gdhsweetcakejavafinal.service.client.impl.CartDetailServices;
import com.gdhsweetcakejavafinal.service.client.impl.CartServices;
import com.gdhsweetcakejavafinal.tools.GenerateId;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddCartController", value = "/addToCart")
public class PublicAddToCartController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public PublicAddToCartController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao productDao = new ProductDao();
        CustomerCLDao customerCLDao = new CustomerCLDao();
        try {

            String idSP = request.getParameter("maSP");
            int quantity = request.getParameter("quantity-cart") != null ? Integer.parseInt(request.getParameter("quantity-cart")) : 1;
            System.out.println(idSP);

            HttpSession ss = request.getSession();

            ProductCL product = productDao.getProductByMaSP(idSP);

            if (ss.getAttribute("accountLogin") != null) {
                CustomerCL user = (CustomerCL) ss.getAttribute("accountLogin");
                Cart newCart = CartServices.getInstance().getCartByCustomerId(user.getMaKH());
                boolean cartInsert = false;
                boolean cartDetailInsert = false;
                // insert Cart
                if (newCart == null) {
                    newCart = new Cart();
                    newCart.setCustomerId(user.getMaKH());
                    newCart.setCartId(GenerateId.generateId("GH"));
                    cartInsert = CartServices.getInstance().insert(newCart);
                    System.out.println(cartInsert);
                }
                // insert cart detail
                CartDetail cartDetailCheck = CartDetailServices.getInstance().getCartDetailBySP(idSP, newCart.getCartId());
                if (cartDetailCheck == null) {
                    CartDetail cartDetail = new CartDetail();
                    cartDetail.setCartId(newCart.getCartId());
                    cartDetail.setMaSP(idSP);
                    cartDetail.setPrice(product.getGia());
                    cartDetail.setQuantity(quantity);
                    cartDetail.setNoteSP("Thêm sản phẩm vào giỏ hàng");
                    cartDetailInsert = CartDetailServices.getInstance().insert(cartDetail);
                } else {
                    CartDetail cartDetailUpdate = new CartDetail();
                    cartDetailUpdate.setCartId(cartDetailCheck.getCartId());
                    cartDetailUpdate.setMaSP(cartDetailCheck.getMaSP());
                    cartDetailUpdate.setPrice(cartDetailCheck.getPrice());
                    cartDetailUpdate.setNoteSP(cartDetailCheck.getNoteSP());
                    cartDetailUpdate.setQuantity(cartDetailCheck.getQuantity() + quantity);
                    CartDetailServices.getInstance().update(cartDetailUpdate);
                    cartDetailInsert = true;
                }
                //add cart in session
                if (cartDetailInsert) {
                    List<CartDetail> cartDetailList = CartDetailServices.getInstance().getByIdCart(newCart.getCartId());
                    ss.setAttribute("listCart", cartDetailList);
                    System.out.println("add to cart successful");
                    request.getRequestDispatcher("/cart").forward(request, response);

                }
            } else {

                CartDetail newCartDetail = new CartDetail();
                if (ss.getAttribute("listCart") == null) {

                    List<CartDetail> newList = new ArrayList<>();
                    newCartDetail.setCartId(GenerateId.generateId("GHD"));
                    newCartDetail.setMaSP(idSP);
                    newCartDetail.setQuantity(quantity);
                    newCartDetail.setPrice(product.getGia());
                    newList.add(newCartDetail);
                    ss.setAttribute("listCart", newList);
                    request.getRequestDispatcher("/cart").forward(request, response);


                } else {
                    List<CartDetail> cartList = (ArrayList) ss.getAttribute("listCart");

                    boolean checkSP = false;
                    for (CartDetail cart : cartList) {
                        if (cart.getMaSP().equals(idSP)) {
                            cart.setQuantity(cart.getQuantity() + quantity);
                            checkSP = true;
                            break;
                        }
                    }
                    if (!checkSP) {
                        newCartDetail.setCartId(GenerateId.generateId("GHD"));
                        newCartDetail.setMaSP(idSP);
                        newCartDetail.setQuantity(quantity);
                        newCartDetail.setPrice(product.getGia());

                        cartList.add(newCartDetail);
                    }
                    ss.setAttribute("listCart", cartList);
                    request.getRequestDispatcher("/cart").forward(request, response);

                }


            }

        } catch (Exception e) {
            System.err.println(e.getMessage());
            request.getRequestDispatcher("/page404").forward(request, response);


        }

    }


}
