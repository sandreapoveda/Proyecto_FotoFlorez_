/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import modeloDAO.EmpleadoDAO;
import modeloVO.EmpleadoVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 57350
 */
@WebServlet(name = "EmpleadoControlador", urlPatterns = {"/Empleado"})
public class EmpleadoControlador extends HttpServlet {

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
        String id_empleado = request.getParameter("textEmpleado");
        String usuId = request.getParameter("textUsuario");
        String tipo_identificacion = request.getParameter("textTipoIdentificacion");
        String n_identificacion = request.getParameter("textNumeroIdentificacion");
        String nombre_emp = request.getParameter("textNombreEmpleado");
        String apellido_emp = request.getParameter("textApellidoEmpleado");
        
        EmpleadoVO EmpVO = new EmpleadoVO(id_empleado,usuId,tipo_identificacion,n_identificacion,nombre_emp,apellido_emp);
        EmpleadoDAO EmpDAO = new EmpleadoDAO(EmpVO);
        
        switch (opcion) {
            case 1:
                if (EmpDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El empleado se registró correctamente");
                } else {
                    request.setAttribute("mensajeError", "El empleado NO se registró correctamente");
                }
                request.getRequestDispatcher("registrarEmpleado.jsp").forward(request, response);
                break;

            case 2:
                if (EmpDAO.actualizarRegistro()) {
                    request.setAttribute("mensajeExito", "El empleado se actualizó correctamente");
                } else {
                    request.setAttribute("mensajeError", "El empleado NO se actualizó correctamente");
                }
                request.getRequestDispatcher("actualizarEmpleado.jsp").forward(request, response);
                break;
                
            case 3:
                EmpleadoVO empleadoVO;
                empleadoVO = EmpleadoDAO.consultar(id_empleado);
                if (empleadoVO !=null) {
                     
                    request.setAttribute("empleado", empleadoVO);
                    request.getRequestDispatcher("actualizarEmpleado.jsp").forward(request, response);

                } else {
                    request.setAttribute("mensajeError", "El empleado NO existe");
                    request.getRequestDispatcher("consultarEmpleado.jsp").forward(request, response);
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
