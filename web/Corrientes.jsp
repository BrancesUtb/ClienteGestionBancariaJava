<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gesti&oacute;n Bancaria - Corrientes</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    
<header class="clase-general">
 <h1>Gestion Bancaria</h1>    
    <ul class="nav nav-tabs">
      <li><a href="index.html">Principal</a></li>
      <li><a href="Cuentas.jsp">Lista</a></li>
      <li><a href="Ahorros.jsp">Ahorros</a></li>
      <li class="active"><a href="Corrientes.jsp">Corrientes</a></li>
      <li><a href="Cheques.jsp">Cheques</a></li>
    </ul>
</header>
    

<div>
        
    <form action="CuentasController.do" method="POST" >
    <fieldset>

        <div>
            <div>
        <!-- Form Name -->
                <legend>Cuentas Corrientes</legend>
                    <div >
                        <input type="hidden"  name="tipoCuenta" value="Corrientes">
                        <div >
                            <label for="nCuenta">Nº de Cuenta</label>
                        </div>

                        <div >
                            <input  name="nCuenta" type="text" >
                        </div>
                        
                        <div>
                           <label  for="Saldo">Saldo</label>
                        </div>
                        <div >
                            <input name="Saldo" type="text" >
                        </div>
                    </div>
                
                
                    <div >
                        <div >
                              <label for="idCliente">Id de Cliente</label>
                        </div>
                       
                         <div >
                             <input  name="idCliente" type="text"  >                        </div>
                        
                        <div>
                               <label  for="nCliente">Nombre del Cliente</label>
                        </div>
                       
                         <div >
                            <input id="nCliente" name="nCliente" type="text" class="input-xlarge">
                        </div>
                
                    </div>
                    
                    <div >
                        <div >
                            <label  for="limiteCredito">Limite de Credito</label>
                        </div>
                       
                         <div >
                           <input  name="limiteCredito" type="text" class="input-mini">
                        </div>    
                        <div >
                            <label  for="tasaInteres">Tasa de Interes</label>
                        </div>
                       
                         <div >
                           <input  name="tasaInteres" type="text" class="input-mini">
                        </div>
                    </div>
                              
                                
                    <div class="row clearfix">

                        <div class="col-md-6">
                            <button id="crear" name="crear" class="btn btn-success"> <a href="index.html">Crear</a></button>   

                            <button id="cancelar" name="cancelar" class="btn btn-inverse"><a href="index.html">Cancelar</a></button>
                        </div>
                
                    </div>
                    
                
            </div>
          </div>
    </fieldset>
    </form>
        
        
</div>


<script src="bootstrap/js/bootstrap.min.js"></script>

    <%-- start web service invocation --%><hr/>
    <%
    try {
	data.ServicioGestionBancaria_Service service = new data.ServicioGestionBancaria_Service();
	data.ServicioGestionBancaria port = service.getServicioGestionBancariaPort();
	 // TODO initialize WS operation arguments here
	long id = 0L;
	long idCliente = 0L;
	java.lang.String nombreCliente = "";
	double saldo = 0.0d;
	double limiteCredito = 0.0d;
	float tasaInteres = 0.0f;
	// TODO process result here
	boolean result = port.addCorrientes(id, idCliente, nombreCliente, saldo, limiteCredito, tasaInteres);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
</body>
</html>
