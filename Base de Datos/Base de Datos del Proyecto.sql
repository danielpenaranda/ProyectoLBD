CREATE TABLE InicioSesion (
    IDUsuario NUMBER PRIMARY KEY,
    NombreUsuario VARCHAR2(50) NOT NULL,
    Contrasena VARCHAR2(50) NOT NULL
);
CREATE TABLE USERLOGIN(
    IDNO NUMBER(38,0) PRIMARY KEY NOT NULL,
    LNAME VARCHAR2(20),
    FNAME VARCHAR2(20),
    BIRTH_DATE DATE,
    USER_ROLE VARCHAR2(20),
    UNAME VARCHAR2(20),
    UPASSWORD VARCHAR2(20));

CREATE TABLE RegistroProductos (
    IDProducto NUMBER PRIMARY KEY,
    NombreProducto VARCHAR2(100) NOT NULL,
    CodigoProducto VARCHAR2(20) NOT NULL,
    CategoriaProducto VARCHAR2(50) NOT NULL,
    DescripcionProducto CLOB,
    PrecioUnidad NUMBER(10, 2) NOT NULL,
    FechaVencimiento DATE,
    NivelInventario NUMBER
);

CREATE TABLE GestionInventario (
    IDRegistro NUMBER PRIMARY KEY,
    TipoRegistro VARCHAR2(20) NOT NULL, 
    IDProducto NUMBER,
    NombreProveedor VARCHAR2(100),
    DireccionProveedor VARCHAR2(150),
    TelefonoProveedor VARCHAR2(20),
    FechaRegistro DATE NOT NULL,
    CantidadActual NUMBER,
    CorreoProveedor VARCHAR2(100)
);

CREATE TABLE Clientes (
    IDCliente NUMBER PRIMARY KEY,
    NombreCompleto VARCHAR2(100) NOT NULL,
    IDUsuario VARCHAR2(50) NOT NULL,
    CorreoElectronico VARCHAR2(100),
    NumeroTelefono VARCHAR2(20)
);

CREATE TABLE HistorialCompras (
    IDCompra NUMBER PRIMARY KEY,
    IDCliente NUMBER,
    FechaCompra DATE NOT NULL,
    ProduComprado VARCHAR2(100) NOT NULL,
    Cantidad NUMBER,
    PrecioTotal NUMBER(10, 2)
);

CREATE TABLE Empleados (
    IDEmpleado NUMBER PRIMARY KEY,
    Nombre VARCHAR2(100) NOT NULL,
    Identificacion VARCHAR2(20) NOT NULL,
    CorreoElectronico VARCHAR2(100),
    Salario NUMBER(10, 2)
);

CREATE TABLE Puestos (
    IDPuesto NUMBER PRIMARY KEY,
    NombrePuesto VARCHAR2(100) NOT NULL
);

CREATE TABLE EmpleadosPuestos (
    IDEmpleado NUMBER,
    IDPuesto NUMBER,
    FOREIGN KEY (IDEmpleado) REFERENCES Empleados(IDEmpleado),
    FOREIGN KEY (IDPuesto) REFERENCES Puestos(IDPuesto)
);

CREATE TABLE Ventas (
    IDVenta NUMBER PRIMARY KEY,
    FechaVenta DATE NOT NULL,
    IDCliente NUMBER,
    TotalVenta NUMBER(10, 2) NOT NULL
);

CREATE TABLE FacturasRecibos (
    IDFactura NUMBER PRIMARY KEY,
    IDVenta NUMBER,
    Fecha DATE NOT NULL,
    FOREIGN KEY (IDVenta) REFERENCES Ventas(IDVenta)
);

CREATE TABLE Pagos (
    Pago NUMBER PRIMARY KEY,
    IDVenta NUMBER,
    TipoPago VARCHAR2(50) NOT NULL,
    Monto NUMBER(10, 2) NOT NULL,
    FOREIGN KEY (IDVenta) REFERENCES Ventas(IDVenta)
);

CREATE TABLE DevolucionesReembolsos (
    IDDevolucion NUMBER PRIMARY KEY,
    IDVenta NUMBER,
    FechaDevolucion DATE NOT NULL,
    MontoReembolso NUMBER(10, 2) NOT NULL,
    FOREIGN KEY (IDVenta) REFERENCES Ventas(IDVenta)
);

CREATE TABLE Promociones (
    ID_PROMO NUMBER PRIMARY KEY,
    NOMBRE_PROMO VARCHAR2(100),
    DESCRIPCION VARCHAR2(255),
    DESCUENTO NUMBER
);

CREATE TABLE CuponesDescuento (
    ID_CUPON NUMBER PRIMARY KEY,
    CODIGO VARCHAR2(30) UNIQUE,
    DESCUENTO NUMBER,
    FECHA_EXPIRACION DATE
);
/*
FOREIGN KEY(FECHAREGISTRRO)REFERENCES GESTIONINVENTARIO(FECHAREGISTRO),
FOREIGN KEY(NOMBREPROVEEDOR)REFERENCES GESTIONINVENTARIO(NOMBREPROVEEDOR),
FOREIGN KEY(DIRECCIONPROVEEDOR)REFERENCES GESTIONINVENTARIO(DIRECCIONPROVEEDOR),
FOREIGN KEY(NOMBREPRODUCTO)REFERENCES REGISTROPRODUCTOS(NOMBREPRODUCTO),
FOREIGN KEY(CATEGORIAPRODUCTO)REFERENCES REGISTROPRODUCTOS(CATEGORIAPRODUCTO),
FOREIGN KEY(FECHAVENCIMIENTO)REFERENCES REGISTROPRODUCTOS(FECHAVENCIMIENTO),
FOREIGN KEY(PRECIOUNIDAD)REFERENCES REGISTROPRODUCTOS(PRECIOUNIDAD));*/

CREATE TABLE EntradaMercan (
    ID_REGISTRO INT PRIMARY KEY NOT NULL,
    FECHAREGISTRO DATE not null,
    HORA TIMESTAMP NOT NULL,
    NOMBREPROVEEDOR VARCHAR2(100) NOT NULL,
    DIRECCIONPROVEEDOR VARCHAR2(150) NOT NULL,
    NOMBREPRODUCTO VARCHAR2(100) NOT NULL,
    DESCRIPCION_REGISTRO VARCHAR2(255) NOT NULL,
    CATEGORIAPRODUCTO VARCHAR2(50) NOT NULL,
    CANT_CAJAS_REGISTRO NUMBER(10) NOT NULL,
    CANT_UNIDADES_REGISTRO NUMBER(10)NOT NULL,
    FECHAVENCIMIENTO DATE NOT NULL,
    PRECIOUNIDAD NUMBER(10, 2) NOT NULL,
    PRECIO_IVA NUMBER,
    PRECIO_TOT NUMBER NOT NULL
/*
FOREIGN KEY(FECHAREGISTRRO)REFERENCES GESTIONINVENTARIO(FECHAREGISTRO),
FOREIGN KEY(NOMBREPROVEEDOR)REFERENCES GESTIONINVENTARIO(NOMBREPROVEEDOR),
FOREIGN KEY(DIRECCIONPROVEEDOR)REFERENCES GESTIONINVENTARIO(DIRECCIONPROVEEDOR),
FOREIGN KEY(NOMBREPRODUCTO)REFERENCES REGISTROPRODUCTOS(NOMBREPRODUCTO),
FOREIGN KEY(CATEGORIAPRODUCTO)REFERENCES REGISTROPRODUCTOS(CATEGORIAPRODUCTO),
FOREIGN KEY(FECHAVENCIMIENTO)REFERENCES REGISTROPRODUCTOS(FECHAVENCIMIENTO),
FOREIGN KEY(PRECIOUNIDAD)REFERENCES REGISTROPRODUCTOS(PRECIOUNIDAD));*/
);
CREATE TABLE SalidaMercan (
    ID_SALIDA INT PRIMARY KEY NOT NULL,
    IDEMPLEADO INT NOT NULL,
    FECHAREGISTRO DATE NOT NULL,
    HORA TIMESTAMP NOT NULL,
    NOMBREPROVEEDOR VARCHAR2(100) NOT NULL,
    DIRECCIONPROVEEDOR VARCHAR2(150) NOT NULL,
    NOMBREPRODUCTO VARCHAR2(100) NOT NULL,
    DESCRIPCION_SALIDA VARCHAR2(255) NOT NULL,
    CATEGORIAPRODUCTO VARCHAR2(50) NOT NULL,
    CANT_CAJAS NUMBER(10) NOT NULL,
    CANT_UNIDADES NUMBER(10) NOT NULL,
    FECHAVENCIMIENTO DATE NOT NULL,
    PRECIOUNIDAD NUMBER(10, 2) NOT NULL,
    PRECIO_IVA NUMBER,
    PRECIO_TOT NUMBER NOT NULL,
    FOREIGN KEY (IDEMPLEADO) REFERENCES Empleados(IDEmpleado)
);

--INSERTS
-- Insertar datos en la tabla InicioSesion
INSERT INTO InicioSesion (IDUsuario, NombreUsuario, Contrasena) 
VALUES (2, 'Daniel', '1234');
INSERT INTO InicioSesion (IDUsuario, NombreUsuario, Contrasena) 
VALUES(3, 'Clifford', '5678');
INSERT INTO InicioSesion (IDUsuario, NombreUsuario, Contrasena) 
VALUES(4, 'Alejandro', '9876');

-- Insertar datos en la tabla USERLOGIN
INSERT INTO USERLOGIN (IDNO, LNAME, FNAME, BIRTH_DATE, USER_ROLE, UNAME, UPASSWORD) 
VALUES (1, 'Fernandez', 'Nicole', TO_DATE('2000-10-11', 'YYYY-MM-DD'), 'Cajera', 'Niki', 'Niki');
INSERT INTO USERLOGIN (IDNO, LNAME, FNAME, BIRTH_DATE, USER_ROLE, UNAME, UPASSWORD) 
VALUES(2, 'Alvarez', 'Julian', TO_DATE('1995-05-15', 'YYYY-MM-DD'), 'Limpieza', 'juli', 'juli');
INSERT INTO USERLOGIN (IDNO, LNAME, FNAME, BIRTH_DATE, USER_ROLE, UNAME, UPASSWORD) 
VALUES(3, 'Delgado', 'Pablo', TO_DATE('2003-11-20', 'YYYY-MM-DD'), 'Cajero', 'pabloDelga', 'pabloDelga');

-- Insertar datos en la tabla RegistroProductos
INSERT INTO RegistroProductos (IDProducto, NombreProducto, CodigoProducto, CategoriaProducto, DescripcionProducto, PrecioUnidad, FechaVencimiento, NivelInventario) 
VALUES (1, 'Atún', 'COD001', 'Enlatados', 'Atún sabeMas', 1200, TO_DATE('2027-12-31', 'YYYY-MM-DD'), 100);
INSERT INTO RegistroProductos (IDProducto, NombreProducto, CodigoProducto, CategoriaProducto, DescripcionProducto, PrecioUnidad, FechaVencimiento, NivelInventario) 
VALUES(2, 'Arroz', 'COD002', 'Granos', 'Arroz tío pelon 4kg', 5600, TO_DATE('2024-06-30', 'YYYY-MM-DD'), 75);
INSERT INTO RegistroProductos (IDProducto, NombreProducto, CodigoProducto, CategoriaProducto, DescripcionProducto, PrecioUnidad, FechaVencimiento, NivelInventario) 
VALUES(3, 'espaguetti', 'COD003', 'pastas', 'espaguetti suli', 700, TO_DATE('2023-10-15', 'YYYY-MM-DD'), 50);

-- Insertar datos en la tabla EntradaMercan
INSERT INTO EntradaMercan (ID_REGISTRO, FECHAREGISTRO, HORA, NOMBREPROVEEDOR, DIRECCIONPROVEEDOR, NOMBREPRODUCTO, DESCRIPCION_REGISTRO, CATEGORIAPRODUCTO, CANT_CAJAS_REGISTRO, CANT_UNIDADES_REGISTRO, 
    FECHAVENCIMIENTO, PRECIOUNIDAD, PRECIO_IVA, PRECIO_TOT) 
    VALUES (1, TO_DATE('2023-05-16', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'JACKS', 'Tibas, san josé', 'Ranchitas', 'Paquetitos de 100g en variedad de sabores', 'Snaks', 3, 400, TO_DATE('2025-11-16', 'YYYY-MM-DD'), 110, 15, 50000);
INSERT INTO EntradaMercan (ID_REGISTRO, FECHAREGISTRO, HORA, NOMBREPROVEEDOR, DIRECCIONPROVEEDOR, NOMBREPRODUCTO, DESCRIPCION_REGISTRO, CATEGORIAPRODUCTO, CANT_CAJAS_REGISTRO, CANT_UNIDADES_REGISTRO, 
    FECHAVENCIMIENTO, PRECIOUNIDAD, PRECIO_IVA, PRECIO_TOT) 
    VALUES(2, TO_DATE('2023-06-15', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'POPS', 'Barbara de Heredia', 'Pinta de helados', 'Pinta de helados de 500g en variedad de sabores', 'Helados', 6, 100, TO_DATE('2025-10-15', 'YYYY-MM-DD'), 2500, 250, 275000);
INSERT INTO EntradaMercan (ID_REGISTRO, FECHAREGISTRO, HORA, NOMBREPROVEEDOR, DIRECCIONPROVEEDOR, NOMBREPRODUCTO, DESCRIPCION_REGISTRO, CATEGORIAPRODUCTO, CANT_CAJAS_REGISTRO, CANT_UNIDADES_REGISTRO, 
    FECHAVENCIMIENTO, PRECIOUNIDAD, PRECIO_IVA, PRECIO_TOT) 
    VALUES(3, TO_DATE('2023-07-14', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'COCACOLA', 'La carpio, Alajuela', 'Coca Cola', 'Coca colas retornables de vidrio y plasticas en diferentes tamaños', 'Gaseosas', 8, 80, TO_DATE('2026-11-14', 'YYYY-MM-DD'), 1000, 200, 96000);

--INSERTAR EN EMPLEADOS
INSERT INTO EMPLEADOS(IDEMPLEADO, NOMBRE,IDENTIFICACION, CORREOELECTRONICO, SALARIO)
VALUES(1, 'Nicole', '109630776', 'nicole@gmail.com', 330000);
INSERT INTO EMPLEADOS(IDEMPLEADO, NOMBRE,IDENTIFICACION, CORREOELECTRONICO, SALARIO)
VALUES(2, 'Clifford', '104638726', 'cliff@gmail.com', 320000);
INSERT INTO EMPLEADOS(IDEMPLEADO, NOMBRE,IDENTIFICACION, CORREOELECTRONICO, SALARIO)
VALUES(3, 'Alejandeo', '304610776', 'ale@gmail.com', 340000);
-- Insertar datos en la tabla SalidaMercan

INSERT INTO SalidaMercan (ID_SALIDA,IDEMPLEADO,FECHAREGISTRO,HORA,NOMBREPROVEEDOR,DIRECCIONPROVEEDOR, NOMBREPRODUCTO, DESCRIPCION_SALIDA, CATEGORIAPRODUCTO, CANT_CAJAS, CANT_UNIDADES, 
    FECHAVENCIMIENTO,PRECIOUNIDAD, PRECIO_IVA, PRECIO_TOT) 
    VALUES (1, 1, TO_DATE('2023-09-16', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'POPS', 'Barbara de Heredia', 'Cajas de helados', 'Se entregan cajas de helados a cliente', 'Helados', 3, 30, TO_DATE('2025-10-15', 'YYYY-MM-DD'), 2500, 250, 92000);
INSERT INTO SalidaMercan (ID_SALIDA,IDEMPLEADO,FECHAREGISTRO,HORA,NOMBREPROVEEDOR,DIRECCIONPROVEEDOR, NOMBREPRODUCTO, DESCRIPCION_SALIDA, CATEGORIAPRODUCTO, CANT_CAJAS, CANT_UNIDADES, 
    FECHAVENCIMIENTO,PRECIOUNIDAD, PRECIO_IVA, PRECIO_TOT) 
    VALUES(2, 2, TO_DATE('2023-11-15', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'COCACOLA', 'La carpio, Alajuela', 'Caja de coca colas', 'Se entregan cajas de gaseosas a cliente para evento', 'Gaseosas', 4, 50, TO_DATE('2026-11-14', 'YYYY-MM-DD'), 1000, 200, 55000);
INSERT INTO SalidaMercan (ID_SALIDA,IDEMPLEADO,FECHAREGISTRO,HORA,NOMBREPROVEEDOR,DIRECCIONPROVEEDOR, NOMBREPRODUCTO, DESCRIPCION_SALIDA, CATEGORIAPRODUCTO, CANT_CAJAS, CANT_UNIDADES, 
    FECHAVENCIMIENTO,PRECIOUNIDAD, PRECIO_IVA, PRECIO_TOT) 
    VALUES(3, 3, TO_DATE('2023-12-14', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 'JACKS', 'Tibas, san josé', 'Caja de snaks', 'Se entrega una caja de snaks de patrocinio', 'Snaks', 2, 40, TO_DATE('2025-11-16', 'YYYY-MM-DD'), 110, 15, 6000);
    
    
    
--VISTAS
/*1- Vista que muestre el id del empleado de la tabla empleados y muestre 
la fecha, hora, producto, descripcion y precio total de la tabla registroMercan. SI*/
CREATE OR REPLACE VIEW Vista_EntradaMercancia AS
SELECT ID_REGISTRO, FECHAREGISTRO, HORA, NOMBREPRODUCTO AS PRODUCTO, DESCRIPCION_REGISTRO AS DESCRIPCION, PRECIO_TOT AS PRECIO_TOTAL
FROM EntradaMercan;

/*2- Vista que muestre todos los registros de entrada y salida de mercancia
por el empleado nicole.*/
CREATE OR REPLACE VIEW Vista_EntradaYSalida_Empleado AS
SELECT EM.ID_REGISTRO, EM.FECHAREGISTRO, EM.HORA, EM.NOMBREPRODUCTO, EM.DESCRIPCION_REGISTRO, EM.CATEGORIAPRODUCTO, EM.CANT_CAJAS_REGISTRO, EM.CANT_UNIDADES_REGISTRO, EM.FECHAVENCIMIENTO, EM.PRECIOUNIDAD, EM.PRECIO_IVA, EM.PRECIO_TOT
FROM EntradaMercan EM
JOIN Empleados E ON EM.IDEMPLEADO = E.IDEMPLEADO
WHERE E.NOMBRE = 'Nicole'
UNION ALL
SELECT SM.ID_SALIDA, SM.FECHAREGISTRO, SM.HORA, SM.NOMBREPRODUCTO, SM.DESCRIPCION_SALIDA, SM.CATEGORIAPRODUCTO, SM.CANT_CAJAS, SM.CANT_UNIDADES, SM.FECHAVENCIMIENTO, SM.PRECIOUNIDAD, SM.PRECIO_IVA, SM.PRECIO_TOT
FROM SalidaMercan SM
JOIN Empleados E ON SM.IDEMPLEADO = E.IDEMPLEADO
WHERE E.NOMBRE = 'Nicole';

/*3- Vista que almacene el id de empleado de la tabla empleados, el id de producto, la cantidad de cajas y unidades, 
el cliente, la fecha y el precio total de la tabla salidaMercan. YES*/
CREATE OR REPLACE VIEW Vista_SalidaMercan AS
SELECT S.IDEMPLEADO, S.NOMBREPRODUCTO AS ID_PRODUCTO, S.CANT_CAJAS AS CAJAS, S.CANT_UNIDADES AS UNIDADES, C.NOMBRECOMPLETO AS CLIENTE, S.FECHAREGISTRO AS FECHA, S.PRECIO_TOT AS PRECIO_TOTAL
FROM SalidaMercan S
JOIN Clientes C ON S.IDEMPLEADO = C.IDCLIENTE;

/*4-Vista que almacene todas las entradas y salidas de mercancia de las tablas
entradaMercan y salidaMercan y los ordene por fecha. SI*/
CREATE OR REPLACE VIEW Vista_Registros_Ordenados AS
SELECT 'Entrada' AS Tipo, ID_REGISTRO, FECHAREGISTRO, HORA, NOMBREPROVEEDOR, DIRECCIONPROVEEDOR, NOMBREPRODUCTO, DESCRIPCION_REGISTRO, CATEGORIAPRODUCTO, CANT_CAJAS_REGISTRO AS CANT_CAJAS, CANT_UNIDADES_REGISTRO AS CANT_UNIDADES, FECHAVENCIMIENTO, PRECIOUNIDAD, PRECIO_IVA, PRECIO_TOT
FROM EntradaMercan
UNION ALL
SELECT 'Salida' AS Tipo, ID_SALIDA, FECHAREGISTRO, HORA, NOMBREPROVEEDOR, DIRECCIONPROVEEDOR, NOMBREPRODUCTO, DESCRIPCION_SALIDA, CATEGORIAPRODUCTO, CANT_CAJAS, CANT_UNIDADES, FECHAVENCIMIENTO, PRECIOUNIDAD, PRECIO_IVA, PRECIO_TOT
FROM SalidaMercan
ORDER BY FECHAREGISTRO;

/*5- Vista que almacene todos los empleados de la tabla empleados. SI*/
CREATE OR REPLACE VIEW Vista_TodosEmpleados AS
SELECT *
FROM Empleados;

--FUNCIONES
/*1- Necesito crear una funcion que agarre el precio total de todos los registros de entrada de mercancia 
de la tabla EntradaMercan y los sume. SI*/
CREATE OR REPLACE FUNCTION SumaPrecioTotalEntrada RETURN NUMBER AS
  total NUMBER;
BEGIN
  SELECT SUM(PRECIO_TOT) INTO total
  FROM EntradaMercan;
  RETURN total;
END;

/*2- Funcion que agarre el precio_tot de todos los registros de salida de mercancia de la tabla 
SalidaMercan y tambien los salarios de la tabla empleados y los sume. SI*/
CREATE OR REPLACE FUNCTION SumaPrecioTotalSalidaEmpleados RETURN NUMBER AS
  total NUMBER;
BEGIN
  SELECT SUM(PRECIO_TOT) + SUM(SALARIO) INTO total
  FROM SalidaMercan, Empleados;
  RETURN total;
END;

/*3- Funcion que agarre el precio total de todos los registros de entrada de mercancia de la tabla 
EntradaMercan los sume y a esto, restarle el precio_tot de todos los registros de salida de mercancia
de la tabla SalidaMercan. SI*/
CREATE OR REPLACE FUNCTION DiferenciaEntradaSalida RETURN NUMBER AS
  total_entrada NUMBER;
  total_salida NUMBER;
  diferencia NUMBER;
BEGIN
  SELECT SUM(PRECIO_TOT) INTO total_entrada
  FROM EntradaMercan;
  
  SELECT SUM(PRECIO_TOT) INTO total_salida
  FROM SalidaMercan;
  
  diferencia := total_entrada - total_salida;
  RETURN diferencia;
END;

/*4- Funcion que agarre los salario de la tabla empleados y los sume. SI*/
CREATE OR REPLACE FUNCTION SumaSalariosEmpleados RETURN NUMBER AS
  total_salarios NUMBER;
BEGIN
  SELECT SUM(SALARIO) INTO total_salarios
  FROM Empleados;
  RETURN total_salarios;
END;

/*5- Función que agarre los precio_Iva de la tabla entradaMercan y los sume. SI*/
CREATE OR REPLACE FUNCTION SumaPrecioIVAEEntrada RETURN NUMBER AS
  total_iva NUMBER;
BEGIN
  SELECT SUM(PRECIO_IVA) INTO total_iva
  FROM EntradaMercan;
  RETURN total_iva;
END;

/*6- Función que agarre los precio_Iva de la tabla salidaMercan y los sume. SI*/
CREATE OR REPLACE FUNCTION SumaPrecioIVASalida RETURN NUMBER AS
  total_iva NUMBER;
BEGIN
  SELECT SUM(PRECIO_IVA) INTO total_iva
  FROM SalidaMercan;
  RETURN total_iva;
END;

/*7- Función que agarre la cant_cajas de la tabla salidaMercan y los sume. SI*/
CREATE OR REPLACE FUNCTION SumaCantCajasSalida RETURN NUMBER AS
  total_cajas NUMBER;
BEGIN
  SELECT SUM(CANT_CAJAS) INTO total_cajas
  FROM SalidaMercan;
  RETURN total_cajas;
END;

/*8- Función que agarre la cant_unidades de la tabla salidaMercan y los sume. SI*/

CREATE OR REPLACE FUNCTION SumaCantUnidadesSalida RETURN NUMBER AS
  total_unidades NUMBER;
BEGIN
  SELECT SUM(CANT_UNIDADES) INTO total_unidades
  FROM SalidaMercan;
  RETURN total_unidades;
END;

--TRIGGERS
--1- SI
CREATE OR REPLACE TRIGGER DespuesInsertarCliente
AFTER INSERT ON Clientes
FOR EACH ROW
BEGIN
    INSERT INTO HistorialCompras (IDCliente, FechaCompra)
    VALUES (:NEW.IDCliente, SYSDATE);
END DespuesInsertarCliente;

--2-SI
CREATE OR REPLACE TRIGGER PrevioActualizarProducto
BEFORE UPDATE ON RegistroProductos
FOR EACH ROW
BEGIN
    IF :NEW.PrecioUnidad > 100000 THEN
        RAISE_APPLICATION_ERROR(-20001, 'El precio no puede ser mayor a 100000');
    END IF;
END PrevioActualizarProducto;

--3
CREATE OR REPLACE TRIGGER PosBorrarUsuario
AFTER DELETE ON InicioSesion
FOR EACH ROW
BEGIN
    INSERT INTO LogEliminacionUsuarios (ID_usuario, FechaEliminacion)
    VALUES (:OLD.ID_usuario, SYSDATE);

    UPDATE EstadisticasSistema
    SET UsuariosEliminados = UsuariosEliminados + 1;

    DBMS_OUTPUT.PUT_LINE('Usuario eliminado correctamente.');
END PosBorrarUsuario;


--4-SI
CREATE OR REPLACE TRIGGER AntesInsertarDevolucion
BEFORE INSERT ON DevolucionesReembolsos
FOR EACH ROW
BEGIN
    IF :NEW.MontoReembolso > 100000 THEN
        RAISE_APPLICATION_ERROR(-20001, 'El monto de devolución no puede ser mayor a 100000');
    END IF;
END AntesInsertarDevolucion;

--5-SI
CREATE OR REPLACE TRIGGER PosInsertarCuponDescuento
AFTER INSERT ON CuponesDescuento
FOR EACH ROW
BEGIN
    IF TO_DATE(:NEW.FECHA_EXPIRACION, 'YYYY-MM-DD') < SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20001, 'El cupón ha expirado');
    END IF;
END PosInsertarCuponDescuento;

--Procedimientos almacenados:
--1
CREATE OR REPLACE PROCEDURE InsertarUsuario (
    p_NombreUsuario IN VARCHAR2,
    p_Contrasena IN VARCHAR2
)
AS
BEGIN
    INSERT INTO InicioSesion (ID_usuario, NombreUsuario, Contrasena)
    VALUES (seq_Usuario.nextval, p_NombreUsuario, p_Contrasena);
END InsertarUsuario;

--2
CREATE OR REPLACE PROCEDURE ActualizarUsuario (
    p_ID_usuario IN NUMBER,
    p_NombreUsuario IN VARCHAR2,
    p_Contrasena IN VARCHAR2
)
AS
BEGIN
    UPDATE InicioSesion
    SET NombreUsuario = p_NombreUsuario, Contrasena = p_Contrasena
    WHERE IDUsuario = p_IDUsuario;
END ActualizarUsuario;

--3
CREATE OR REPLACE PROCEDURE EliminarUsuario (
    p_ID_usuario IN NUMBER
)
AS
BEGIN
    DELETE FROM InicioSesion WHERE ID_usuario = p_ID_usuario;
END EliminarUsuario;

--4
CREATE OR REPLACE PROCEDURE InsertarProducto (
    p_NombreProducto IN VARCHAR2,
    p_PrecioUnidad IN NUMBER
)
AS
BEGIN
    INSERT INTO RegistroProductos (IDProducto, NombreProducto, PrecioUnidad)
    VALUES (seq_Producto.nextval, p_NombreProducto, p_PrecioUnidad);
END InsertarProducto;

--5-SI
CREATE OR REPLACE PROCEDURE ActualizarProducto (
    p_IDProducto IN NUMBER,
    p_NombreProducto IN VARCHAR2,
    p_PrecioUnidad IN NUMBER
)
AS
BEGIN
    UPDATE RegistroProductos
    SET NombreProducto = p_NombreProducto, PrecioUnidad = p_PrecioUnidad
    WHERE IDProducto = p_IDProducto;
END ActualizarProducto;

--6-SI
CREATE OR REPLACE PROCEDURE EliminarProducto (
    p_IDProducto IN NUMBER
)
AS
BEGIN
    DELETE FROM RegistroProductos WHERE IDProducto = p_IDProducto;
END EliminarProducto;

--7-SI
CREATE OR REPLACE PROCEDURE ActualizarInventario (
    p_IDRegistro IN NUMBER,
    p_CantidadActual IN NUMBER
)
AS
BEGIN
    UPDATE GestionInventario
    SET CantidadActual = p_CantidadActual
    WHERE IDRegistro = p_IDRegistro;
END ActualizarInventario;

--8-SI
CREATE OR REPLACE PROCEDURE ActualizarInventario (
    p_IDRegistro IN NUMBER,
    p_CantidadActual IN NUMBER
)
AS
BEGIN
    UPDATE GestionInventario
    SET CantidadActual = p_CantidadActual
    WHERE IDRegistro = p_IDRegistro;
END ActualizarInventario;

--9-SI
CREATE OR REPLACE PROCEDURE EliminarInventario (
    p_IDRegistro IN NUMBER
)
AS
BEGIN
    DELETE FROM GestionInventario WHERE IDRegistro = p_IDRegistro;
END EliminarInventario;

--10
CREATE OR REPLACE PROCEDURE InsertarCliente (
    p_NombreCompleto IN VARCHAR2,
    p_IDUsuario IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Clientes (IDCliente, NombreCompleto, ID_usuario)
    VALUES (seq_Cliente.nextval, p_NombreCompleto, p_ID_usuario);
END InsertarCliente;

--11-SI
CREATE OR REPLACE PROCEDURE ActualizarCliente (
    p_IDCliente IN NUMBER,
    p_NombreCompleto IN VARCHAR2,
    p_NumeroTelefono IN VARCHAR2
)
AS
BEGIN
    UPDATE Clientes
    SET NombreCompleto = p_NombreCompleto, NumeroTelefono = p_NumeroTelefono
    WHERE IDCliente = p_IDCliente;
END ActualizarCliente;

--12-SI
CREATE OR REPLACE PROCEDURE EliminarCliente (
    p_IDCliente IN NUMBER
)
AS
BEGIN
    DELETE FROM Clientes WHERE IDCliente = p_IDCliente;
END EliminarCliente;

--13
CREATE OR REPLACE PROCEDURE InsertarHistorialCompra (
    p_IDCliente IN NUMBER,
    p_ProduComprado IN VARCHAR2,
    p_Cantidad IN NUMBER,
    p_PrecioTotal IN NUMBER
)
AS
BEGIN
    INSERT INTO HistorialCompras (IDCompra, IDCliente, FechaCompra, ProduComprado, Cantidad, PrecioTotal)
    VALUES (seq_HistorialCompra.nextval, p_IDCliente, SYSDATE, p_ProduComprado, p_Cantidad, p_PrecioTotal);
END InsertarHistorialCompra;

--14
CREATE OR REPLACE PROCEDURE InsertarEmpleado (
    p_Nombre IN VARCHAR2,
    p_Identificacion IN VARCHAR2,
    p_CorreoElectronico IN VARCHAR2,
    p_Salario IN NUMBER
)
AS
BEGIN
    INSERT INTO Empleados (IDEmpleado, Nombre, Identificacion, CorreoElectronico, Salario)
    VALUES (seq_Empleado.nextval, p_Nombre, p_Identificacion, p_CorreoElectronico, p_Salario);
END InsertarEmpleado;

--15-SI
CREATE OR REPLACE PROCEDURE ActualizarEmpleado (
    p_IDEmpleado IN NUMBER,
    p_Nombre IN VARCHAR2,
    p_CorreoElectronico IN VARCHAR2,
    p_Salario IN NUMBER
)
AS
BEGIN
    UPDATE Empleados
    SET Nombre = p_Nombre, CorreoElectronico = p_CorreoElectronico, Salario = p_Salario
    WHERE IDEmpleado = p_IDEmpleado;
END ActualizarEmpleado;

--16-SI
CREATE OR REPLACE PROCEDURE EliminarEmpleado (
    p_IDEmpleado IN NUMBER
)
AS
BEGIN
    DELETE FROM Empleados WHERE IDEmpleado = p_IDEmpleado;
END EliminarEmpleado;

--17
CREATE OR REPLACE PROCEDURE InsertarVenta (
    p_IDCliente IN NUMBER,
    p_TotalVenta IN NUMBER
)
AS
BEGIN
    INSERT INTO Ventas (IDVenta, FechaVenta, IDCliente, TotalVenta)
    VALUES (seq_Venta.nextval, SYSDATE, p_IDCliente, p_TotalVenta);
END InsertarVenta;

--18
CREATE OR REPLACE PROCEDURE InsertarFacturaRecibo (
    p_IDVenta IN NUMBER
)
AS
BEGIN
    INSERT INTO FacturasRecibos (IDFactura, IDVenta, Fecha)
    VALUES (seq_FacturaRecibo.nextval, p_IDVenta, SYSDATE);
END InsertarFacturaRecibo;

--19
CREATE OR REPLACE PROCEDURE InsertarPago (
    p_IDVenta IN NUMBER,
    p_TipoPago IN VARCHAR2,
    p_Monto IN NUMBER
)
AS
BEGIN
    INSERT INTO Pagos (Pago, IDVenta, TipoPago, Monto)
    VALUES (seq_Pago.nextval, p_IDVenta, p_TipoPago, p_Monto);
END InsertarPago;

--20
CREATE OR REPLACE PROCEDURE InsertarDevolucionReembolso (
    p_IDVenta IN NUMBER,
    p_MontoReembolso IN NUMBER
)
AS
BEGIN
    INSERT INTO DevolucionesReembolsos (IDDevolucion, IDVenta, FechaDevolucion, MontoReembolso)
    VALUES (seq_DevolucionReembolso.nextval, p_IDVenta, SYSDATE, p_MontoReembolso);
END InsertarDevolucionReembolso;

--21
CREATE OR REPLACE PROCEDURE InsertarPromocion (
    p_NOMBRE_PROMO IN VARCHAR2,
    p_DESCRIPCION IN VARCHAR2,
    p_DESCUENTO IN NUMBER
)
AS
BEGIN
    INSERT INTO Promociones (ID_PROMO, NOMBRE_PROMO, DESCRIPCION, DESCUENTO)
    VALUES (seq_Promocion.nextval, p_NOMBRE_PROMO, p_DESCRIPCION, p_DESCUENTO);
END InsertarPromocion;

--22
CREATE OR REPLACE PROCEDURE InsertarCuponDescuento (
    p_CODIGO IN VARCHAR2,
    p_DESCUENTO IN NUMBER,
    p_FECHA_EXPIRACION IN DATE
)
AS
BEGIN
    INSERT INTO CuponesDescuento (ID_CUPON, CODIGO, DESCUENTO, FECHA_EXPIRACION)
    VALUES (seq_CuponDescuento.nextval, p_CODIGO, p_DESCUENTO, p_FECHA_EXPIRACION);
END InsertarCuponDescuento;

--23-SI
CREATE OR REPLACE PROCEDURE InsertarEmpleadoPuesto (
    p_IDEmpleado IN NUMBER,
    p_IDPuesto IN NUMBER
)
AS
BEGIN
    INSERT INTO EmpleadosPuestos (IDEmpleado, IDPuesto)
    VALUES (p_IDEmpleado, p_IDPuesto);
END InsertarEmpleadoPuesto;

--24
CREATE OR REPLACE PROCEDURE InsertarPuesto (
    p_NombrePuesto IN VARCHAR2
)
AS
BEGIN
    INSERT INTO Puestos (IDPuesto, NombrePuesto)
    VALUES (seq_Puesto.nextval, p_NombrePuesto);
END InsertarPuesto;

--25-SI
CREATE OR REPLACE PROCEDURE ObtenerClientePorUsuario (
    p_IDUsuario IN VARCHAR2
)
AS
    CURSOR cliente_cursor IS
        SELECT * FROM Clientes
        WHERE IDUsuario = p_IDUsuario;
    cliente_rec Clientes%ROWTYPE;
BEGIN
    OPEN cliente_cursor;
    LOOP
        FETCH cliente_cursor INTO cliente_rec;
        EXIT WHEN cliente_cursor%NOTFOUND;
        -- Realizar acciones con el cliente obtenido
    END LOOP;
    CLOSE cliente_cursor;
END ObtenerClientePorUsuario;

--CURSORES
SET SERVEROUTPUT ON;
--1
DECLARE 
  CURSOR cur_empleados IS
    SELECT * FROM Empleados;
  IDEmpleado empleados%ROWTYPE;
BEGIN
  OPEN cur_empleados;
  LOOP
    FETCH cur_empleados INTO Puestos;
    EXIT WHEN cur_empleados%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(IDEmpleado.Nombre || ' ' || IDEmpleado.Apellido);
  END LOOP;
  CLOSE cur_empleados;
END;

--2
DECLARE 
  CURSOR cur_puestos IS
    SELECT * FROM Puestos;
  
  IDPuesto Puestos%ROWTYPE;
  
BEGIN

  OPEN cur_puestos;
  
  LOOP
    FETCH cur_puestos INTO Puestos;
    EXIT WHEN cur_puestos%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE(IDPuesto.NombrePuesto);
    
  END LOOP;
  
  CLOSE cur_puestos;
  
END;

--3
DECLARE 
  CURSOR cur_sesion IS
    SELECT * FROM InicioSesion;
  
  IDUsuario InicioSesion%ROWTYPE;
  
BEGIN

  OPEN cur_sesion;
  
  LOOP
    FETCH cur_sesion INTO Puestos;
    EXIT WHEN cur_sesion%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE(InicioSesion.IDUsuario);
    
  END LOOP;
  
  CLOSE cur_sesion;
  
END;

--4-SI
DECLARE 
  CURSOR cur_compras IS
    SELECT * FROM HistorialCompras;
  
  reg_compra HistorialCompras%ROWTYPE;
  
BEGIN

  OPEN cur_compras;
  
  LOOP
    FETCH cur_compras INTO reg_compra;
    EXIT WHEN cur_compras%NOTFOUND;
    
    DBMS_OUTPUT.PUT_LINE('ID Compra: ' || reg_compra.IDCompra);
    DBMS_OUTPUT.PUT_LINE('ID Cliente: ' || reg_compra.IDCliente);
    
  END LOOP;
  
  CLOSE cur_compras;
  
END;



--PAQUETES
--1
CREATE OR REPLACE PACKAGE paquete_puestos AS

  PROCEDURE crear_tabla;

  PROCEDURE insertar_puesto (
    p_idpuesto NUMBER,
    p_puesto VARCHAR2,
    p_salario NUMBER
  );

  PROCEDURE actualizar_salario (
    p_idpuesto NUMBER,
    p_nuevo_salario NUMBER
  );

  FUNCTION obtener_puestos RETURN SYS_REFCURSOR;

END paquete_puestos;
/
--2
CREATE OR REPLACE PACKAGE BODY paquete_puestos AS

  PROCEDURE crear_tabla IS
  BEGIN
    EXECUTE IMMEDIATE '
      CREATE TABLE Puestos (
        IDPuesto NUMBER PRIMARY KEY, 
        Puesto VARCHAR2(100),
        Salario NUMBER
      )';
  END crear_tabla;

  PROCEDURE insertar_puesto (
    p_idpuesto NUMBER,
    p_puesto VARCHAR2,
    p_salario NUMBER
  ) IS
  BEGIN
    INSERT INTO Puestos VALUES (
      p_idpuesto,
      p_puesto,
      p_salario
    );
  END insertar_puesto;

  PROCEDURE actualizar_salario (
    p_idpuesto NUMBER,
    p_nuevo_salario NUMBER
  ) IS
  BEGIN
    UPDATE Puestos
    SET Salario = p_nuevo_salario
    WHERE IDPuesto = p_idpuesto;
  END actualizar_salario;

  FUNCTION obtener_puestos RETURN SYS_REFCURSOR IS
    ref_cursor SYS_REFCURSOR;
  BEGIN
    OPEN ref_cursor FOR
      SELECT * FROM Puestos;
    RETURN ref_cursor;
  END obtener_puestos;

END paquete_puestos;
/


--3-SI
CREATE OR REPLACE PACKAGE paquete_sesion AS

  PROCEDURE crear_tabla;

  PROCEDURE insertar_usuario(
    p_idusuario NUMBER, 
    p_nombreusuario VARCHAR2
  );

  FUNCTION validar_usuario(p_nombreusuario VARCHAR2) RETURN NUMBER;

END paquete_sesion;
/
--4-SI
CREATE OR REPLACE PACKAGE BODY paquete_sesion AS

  PROCEDURE crear_tabla IS
  BEGIN
    EXECUTE IMMEDIATE '
      CREATE TABLE InicioSesion (
        IDUsuario NUMBER PRIMARY KEY, 
        NombreUsuario VARCHAR2(50) NOT NULL
      )';
  END crear_tabla;

  PROCEDURE insertar_usuario(
    p_idusuario NUMBER, 
    p_nombreusuario VARCHAR2
  ) IS
  BEGIN
    INSERT INTO InicioSesion(IDUsuario, NombreUsuario)
    VALUES (p_idusuario, p_nombreusuario);
  END insertar_usuario;

  FUNCTION validar_usuario(p_nombreusuario VARCHAR2) RETURN NUMBER IS
    v_idusuario NUMBER;
  BEGIN
    SELECT IDUsuario INTO v_idusuario
    FROM InicioSesion
    WHERE NombreUsuario = p_nombreusuario;

    RETURN v_idusuario;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      RETURN NULL;
  END validar_usuario;

END paquete_sesion;
/

--5-SI
CREATE OR REPLACE PACKAGE paquete_inventario AS

  PROCEDURE crear_tabla;
  
  PROCEDURE registrar_entrada(
    p_idregistro NUMBER,
    p_tiporegistro VARCHAR2, 
    p_producto VARCHAR2,
    p_cantidad NUMBER,
    p_fecha DATE
  );
  
  PROCEDURE registrar_salida(
    p_idregistro NUMBER,
    p_tiporegistro VARCHAR2,
    p_producto VARCHAR2,
    p_cantidad NUMBER,
    p_fecha DATE
  );

  FUNCTION obtener_saldo(p_producto VARCHAR2) RETURN NUMBER;

END paquete_inventario;
/
--6
CREATE OR REPLACE PACKAGE BODY paquete_inventario AS

  PROCEDURE crear_tabla IS
  BEGIN
  
    EXECUTE IMMEDIATE '
      CREATE TABLE GestionInventario (
        IDRegistro NUMBER PRIMARY KEY,
        TipoRegistro VARCHAR2(20) NOT NULL,
        Producto VARCHAR2(50) NOT NULL,
        Cantidad NUMBER NOT NULL,
        Fecha DATE NOT NULL
      )';
      
  END crear_tabla;

  PROCEDURE registrar_entrada(
    p_idregistro NUMBER,
    p_tiporegistro VARCHAR2,
    p_producto VARCHAR2, 
    p_cantidad NUMBER,
    p_fecha DATE
  ) IS
  BEGIN
  
    INSERT INTO GestionInventario VALUES(
      p_idregistro, 
      p_tiporegistro,
      p_producto,
      p_cantidad,
      p_fecha
    );
      
  END registrar_entrada;

  PROCEDURE registrar_salida(
    p_idregistro NUMBER,
    p_tiporegistro VARCHAR2,
    p_producto VARCHAR2,
    p_cantidad NUMBER, 
    p_fecha DATE
  ) IS
  BEGIN
  
    INSERT INTO GestionInventario VALUES(
      p_idregistro,
      p_tiporegistro,  
      p_producto,
      -p_cantidad,
      p_fecha
    );
      
  END registrar_salida;  

  FUNCTION obtener_saldo(p_producto VARCHAR2) RETURN NUMBER IS
    v_saldo NUMBER;
  BEGIN
  
    SELECT SUM(Cantidad) INTO v_saldo
    FROM GestionInventario
    WHERE Producto = p_producto;
    
    RETURN v_saldo;
    
  END obtener_saldo;

END paquete_inventario;
/

7--SI
CREATE OR REPLACE PACKAGE paquete_clientes AS

  PROCEDURE crear_tabla_clientes;

  PROCEDURE insertar_cliente (
    p_idcliente NUMBER,
    p_nombrecompleto VARCHAR2
  );

  FUNCTION obtener_cliente (p_idcliente NUMBER) RETURN VARCHAR2;

  PROCEDURE actualizar_cliente (
    p_idcliente NUMBER,
    p_nombrecompleto VARCHAR2
  );

  PROCEDURE eliminar_cliente (p_idcliente NUMBER);

END paquete_clientes;
/
--8
CREATE OR REPLACE PACKAGE BODY paquete_clientes AS

  PROCEDURE crear_tabla_clientes IS
  BEGIN
    EXECUTE IMMEDIATE '
      CREATE TABLE Clientes (
        IDCliente NUMBER PRIMARY KEY,
        NombreCompleto VARCHAR2(100) NOT NULL
      )';
  END crear_tabla_clientes;

  PROCEDURE insertar_cliente (
    p_idcliente NUMBER,
    p_nombrecompleto VARCHAR2
  ) IS
  BEGIN
    INSERT INTO Clientes VALUES (
      p_idcliente,
      p_nombrecompleto
    );
  END insertar_cliente;

  FUNCTION obtener_cliente (p_idcliente NUMBER) RETURN VARCHAR2 IS
    v_nombrecompleto VARCHAR2(100);
  BEGIN
    SELECT NombreCompleto INTO v_nombrecompleto
    FROM Clientes
    WHERE IDCliente = p_idcliente;

    RETURN v_nombrecompleto;
  END obtener_cliente;

  PROCEDURE actualizar_cliente (
    p_idcliente NUMBER,
    p_nombrecompleto VARCHAR2
  ) IS
  BEGIN
    UPDATE Clientes
    SET NombreCompleto = p_nombrecompleto
    WHERE IDCliente = p_idcliente;
  END actualizar_cliente;

  PROCEDURE eliminar_cliente (p_idcliente NUMBER) IS
  BEGIN
    DELETE FROM Clientes 
    WHERE IDCliente = p_idcliente;
  END eliminar_cliente;

END paquete_clientes;
/

--9-SI
CREATE OR REPLACE PACKAGE paquete_compras AS

  PROCEDURE crear_tabla_compras;

  PROCEDURE registrar_compra(
    p_idcompra NUMBER,
    p_cliente VARCHAR2,
    p_producto VARCHAR2,
    p_cantidad NUMBER,
    p_total NUMBER    
  );

  FUNCTION obtener_compras_cliente(p_cliente VARCHAR2) RETURN SYS_REFCURSOR;

  FUNCTION obtener_total_producto(p_producto VARCHAR2) RETURN NUMBER;

END paquete_compras;
/
--10
CREATE OR REPLACE PACKAGE BODY paquete_compras AS

  PROCEDURE crear_tabla_compras IS  
  BEGIN
    EXECUTE IMMEDIATE '
      CREATE TABLE HistorialCompras(
        IDCompra NUMBER PRIMARY KEY,
        Cliente VARCHAR2(100) NOT NULL,
        Producto VARCHAR2(100) NOT NULL,
        Cantidad NUMBER NOT NULL,
        Total NUMBER NOT NULL
      )';
  END crear_tabla_compras;

  PROCEDURE registrar_compra(
    p_idcompra NUMBER,
    p_cliente VARCHAR2,
    p_producto VARCHAR2,
    p_cantidad NUMBER,
    p_total NUMBER
  ) IS
  BEGIN
    INSERT INTO HistorialCompras VALUES(
      p_idcompra,
      p_cliente,
      p_producto,
      p_cantidad,
      p_total
    );
  END registrar_compra;

  FUNCTION obtener_compras_cliente(p_cliente VARCHAR2) RETURN SYS_REFCURSOR IS
    refcur SYS_REFCURSOR;
  BEGIN
    OPEN refcur FOR
      SELECT * FROM HistorialCompras
      WHERE Cliente = p_cliente;
    
    RETURN refcur;
  END obtener_compras_cliente;

  FUNCTION obtener_total_producto(p_producto VARCHAR2) RETURN NUMBER IS
    v_total NUMBER;
  BEGIN  
    SELECT SUM(Total) INTO v_total
    FROM HistorialCompras
    WHERE Producto = p_producto;

    RETURN v_total;
  END obtener_total_producto;
  
END paquete_compras;
/
























