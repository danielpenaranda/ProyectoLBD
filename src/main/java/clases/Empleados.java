/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clases;

/**
 *
 * @author HUAWEI PC
 */
public class Empleados {
    int IDEmpleado;
    String nombre;
    String identificacion;
    String correoElectronico;
    double salario;
    String puesto;

    public Empleados() {
    }

    public Empleados(int IDEmpleado, String nombre, String identificacion, String correoElectronico, double salario, String puesto) {
        this.IDEmpleado = IDEmpleado;
        this.nombre = nombre;
        this.identificacion = identificacion;
        this.correoElectronico = correoElectronico;
        this.salario = salario;
        this.puesto = puesto;
    }

    public int getIDEmpleado() {
        return IDEmpleado;
    }

    public void setIDEmpleado(int IDEmpleado) {
        this.IDEmpleado = IDEmpleado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public String getCorreoElectronico() {
        return correoElectronico;
    }

    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }
    
    
}
