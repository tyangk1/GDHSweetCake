package com.gdhsweetcakejavafinal.controller.client.pay;

import com.gdhsweetcakejavafinal.dao.client.impl.ProductDao;
import com.gdhsweetcakejavafinal.model.client.*;
import com.gdhsweetcakejavafinal.service.client.impl.CartDetailServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PayController", value = "/pay-cart")
public class PayController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=UTF-8");
        ProductDao productDao = new ProductDao();

        List<ProductType> listT = productDao.getAllProductType();
        List<Category> listC = productDao.getCategory();


        request.setAttribute("listT", listT);
        request.setAttribute("listC", listC);

        HttpSession ss = request.getSession();
        double sumCart = 0;
        double sumCartSale = 0;
        double sale = 0;
        String salePrice = "Không có mã giảm giá";
        if (ss.getAttribute("accountLogin") != null) {
            CustomerCL accountLogin = (CustomerCL) ss.getAttribute("accountLogin");
            request.setAttribute("nameCustomer", accountLogin.getTenKH() != null ? accountLogin.getTenKH() : "");
            request.setAttribute("addressCustomer", accountLogin.getDiaChi() != null ? accountLogin.getDiaChi() : "");
            request.setAttribute("phoneCustomer", accountLogin.getSdt() != null ? accountLogin.getSdt() : "");
            request.setAttribute("emailCustomer", accountLogin.getEmail() != null ? accountLogin.getEmail() : "");
            List<CartDetail> cartListDB = CartDetailServices.getInstance().getCartForImg(accountLogin.getMaKH());
            for (CartDetail cartDetail : cartListDB) {
                ProductCL product = productDao.getProductByMaSP(cartDetail.getMaSP());
                cartDetail.setLinkAnh(product.getLinkAnh());
                cartDetail.setNameSP(product.getTenSP());
                cartDetail.setPrice(product.getGia());
            }
            request.setAttribute("quantityCart", cartListDB.size());

            if (cartListDB.size() != 0) {
                sumCart = CartDetailServices.getInstance().sumPriceCart(accountLogin.getMaKH());
                sumCartSale = sumCart;
                if (sumCart >= 300000 && sumCart < 600000) {
                    sale = sumCart * 0.005;
                    sumCartSale = sumCart - sale;
                    salePrice = "5%";

                }
                if (sumCart >= 600000) {
                    sale = sumCart * 0.010;
                    sumCartSale = sumCart - sale;
                    salePrice = "10%";

                }


                request.setAttribute("listCart", cartListDB);
                request.setAttribute("sumCart", sumCart);
                request.setAttribute("sumCartSale", sumCartSale);
                request.setAttribute("cartSale", sale);
                request.setAttribute("salePrice", salePrice);

            } else {
                request.setAttribute("sumCart", sumCart);
                request.setAttribute("sumCartSale", sumCartSale);
                request.setAttribute("cartSale", sale);
                request.setAttribute("salePrice", salePrice);
                request.setAttribute("listCart", "");

            }
        } else {

            if (ss.getAttribute("listCart") != null) {
                List<CartDetail> cartList = (List<CartDetail>) ss.getAttribute("listCart");
                request.setAttribute("quantityCart", cartList.size());

                for (CartDetail cart : cartList) {
                    ProductCL product = productDao.getProductByMaSP(cart.getMaSP());
                    cart.setLinkAnh(product.getLinkAnh());
                    cart.setNameSP(product.getTenSP());
                    cart.setPrice(product.getGia());
                    sumCart += cart.getQuantity() * cart.getPrice();
                }
                sumCartSale = sumCart;
                if (sumCart >= 300000 && sumCart < 600000) {
                    sale = sumCart * 0.005;
                    sumCartSale = sumCart - sale;
                    salePrice = "5%";

                }
                if (sumCart >= 600000) {
                    sale = sumCart * 0.010;
                    sumCartSale = sumCart - sale;
                    salePrice = "10%";

                }
                request.setAttribute("sumCart", sumCart);
                request.setAttribute("sumCartSale", sumCartSale);
                request.setAttribute("cartSale", sale);
                request.setAttribute("salePrice", salePrice);
                request.setAttribute("listCart", cartList);

            } else {

                request.setAttribute("quantityCart", 0);
                request.setAttribute("listCart", "");
                request.setAttribute("sumCart", sumCart);
                request.setAttribute("sumCartSale", sumCartSale);
                request.setAttribute("cartSale", sale);
            }


        }
        request.getRequestDispatcher("view/client/checkout.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

    }
}
