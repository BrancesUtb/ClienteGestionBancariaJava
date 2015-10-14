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
public class Ahorros extends Cuentas{
   private static int numeroTransaciones = 3;
    private static int count =0 ;
    private float transaccionEx;

    public Ahorros() {
         super();
        this.transaccionEx = 1.0F;
       
    }

     public Ahorros( long id, long idCliente, String nombreCliente, double saldo,float tasaInteres) {
        super(id, idCliente, nombreCliente, saldo);
        this.transaccionEx = tasaInteres;
    }

    

    public float getTasaInteres() {
        return transaccionEx;
    }

    public void setTasaInteres(float transaccionExtra) {
        this.transaccionEx = transaccionExtra;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 13 * hash + Float.floatToIntBits(this.transaccionEx);
        return hash;
    }

    /**
     *
     * @param obj
     * @return
     */
    @Override
    public boolean equals(Object obj) {
       Ahorros o = (Ahorros)obj;
            boolean result = false;

            if ((super.Equals(o)) &&
               (this.transaccionEx == o.transaccionEx))
                result = true;

            return result;
    }

    @Override
    public String toString() {
        return super.toString() + 
                "\nValor por Transaccion extra: " + this.transaccionEx;
    }

    @Override
    public String depositar(double valor) {
        Saldo += valor;
        return Balance(valor,'D');
    }

    @Override
    public String retitar(double valor) {
         count++;
            if (count > numeroTransaciones){
                Saldo = (Saldo - (valor + transaccionEx));

            } else{
                Saldo = Saldo - valor;
            }
        return Balance(valor,'R');
    }

    @Override
    public String Balance(double valor,char movimiento) {
     String result = "";

            switch (movimiento)
            {
                case 'R':
                    result = "\n=======Movimiento Actual======"
                    
                    + "\nRetiro por Valor : " + valor
                    + "\nBalanca actual: " + Saldo;
                    break;
                case 'D':
                    result = "\n=======Movimiento Actual======"
                    + "\nDeposito por Valor : " + valor
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
