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
public class Corrientes extends Cuentas {

    private double limiteCredito;
    private float tasaInteres;
    private static int count = 0;
    private static int numeroTransaciones = 3;

    public Corrientes() {
        this.limiteCredito = 0.0;

        this.tasaInteres = 1.0F;

    }

    public Corrientes(long id, long idCliente, String nombreCliente, double saldo, double limiteCredito, float tasaInteres) {
        super(id, idCliente, nombreCliente, saldo);
        this.limiteCredito = limiteCredito;
        this.tasaInteres = tasaInteres;

    }

    public double getLimiteCredito() {
        return limiteCredito;
    }

    public void setLimiteCredito(double limiteCredito) {
        this.limiteCredito = limiteCredito;
    }

    public float getTasaInteres() {
        return tasaInteres;
    }

    public void setTasaInteres(float tasaInteres) {
        this.tasaInteres = tasaInteres;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 59 * hash + (int) (Double.doubleToLongBits(this.limiteCredito) ^ (Double.doubleToLongBits(this.limiteCredito) >>> 32));
        hash = 59 * hash + Float.floatToIntBits(this.tasaInteres);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        Corrientes o = (Corrientes) obj;
        boolean result = false;

        if ((super.Equals(o))
                && (this.limiteCredito == o.limiteCredito)
                && (tasaInteres == o.tasaInteres)) {
            result = true;
        }

        return result;
    }

    @Override
    public String toString() {
        return super.ToString()
                + "\nLimite de Creditos:  " + limiteCredito + "\n"
                + "\nTasa de Interes:  " + tasaInteres;
    }

    @Override
    public String depositar(double valor) {
        this.setSaldo(this.getSaldo() + valor);
        return Balance(valor, 'D');
    }

    @Override
    public String retitar(double valor) {
        double trans = 0.0;

        count++;
        if ((count > this.numeroTransaciones) && (valor < this.limiteCredito))
            trans = (this.getSaldo() - ((valor* this.tasaInteres) + valor));
        else
            trans = (this.getSaldo() - ((valor* this.tasaInteres) + valor));
            
        this.setSaldo(trans);
        
        return Balance(valor, 'R');
    }

    @Override
    public String Balance(double valor, char movimiento) {
        String result = "";

        switch (movimiento) {
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
