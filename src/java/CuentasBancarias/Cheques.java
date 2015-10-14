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
public class Cheques extends Cuentas {

    private static int count = 0;
    private static int numeroTransaciones = 3;

    private long  IdTalonario;

    public Cheques(long id, long idCliente, String nombreCliente, double saldo, long idTalonario) {
        super(id, idCliente, nombreCliente, saldo);
        this.IdTalonario = idTalonario;
    }

    public Cheques() {
        super();
        this.IdTalonario = IdTalonario;

    }

    public static int getCount() {
        return count;
    }

    public static void setCount(int count) {
        Cheques.count = count;
    }

    public static int getNumeroTransaciones() {
        return numeroTransaciones;
    }

    public static void setNumeroTransaciones(int numeroTransaciones) {
        Cheques.numeroTransaciones = numeroTransaciones;
    }



    public long getIdTalonario() {
        return IdTalonario;
    }

    public void setIdTalonario(long IdTalonario) {
        this.IdTalonario = IdTalonario;
    }

  

   
 
    @Override
    public int hashCode() {
        return this.ToString().hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Cheques other = (Cheques) obj;
        if (this.IdTalonario != other.IdTalonario) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return super.toString()
                + "\nTalonario: " + this.IdTalonario;
    }

    @Override
    public String depositar(double valor) {
       return "\nA este tipo de cuenta no se le permiten depositos";
    }

    @Override
    public String retitar(double valor) {
        
      
            this.setSaldo(this.getSaldo() - valor );
        
        return Balance(valor,'R');
    }
    
    @Override
    public String Balance(double valor, char movimiento) {
         String result = "";

            switch (movimiento)
            {
                case 'R':
                    result = "\n=======Movimiento Actual======"
                    + "\nRetiro por Valor : " + valor
                    + "\nBalanca actual: " + Saldo;
                    break;
                default:
                    result = "\n=======Movimiento Actual======"
                    + "\nBalanca actual: " + Saldo;
                    break;       
            }
        return result;
    }   
}
