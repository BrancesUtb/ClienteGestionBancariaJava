<%@page import="CuentasBancarias.Cuentas"%>
<%@page import="Data.CuentasRepositores"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Gestion Bancaria</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header class="clase-general">
            <h1>Listado de Cuentas</h1>    
            <ul class="nav nav-tabs">
                <li><a href="index.html">Principal</a></li>
                <li class="active"><a href="Cuentas.jsp">Lista</a></li>
                <li><a href="Ahorros.jsp">Ahorros</a></li>
                <li><a href="Corrientes.jsp">Corrientes</a></li>
                <li><a href="Cheques.jsp">Cheques</a></li>
            </ul>
        </header>


        <% CuentasRepositores banco = new CuentasRepositores(); %>

        <div>
            <div>

                <table>
                    <tr>
                        <th>Tipo de Cuenta</th>
                        <th>Nº de Cuenta</th>
                        <th>Saldo</th> 
                        <th>Id del Cliente</th>
                        <th>Nombre del Cliente</th>
                    </tr>


                    <% for (Cuentas c : banco.getCuentas()) {%>
                    <tr>
                        <td><%=c.getClass().getSimpleName()%></td>
                        <td><%=c.getId()%></td>
                        <td><%=c.getSaldo()%></td> 
                        <td><%=c.getIdCliente()%></td> 
                        <td><%=c.getNombreCliente()%></td> 
                    </tr>
                    <%}%>


                </table> 
            </div>
        </div> 


        <script src="bootstrap/js/bootstrap.min.js"></script>

        <%
            long a1 = Long.parseLong(request.getParameter("nCuenta"));
            String a5 = request.getParameter("nCliente");
            double a2 = Double.parseDouble(request.getParameter("Saldo"));
            long a3 = Long.parseLong(request.getParameter("idCliente"));
            float a4 = Float.valueOf(request.getParameter("tasaInteres"));
            try {
                data.ServicioGestionBancaria_Service service = new data.ServicioGestionBancaria_Service();
                data.ServicioGestionBancaria port = service.getServicioGestionBancariaPort();
                // TODO initialize WS operation arguments here
                long id = a1;
                long idCliente = a3;
                java.lang.String nombreCliente = a5;
                double saldo = a2;
                float tasaInteres = a4;
                // TODO process result here
                boolean result = port.addAhorros(id, idCliente, nombreCliente, saldo, tasaInteres);
                out.println("Result = " + result);
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
        <%-- end web service invocation --%><hr/>
        <%-- start web service invocation --%><hr/>
        <%
            try {
                long aa1 = Long.parseLong(request.getParameter("nCuenta"));
                String aa5 = request.getParameter("nCliente");
                double aa2 = Double.parseDouble(request.getParameter("Saldo"));
                long aa3 = Long.parseLong(request.getParameter("idCliente"));
                long aa4 = Long.parseLong(request.getParameter("idTalonario"));
                data.ServicioGestionBancaria_Service service = new data.ServicioGestionBancaria_Service();
                data.ServicioGestionBancaria port = service.getServicioGestionBancariaPort();
                // TODO initialize WS operation arguments here
                long id = aa1;
                long idCliente = aa3;
                java.lang.String nombreCliente = aa5;
                double saldo = aa2;
                long idTalonario = aa4;
                // TODO process result here
                boolean result = port.addCheques(id, idCliente, nombreCliente, saldo, idTalonario);
                out.println("Result = " + result);
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
        <%-- end web service invocation --%><hr/>
        <%-- start web service invocation --%><hr/>
        <%
            try {
                long aa1 = Long.parseLong(request.getParameter("nCuenta"));
                String aa5 = request.getParameter("nCliente");
                double aa2 = Double.parseDouble(request.getParameter("Saldo"));
                double aa6 = Double.parseDouble(request.getParameter("limiteCredito"));
                long aa3 = Long.parseLong(request.getParameter("idCliente"));
                float aa4 = Float.valueOf(request.getParameter("tasaInteres"));
                data.ServicioGestionBancaria_Service service = new data.ServicioGestionBancaria_Service();
                data.ServicioGestionBancaria port = service.getServicioGestionBancariaPort();
                // TODO initialize WS operation arguments here
                   long id = aa1;
                long idCliente = aa3;
                java.lang.String nombreCliente = aa5;
                double saldo = aa2;
                float tasaInteres = aa4;
                double limiteCredito = aa6;
                // TODO process result here
                boolean result = port.addCorrientes(id, idCliente, nombreCliente, saldo, limiteCredito, tasaInteres);
                out.println("Result = " + result);
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
        <%-- end web service invocation --%><hr/>
        <%-- start web service invocation --%><hr/>
        <%
            try {
                data.ServicioGestionBancaria_Service service = new data.ServicioGestionBancaria_Service();
                data.ServicioGestionBancaria port = service.getServicioGestionBancariaPort();
                // TODO initialize WS operation arguments here
                long id = 0L;
                // TODO process result here
                java.lang.String result = port.balance(id);
                out.println("Result = " + result);
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
        <%-- end web service invocation --%><hr/>
        <%-- start web service invocation --%><hr/>
        <%
            try {
                data.ServicioGestionBancaria_Service service = new data.ServicioGestionBancaria_Service();
                data.ServicioGestionBancaria port = service.getServicioGestionBancariaPort();
                // TODO initialize WS operation arguments here
                long id = 0L;
                double valor = 0.0d;
                // TODO process result here
                java.lang.String result = port.depositar(id, valor);
                out.println("Result = " + result);
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
        <%-- end web service invocation --%><hr/>
        <%-- start web service invocation --%><hr/>
        <%
            try {
                data.ServicioGestionBancaria_Service service = new data.ServicioGestionBancaria_Service();
                data.ServicioGestionBancaria port = service.getServicioGestionBancariaPort();
                // TODO process result here
                java.lang.String result = port.listarCuentas();
                out.println("Result = " + result);
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
        <%-- end web service invocation --%><hr/>
        <%-- start web service invocation --%><hr/>
        <%
            try {
                data.ServicioGestionBancaria_Service service = new data.ServicioGestionBancaria_Service();
                data.ServicioGestionBancaria port = service.getServicioGestionBancariaPort();
                // TODO initialize WS operation arguments here
                long id = 0L;
                double valor = 0.0d;
                // TODO process result here
                java.lang.String result = port.retirar(id, valor);
                out.println("Result = " + result);
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>
        <%-- end web service invocation --%><hr/>
    </body>
</html>
