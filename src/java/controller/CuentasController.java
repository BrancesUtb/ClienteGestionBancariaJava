/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import CuentasBancarias.Ahorros;
import CuentasBancarias.Cheques;
import CuentasBancarias.Corrientes;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Data.CuentasRepositores;

/**
 *
 * @author labingsoftutb
 */
public class CuentasController extends HttpServlet {

    private static final long serialVersionUID = 1L;
   

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        
        String tipoCuenta = request.getParameter("tipoCuenta");
        
        long id = Long.parseLong(request.getParameter("nCuenta"));
        double saldo = Double.parseDouble(request.getParameter("balance"));
        long idCliente = Long.parseLong(request.getParameter("idCliente"));
        String nombreCliente =  request.getParameter("nCliente");
        

        
        if (tipoCuenta.equals("Ahorros")){
            float tasaInteres = Float.parseFloat(request.getParameter("tasaInteres"));
            Ahorros a = new Ahorros(id, idCliente, nombreCliente, saldo,tasaInteres);
           // CuentasBancarias.CuentasRepositores.banco.add(a);
            request.setAttribute("ahorros", a);
        }
        
                
        if (tipoCuenta.equals("Cheques")){
            long idTalonario = Long.parseLong(request.getParameter("idTalonario"));
            Cheques c = new Cheques(id, idCliente, nombreCliente, saldo,idTalonario);
       //      CuentasBancarias.CuentasRepositores.banco.add(c);
            request.setAttribute("cheques", c);
        }
        
        if (tipoCuenta.equals("Corrientes")){
            
            double limiteCredito = Double.parseDouble(request.getParameter("limiteCredito"));
            
            float tasaInteres = Float.parseFloat(request.getParameter("tasaInteres"));
           
            
            Corrientes r = new Corrientes(id, idCliente, nombreCliente, saldo,limiteCredito,tasaInteres);
         //   CuentasBancarias.CuentasRepositories.types.add(r);
            request.setAttribute("corrientes", r);
        }

        RequestDispatcher view = request.getRequestDispatcher("index.html");
        view.forward(request, response);
    }
    
    
  
}