package ventanas;

import java.awt.BorderLayout;

/**
 *
 * @author HUAWEI PC
 */
public class vPrin extends javax.swing.JFrame {

    /**
     * Creates new form vPrin
     */
    public vPrin() {
        initComponents();
        this.setLocationRelativeTo(this);

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanelGeneral = new javax.swing.JPanel();
        lblFechaEmision = new javax.swing.JLabel();
        txtFechaEmision = new javax.swing.JTextField();
        lblAlmacenSalida = new javax.swing.JLabel();
        txtAlmacenSalida = new javax.swing.JTextField();
        lblAutorizacion = new javax.swing.JLabel();
        txtAutorizacion = new javax.swing.JTextField();
        lblTotal = new javax.swing.JLabel();
        txtTotal = new javax.swing.JTextField();
        txtPeso = new javax.swing.JTextField();
        lblPeso = new javax.swing.JLabel();
        txtAlmacenRecibido = new javax.swing.JTextField();
        lblAlmacenRecibido = new javax.swing.JLabel();
        txtNRegistro = new javax.swing.JTextField();
        lblNRegistro = new javax.swing.JLabel();
        lblCantidad = new javax.swing.JLabel();
        lblProveedor = new javax.swing.JLabel();
        txtProveedor = new javax.swing.JTextField();
        txtCantidad = new javax.swing.JTextField();
        txtRecibidoPor = new javax.swing.JTextField();
        lblRecibidoPor = new javax.swing.JLabel();
        lblDescripcion = new javax.swing.JLabel();
        txtDescripcion = new javax.swing.JTextField();
        txtIva = new javax.swing.JTextField();
        lblIva = new javax.swing.JLabel();
        lblPrecio = new javax.swing.JLabel();
        txtPrecio = new javax.swing.JTextField();
        jMenuBar1 = new javax.swing.JMenuBar();
        menuGeneral = new javax.swing.JMenu();
        MenuEntrada = new javax.swing.JMenu();
        menuSalida = new javax.swing.JMenu();
        menuInventario = new javax.swing.JMenu();
        menuReportes = new javax.swing.JMenu();
        menuConsultas = new javax.swing.JMenu();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(172, 200, 174));

        jPanel1.setBackground(new java.awt.Color(172, 200, 174));

        jPanelGeneral.setBackground(new java.awt.Color(200, 195, 172));

        lblFechaEmision.setText("Fecha de emisión: ");

        txtFechaEmision.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtFechaEmisionActionPerformed(evt);
            }
        });

        lblAlmacenSalida.setText("Almacen de salida: ");

        txtAlmacenSalida.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtAlmacenSalidaActionPerformed(evt);
            }
        });

        lblAutorizacion.setText("Autorización: ");

        txtAutorizacion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtAutorizacionActionPerformed(evt);
            }
        });

        lblTotal.setText("Total::");

        txtTotal.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtTotalActionPerformed(evt);
            }
        });

        txtPeso.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtPesoActionPerformed(evt);
            }
        });

        lblPeso.setText("Peso: ");

        txtAlmacenRecibido.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtAlmacenRecibidoActionPerformed(evt);
            }
        });

        lblAlmacenRecibido.setText("Almacen de recibido: ");

        txtNRegistro.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtNRegistroActionPerformed(evt);
            }
        });

        lblNRegistro.setText("N de registro: ");

        lblCantidad.setText("Cantidad: ");

        lblProveedor.setText("Proveedor: ");

        txtProveedor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtProveedorActionPerformed(evt);
            }
        });

        txtCantidad.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtCantidadActionPerformed(evt);
            }
        });

        txtRecibidoPor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtRecibidoPorActionPerformed(evt);
            }
        });

        lblRecibidoPor.setText("Recibido por: ");

        lblDescripcion.setText("Descripción:");

        txtDescripcion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtDescripcionActionPerformed(evt);
            }
        });

        txtIva.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtIvaActionPerformed(evt);
            }
        });

        lblIva.setText("Iva:");

        lblPrecio.setText("Precio:");

        txtPrecio.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtPrecioActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanelGeneralLayout = new javax.swing.GroupLayout(jPanelGeneral);
        jPanelGeneral.setLayout(jPanelGeneralLayout);
        jPanelGeneralLayout.setHorizontalGroup(
            jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelGeneralLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanelGeneralLayout.createSequentialGroup()
                        .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(jPanelGeneralLayout.createSequentialGroup()
                                .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(lblCantidad)
                                    .addComponent(lblProveedor))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtCantidad)
                                    .addComponent(txtProveedor)))
                            .addGroup(jPanelGeneralLayout.createSequentialGroup()
                                .addComponent(lblNRegistro)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtNRegistro, javax.swing.GroupLayout.PREFERRED_SIZE, 96, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(18, 18, 18)
                        .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanelGeneralLayout.createSequentialGroup()
                                .addComponent(lblDescripcion)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtDescripcion))
                            .addGroup(jPanelGeneralLayout.createSequentialGroup()
                                .addComponent(lblRecibidoPor)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtRecibidoPor))
                            .addGroup(jPanelGeneralLayout.createSequentialGroup()
                                .addComponent(lblAlmacenRecibido)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(txtAlmacenRecibido, javax.swing.GroupLayout.DEFAULT_SIZE, 238, Short.MAX_VALUE))))
                    .addGroup(jPanelGeneralLayout.createSequentialGroup()
                        .addComponent(lblFechaEmision)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtFechaEmision, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(lblAlmacenSalida)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtAlmacenSalida)))
                .addGap(18, 18, 18)
                .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(jPanelGeneralLayout.createSequentialGroup()
                        .addComponent(lblIva)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtIva))
                    .addGroup(jPanelGeneralLayout.createSequentialGroup()
                        .addComponent(lblPrecio)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtPrecio))
                    .addGroup(jPanelGeneralLayout.createSequentialGroup()
                        .addComponent(lblPeso)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtPeso))
                    .addGroup(jPanelGeneralLayout.createSequentialGroup()
                        .addComponent(lblAutorizacion)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtAutorizacion, javax.swing.GroupLayout.PREFERRED_SIZE, 96, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanelGeneralLayout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 83, Short.MAX_VALUE)
                        .addComponent(lblTotal)
                        .addGap(65, 65, 65))
                    .addGroup(jPanelGeneralLayout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtTotal, javax.swing.GroupLayout.PREFERRED_SIZE, 96, javax.swing.GroupLayout.PREFERRED_SIZE))))
        );
        jPanelGeneralLayout.setVerticalGroup(
            jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanelGeneralLayout.createSequentialGroup()
                .addGap(18, 18, 18)
                .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanelGeneralLayout.createSequentialGroup()
                        .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblFechaEmision)
                            .addComponent(txtFechaEmision, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblAlmacenSalida)
                            .addComponent(txtAlmacenSalida, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblAutorizacion)
                            .addComponent(lblTotal)
                            .addComponent(txtAutorizacion, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(8, 8, 8)
                        .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblNRegistro)
                            .addComponent(txtNRegistro, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanelGeneralLayout.createSequentialGroup()
                        .addGap(22, 22, 22)
                        .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblAlmacenRecibido)
                            .addComponent(txtAlmacenRecibido, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblPeso)
                            .addComponent(txtPeso, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtTotal, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblRecibidoPor)
                            .addComponent(txtRecibidoPor, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblPrecio)
                            .addComponent(txtPrecio, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txtCantidad, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblCantidad))
                        .addGap(12, 12, 12)
                        .addGroup(jPanelGeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblProveedor)
                            .addComponent(txtProveedor, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblDescripcion)
                            .addComponent(txtDescripcion, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblIva)
                            .addComponent(txtIva, javax.swing.GroupLayout.PREFERRED_SIZE, 16, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(558, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanelGeneral, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanelGeneral, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        jMenuBar1.setBackground(new java.awt.Color(200, 198, 192));
        jMenuBar1.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));

        menuGeneral.setText("General");
        menuGeneral.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                menuGeneralMouseClicked(evt);
            }
        });
        menuGeneral.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                menuGeneralActionPerformed(evt);
            }
        });
        jMenuBar1.add(menuGeneral);

        MenuEntrada.setText("Entradas");
        MenuEntrada.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                MenuEntradaMouseClicked(evt);
            }
        });
        MenuEntrada.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MenuEntradaActionPerformed(evt);
            }
        });
        jMenuBar1.add(MenuEntrada);

        menuSalida.setText("Salidas");
        menuSalida.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                menuSalidaMouseClicked(evt);
            }
        });
        jMenuBar1.add(menuSalida);

        menuInventario.setText("Inventario");
        menuInventario.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                menuInventarioMouseClicked(evt);
            }
        });
        jMenuBar1.add(menuInventario);

        menuReportes.setText("Reportes");
        menuReportes.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                menuReportesMouseClicked(evt);
            }
        });
        jMenuBar1.add(menuReportes);

        menuConsultas.setText("Consultas");
        jMenuBar1.add(menuConsultas);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void txtFechaEmisionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtFechaEmisionActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtFechaEmisionActionPerformed

    private void txtNRegistroActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtNRegistroActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtNRegistroActionPerformed

    private void txtCantidadActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtCantidadActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtCantidadActionPerformed

    private void txtProveedorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtProveedorActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtProveedorActionPerformed

    private void txtDescripcionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtDescripcionActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtDescripcionActionPerformed

    private void txtRecibidoPorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtRecibidoPorActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtRecibidoPorActionPerformed

    private void txtAlmacenRecibidoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtAlmacenRecibidoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtAlmacenRecibidoActionPerformed

    private void txtAlmacenSalidaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtAlmacenSalidaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtAlmacenSalidaActionPerformed

    private void txtIvaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtIvaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtIvaActionPerformed

    private void txtPrecioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtPrecioActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtPrecioActionPerformed

    private void txtPesoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtPesoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtPesoActionPerformed

    private void txtAutorizacionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtAutorizacionActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtAutorizacionActionPerformed

    private void txtTotalActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtTotalActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtTotalActionPerformed

    private void menuGeneralActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_menuGeneralActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_menuGeneralActionPerformed

    private void MenuEntradaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MenuEntradaActionPerformed
        this.dispose();
        vEntradas vE = new vEntradas();
        vE.setVisible(true);
    }//GEN-LAST:event_MenuEntradaActionPerformed

    private void MenuEntradaMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_MenuEntradaMouseClicked
        // TODO add your handling code here:
        //PRUEBA
        this.dispose();
        vEntradas vE = new vEntradas();
        vE.setVisible(true);
    }//GEN-LAST:event_MenuEntradaMouseClicked

    private void menuSalidaMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_menuSalidaMouseClicked
        this.dispose();
        vSalidas vS = new vSalidas();
        vS.setVisible(true);
    }//GEN-LAST:event_menuSalidaMouseClicked

    private void menuGeneralMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_menuGeneralMouseClicked
        this.dispose();
        vPrin vP = new vPrin();
        vP.setVisible(true);
    }//GEN-LAST:event_menuGeneralMouseClicked

    private void menuInventarioMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_menuInventarioMouseClicked
        this.dispose();
        vInventario vI = new vInventario();
        vI.setVisible(true);
    }//GEN-LAST:event_menuInventarioMouseClicked

    private void menuReportesMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_menuReportesMouseClicked
        this.dispose();
        vReportes vR = new vReportes();
        vR.setVisible(true);
    }//GEN-LAST:event_menuReportesMouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(vPrin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(vPrin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(vPrin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(vPrin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new vPrin().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JMenu MenuEntrada;
    private javax.swing.JMenuBar jMenuBar1;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanelGeneral;
    private javax.swing.JLabel lblAlmacenRecibido;
    private javax.swing.JLabel lblAlmacenSalida;
    private javax.swing.JLabel lblAutorizacion;
    private javax.swing.JLabel lblCantidad;
    private javax.swing.JLabel lblDescripcion;
    private javax.swing.JLabel lblFechaEmision;
    private javax.swing.JLabel lblIva;
    private javax.swing.JLabel lblNRegistro;
    private javax.swing.JLabel lblPeso;
    private javax.swing.JLabel lblPrecio;
    private javax.swing.JLabel lblProveedor;
    private javax.swing.JLabel lblRecibidoPor;
    private javax.swing.JLabel lblTotal;
    private javax.swing.JMenu menuConsultas;
    private javax.swing.JMenu menuGeneral;
    private javax.swing.JMenu menuInventario;
    private javax.swing.JMenu menuReportes;
    private javax.swing.JMenu menuSalida;
    private javax.swing.JTextField txtAlmacenRecibido;
    private javax.swing.JTextField txtAlmacenSalida;
    private javax.swing.JTextField txtAutorizacion;
    private javax.swing.JTextField txtCantidad;
    private javax.swing.JTextField txtDescripcion;
    private javax.swing.JTextField txtFechaEmision;
    private javax.swing.JTextField txtIva;
    private javax.swing.JTextField txtNRegistro;
    private javax.swing.JTextField txtPeso;
    private javax.swing.JTextField txtPrecio;
    private javax.swing.JTextField txtProveedor;
    private javax.swing.JTextField txtRecibidoPor;
    private javax.swing.JTextField txtTotal;
    // End of variables declaration//GEN-END:variables
}
