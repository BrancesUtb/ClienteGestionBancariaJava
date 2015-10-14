<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gestion Bancaria - Cheques</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    
<header class="clase-general">
 <h1>Gestion Bancaria</h1>    
    <ul class="nav nav-tabs">
      <li><a href="index.html">Principal</a></li>
      <li><a href="Cuentas.jsp">Lista</a></li>
      <li><a href="Ahorros.jsp">Ahorros</a></li>
      <li><a href="Corrientes.jsp">Corrientes</a></li>
      <li class="active"><a href="Cheques.jsp">Cheques</a></li>
    </ul>
</header>
    

<div >
        
    <form  action="CuentasController.do" method="POST" >
    <fieldset>

        <div >
            <div >
        <!-- Form Name -->
                <legend>Cuentas Cheques</legend>
                    <div >
                        <input type="hidden" id="tipoCuenta" name="tipoCuenta" value="Cheques">
                        <div >
                            <label  for="nCuenta">Nº de Cuenta</label>
                        </div>

                        <div >
                            <input name="nCuenta" type="text"  class="input-medium">
                        </div>
                        
                        <div>
                           <label  for="balance">Balance</label>
                        </div>
                        <div >
                            <input  name="balance" type="text"  class="input-medium">
                        </div>
                    </div>
                
                
                    <div >
                        <div >
                              <label  for="idCliente">Id de Cliente</label>
                        </div>
                       
                         <div>
                           <input  name="idCliente" type="text"  class="input-medium">
                        </div>
                        
                        <div >
                               <label  for="nCliente">Nombre del Cliente</label>
                        </div>
                       
                         <div class="col-md-4">
                            <input id="nCliente" name="nCliente" type="text" class="input-xlarge">
                        </div>
                
                    </div>
                    
                    <div >
                        <div >
                            <label  for="IdTalonario">Id Talonario</label>
                        </div>
                       
                         <div >
                           <input  name="idTalonario" type="text" >
                        </div>                
                    </div>
                                
                    <div >

                        <div >
                            <button name="crear" ><a href="index.html">Crear</a></button>   

                            <button  name="cancelar" ><a href="index.html">Cancelar</a></button>
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
	long idTalonario = 0L;
	// TODO process result here
	boolean result = port.addCheques(id, idCliente, nombreCliente, saldo, idTalonario);
	out.println("Result = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
</body>
</html>

