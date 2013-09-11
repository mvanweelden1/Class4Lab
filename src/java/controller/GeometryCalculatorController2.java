package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CircleCalculator;
import model.RectangleCalculator;
import model.TriangleCalculator;

/**
 *
 * @author Owner
 */
@WebServlet(name = "GeometryCalculatorController2", urlPatterns = {"/Controller2"})
public class GeometryCalculatorController2 extends HttpServlet {

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
        
        String calcType = request.getParameter("CalcType");
        
        if (calcType.equals("rectangle")) {

            String length = request.getParameter("length");
            String width = request.getParameter("width");

            RectangleCalculator rc = new RectangleCalculator();
            double answer = rc.getArea(length, width);
            
            request.setAttribute("answer", String.valueOf(answer));

            RequestDispatcher view =
                    request.getRequestDispatcher("/challenge2.jsp");
            view.forward(request, response);

        } else if (calcType.equals("circle")) {

            String radius = request.getParameter("radius");

            CircleCalculator cc = new CircleCalculator();
            
            double answer = cc.getArea(Double.valueOf(radius));

            request.setAttribute("cAnswer", String.valueOf(answer));

            RequestDispatcher view =
                    request.getRequestDispatcher("/challenge2.jsp");
            view.forward(request, response);


        } else {

            String sideA = request.getParameter("sideA");
            String sideB = request.getParameter("sideB");

            TriangleCalculator tc = new TriangleCalculator();
            
            double sideC = tc.getHypotenuse(Double.parseDouble(sideA), Double.parseDouble(sideB));

            request.setAttribute("tAnswer", String.valueOf(sideC));

            RequestDispatcher view =
                    request.getRequestDispatcher("/challenge2.jsp");
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
