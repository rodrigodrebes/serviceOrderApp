
package com.techsolutions.projetox;

import com.techsolutions.projetox.dal.ModuloConexao;
import com.techsolutions.projetox.telas.TelaLogin;
import java.sql.Connection;

/**
 *
 * @author Rodrigo
 */
public class ProjetoX {

    public static void main(String[] args) {
        
        Connection conexao = ModuloConexao.conector();
 
    
         java.awt.EventQueue.invokeLater(new Runnable() {
        public void run() {
            
             new TelaLogin().setVisible(true);
        }
    });
        
    }
}
