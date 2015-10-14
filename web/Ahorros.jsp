<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gestion Bancaria - Ahorros</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    
<header >
 <h1>Gestion Bancaria</h1>    
    <ul >
      <li><a href="index.html">Principal</a></li>
      <li><a href="Cuentas.jsp">Lista</a></li>
      <li class="active"><a href="Ahorros.jsp">Ahorros</a></li>
      <li><a href="Corrientes.jsp">Corrientes</a></li>
      <li><a href="Cheques.jsp">Cheques</a></li>
    </ul>
</header>
    

<div >
        
    <form  action="Cuentas.jsp" method="POST" >
    <fieldset>

        <div >
            <div>
        <!-- Form Name -->
                <legend>Cuentas de Ahorros</legend>
                    <div >
                        <input type="hidden"  name="tipoCuenta" value="Ahorros">
                        <div >
                            <label for="nCuenta">Nº de Cuenta</label>
                        </div>

                        <div >
                            <input  name="nCuenta" type="text" >
                        </div>
                        
                        <div >
                           <label  for="Saldo">Saldo</label>
                        </div>
                        <div >
                            <input name="Saldo" type="text"  >
                        </div>
                    </div>
                
                
                    <div >
                        <div >
                              <label  for="idCliente">Id de Cliente</label>
                        </div>
                       
                         <div >
                           <input  name="idCliente" type="text"  class="input-medium">
                        </div>
                        
                        <div >
                               <label for="nombreCliente">Nombre del Cliente</label>
                        </div>
                       
                         <div >
                            <input name="nombreCliente" type="text" class="input-xlarge">
                        </div>
                
                    </div>
                    
                    <div >
                        <div >
                            <label for="tasaInteres">Tasa de Interes</label>
                        </div>
                       
                         <div >
                           <input  name="tasaInteres" type="text" class="input-mini">
                        </div>
                
                    </div>
                                
                    <div >

                        <div >
                            
                            <button   name="crear" >Crear</button>

                          <button   name="cancelar" ><a href="index.html">Cancelar</a></button>
                        </div>
                
                    </div>
                    
                
            </div>
          </div>
    </fieldset>
    </form>
        
        
</div>


<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
