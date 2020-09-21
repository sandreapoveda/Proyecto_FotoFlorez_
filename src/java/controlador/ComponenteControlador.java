/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modeloDAO.ComponenteDAO;
import modeloVO.ComponenteVO;


/**
 *
 * @author Torre
 */
@WebServlet(name = "ComponenteControlador", urlPatterns = {"/Componente"})
public class ComponenteControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
         
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        String id_componente = request.getParameter("textId");
        String nombre_componente = request.getParameter("textNombre");
        
       ComponenteVO ComVO = new ComponenteVO(id_componente, nombre_componente);
       ComponenteDAO ComDAO = new ComponenteDAO(ComVO);
       
       switch(opcion){
           
           
           case 1:
               if(ComDAO.agregarRegistro()) {
                   
                   request.setAttribute("mensajeExitoso", "El componente se registro correctamente");
                   
               }else {
                   request.setAttribute("mensajeErro", "El componente NO se registro correctamente");
               }
           request.getRequestDispatcher("registrarComponente.jsp").forward(request, response);
           
           break;
           
           case 2: 
               
            if(ComDAO.actualizarRegistro()) {
                   
                   request.setAttribute("mensajeExitoso", "El componente se actualizo correctamente");
                   
               }else {
                   request.setAttribute("mensajeErro", "El componente NO se actualizo correctamente");
               }
           request.getRequestDispatcher("actualizarComponente.jsp").forward(request, response);
           
           break;
           case 3:
               
             ComponenteVO componenteVO;
                componenteVO = ComponenteDAO.consultar(id_componente);
                if (componenteVO !=null) {
                     
                    request.setAttribute("componente", componenteVO);
                    request.getRequestDispatcher("actualizarComponente.jsp").forward(request, response);

                } else {
                    request.setAttribute("mensajeError", "El componente NO existe");
                    request.getRequestDispatcher("consultarComponente.jsp").forward(request, response);
                }
                break;
        
       }
       
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
