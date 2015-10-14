/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CuentasBancarias;

/**
 *
 * @author SIM-12
 */
public abstract class Cuentas {

   public long Id;
   public long IdCliente;
   public String NombreCliente;
   public double Saldo;
   
    public Cuentas() {
        Id = 0;
        IdCliente = 0;
        NombreCliente = "Nombre Clientes";
        Saldo = 0.0;
    }

    public Cuentas(long id,long idCliente, String nombreCliente, double saldo ) {
        Id = id;
        IdCliente = idCliente;
        NombreCliente = nombreCliente;
        Saldo = saldo;
        
    }

    public long getId() {
        return Id;
    }

    public void setId(long Id) {
        this.Id = Id;
    }


    public long getIdCliente() {
        return IdCliente;
    }


    public void setIdCliente(long IdCliente) {
        this.IdCliente = IdCliente;
    }

    public String getNombreCliente() {
        return NombreCliente;
    }

    public void setNombreCliente(String NombreCliente) {
        this.NombreCliente = NombreCliente;
    }

    public double getSaldo() {
        return Saldo;
    }

    public void setSaldo(double Saldo) {
        this.Saldo = Saldo;
    }

    

    public String ToString() {
        return "["+ this.getClass().getSimpleName() + "]\n" +
                "\nNum Cuenta:  " + this.Id
                + "\nNombre:  " + this.NombreCliente
                + "\nIdentificacion Cliente: " + this.IdCliente
                + "\nSaldo Actual: " + this.Saldo;
    }

    public boolean Equals(Object obj) {
        Cuentas o = (Cuentas) obj;
        boolean result = false;

        if((Id == o.Id)&& (IdCliente == o.IdCliente)&&(NombreCliente == o.NombreCliente)&& (Saldo == o.Saldo)){
            result = true;
        }

        return result;
    }

    public int GetHashCode() {
      
        return super.hashCode();
    }

    
    public abstract String depositar(double valor);
    public abstract String retitar(double valor);
    public abstract String Balance(double valor,char movimiento);

}