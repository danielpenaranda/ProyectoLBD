package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import ventanas.vlogin;

/**
 *
 * @author HUAWEI PC
 */
public class Inventario_PBD {

    public static void main(String[] args) {


        /*String aSQL= "";
        ConexionOracle conexion = new ConexionOracle();
        try{
            aSQL= "SELECT * FROM USERLOGIN";
            Connection conn = conexion.conectar();
            Statement cn = conn.createStatement();
            ResultSet res= cn.executeQuery(aSQL);
            while(res.next()){
                System.out.println("___________________");
                System.out.println(res.getInt("IDNO"));
                System.out.println(res.getString("LNAME"));
                System.out.println(res.getString("FNAME"));
                System.out.println(res.getString("BIRTH_DATE"));
                System.out.println(res.getString("USER_ROLE"));
                System.out.println(res.getString("USER_NAME"));
                System.out.println(res.getString("UNAME"));
                System.out.println(res.getString("UPASSWORD"));
            }
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, e);
            System.out.println(e);
        }*/
        try{
           Class.forName("oracle.jdbc.OracleDriver"); //DRIVER CLASS OF ORACLE CONNECTION
           String url="jdbc:oracle:thin:@localhost:1521:orcl";
           String uname="InvenViniPBD";
           String upass="InvenViniPBD";
           Connection conn = DriverManager.getConnection(url, uname,upass);
           String sql = "SELECT * FROM USERLOGIN";
           PreparedStatement pst= conn.prepareStatement(sql);
           ResultSet rs= pst.executeQuery();
            if (rs.next()) {
                System.out.println("FIRSTNAME"+"\t"+"MIDDLENAME"+"\t"+"LASTNAME");
                System.out.println(rs.getString(3)+"\t\t"+rs.getString(4)+"\t\t"+rs.getString(5));
                        }
            vlogin objLogin = new vlogin();
            objLogin.setVisible(true);
           
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, e);
        }
       
    }
}
