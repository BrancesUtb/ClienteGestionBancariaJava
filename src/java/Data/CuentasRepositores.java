/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;



import CuentasBancarias.Cuentas;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author SIM-12
 */
public class CuentasRepositores {
   /*    public static final List<Cuentas> banco = new ArrayList<Cuentas>();

      
     static Ahorros cuenta1 = new Ahorros(123, 7374455, "Jair", 900000.0, 0.1F);
     static Corrientes cuenta2 = new Corrientes(124, 3373555, "Brances", 100000.0, 0.1, 1.0F);
     static Cheques cuenta3 = new Cheques(125, 7373511, "Hugo", 600000.0,12);
     
     
        

     public CuentasRepositores(){
         if (banco.isEmpty()){
                 
            banco.add(cuenta1);
            banco.add(cuenta2);
            banco.add(cuenta3);
         }
     }
     
     public void add(Cuentas cta){
        if (banco.isEmpty()){
                 
            banco.add(cuenta1);
            banco.add(cuenta2);
            banco.add(cuenta3);
            
         }
         banco.add(cta);
     
     }
     
     
     public List<Cuentas> listar(){
     
         return banco;
     
     }
*/
     static List<Cuentas> banco = new ArrayList<Cuentas>();
        
        public void addCuentas(Cuentas cta)
        {
            
            banco.add(cta);

        }

        public List<Cuentas> getCuentas()
        {
            return banco;
        }

}
