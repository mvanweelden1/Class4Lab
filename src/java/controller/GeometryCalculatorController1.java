/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mvanweelden1
 */
@WebServlet(name = "GeometryCalculatorController1", urlPatterns = {"/Controller1"})
public class GeometryCalculatorController1 extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String calcType = request.getParameter("CalcType");

        if (calcType.equals("rectangle")) {

            String length = request.getParameter("length");
            String width = request.getParameter("width");

            double result = Double.parseDouble(length) * Double.parseDouble(width);

            request.setAttribute("answer", String.valueOf(result));

            RequestDispatcher view =
                    request.getRequestDispatcher("/challenge1results.jsp");
            view.forward(request, response);

        } else if (calcType.equals("circle")) {

            double pi = 3.14159265359;

            String radius = request.getParameter("radius");

            double area = pi * (Double.parseDouble(radius) * Double.parseDouble(radius));

            request.setAttribute("answer", String.valueOf(area));

            RequestDispatcher view =
                    request.getRequestDispatcher("/challenge1results.jsp");
            view.forward(request, response);


        } else {

            String sideA = request.getParameter("sideA");
            String sideB = request.getParameter("sideB");

            double sideC = Math.sqrt((Double.parseDouble(sideA) * Double.parseDouble(sideA))
                    + ((Double.parseDouble(sideB) * Double.parseDouble(sideB))));

            request.setAttribute("answer", String.valueOf(sideC));

            RequestDispatcher view =
                    request.getRequestDispatcher("/challenge1results.jsp");
            view.forward(request, response);


        }



    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
