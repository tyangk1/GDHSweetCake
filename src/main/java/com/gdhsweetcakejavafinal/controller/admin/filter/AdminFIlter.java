package com.gdhsweetcakejavafinal.controller.admin.filter;
import com.gdhsweetcakejavafinal.model.Admin;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AdminFilter", urlPatterns = {"/admin/*","/view/admin/*"} )
public class AdminFIlter implements Filter {

    @Override
    public void doFilter(final ServletRequest request, final ServletResponse response, final FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpReq = (HttpServletRequest) request;
        HttpServletResponse httpRep = (HttpServletResponse) response;
        HttpSession session = httpReq.getSession();
        String  s = "";
        Admin user =(Admin) session.getAttribute("admin");
        if((httpReq.getRequestURI().indexOf("login") > -1 && user == null) || httpReq.getRequestURI().indexOf(".css") > -1
        || httpReq.getRequestURI().endsWith(".js"))
            chain.doFilter(request, response);
        else if((user == null && httpReq.getRequestURI().endsWith(".jsp")) || user == null){
//            request.getRequestDispatcher("/view/admin/login.jsp").forward(request,response);
            httpRep.sendError(404);
        }else{
            chain.doFilter(request, response);
        }
    }

    @Override
    public void init(final FilterConfig filterConfig) throws ServletException {
    }

    @Override
    public void destroy() {
    }
}