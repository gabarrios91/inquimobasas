<%-- 
    Document   : Ventas
    Created on : 16/09/2025, 3:29:45 p. m.
    Author     : Sistema
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ventas - INQUIMOBA SAS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary-color: #2c3e50;
            --secondary-color: #3498db;
            --accent-color: #e74c3c;
            --light-color: #ecf0f1;
            --dark-color: #2c3e50;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            color: #333;
            padding-top: 20px;
            min-height: 100vh;
        }
        
        .custom-card {
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            border-radius: 15px;
            overflow: hidden;
            border: none;
            margin-bottom: 30px;
            background-color: white;
        }
        
        .header-container {
            background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
            color: white;
            padding: 20px;
            border-radius: 15px 15px 0 0;
            text-align: center;
        }
        
        .logo {
            max-width: 250px;
            height: auto;
            margin-bottom: 15px;
            border: 3px solid white;
            border-radius: 8px;
            padding: 5px;
            background: white;
        }
        
        .system-title {
            color: #E3A869;
            font-weight: bold;
            margin: 20px 0;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
            font-size: 1.8rem;
        }
        
        .btn-menu {
            background-color: var(--secondary-color);
            color: white;
            margin: 5px;
            border: none;
            border-radius: 30px;
            padding: 10px 20px;
            transition: all 0.3s ease;
            font-weight: 500;
        }
        
        .btn-menu:hover {
            background-color: var(--primary-color);
            color: white;
            transform: translateY(-3px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }
        
        .table-container {
            padding: 20px;
        }
        
        footer {
            background-color: var(--dark-color);
            color: white;
            text-align: center;
            padding: 20px;
            border-radius: 0 0 15px 15px;
            margin-top: 20px;
        }
        
        @media (max-width: 768px) {
            .btn-menu {
                display: block;
                width: 100%;
                margin: 5px 0;
            }
            
            .system-title {
                font-size: 1.4rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="custom-card">
                    <div class="header-container">
                        <img src="imegen/LOGO.jpg" class="logo" alt="Logo INQUIMOBA SAS">
                        <p class="lead">Comercialización de equipos y químicos para plantas químicas</p>
                    </div>
                    
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <div class="d-flex flex-wrap justify-content-center">
                                <a href="inicio.jsp" class="btn btn-menu"><i class="fas fa-home me-2"></i>Inicio</a>
                                <a href="productos.jsp" class="btn btn-menu"><i class="fas fa-box-open me-2"></i>Productos</a>
                                <a href="ventas.jsp" class="btn btn-menu"><i class="fas fa-shopping-cart me-2"></i>Ventas</a>
                            </div>
                            <hr>
                            <h2 class="system-title">REGISTRO DE VENTAS</h2>
                            <hr>
                        </div>
                        
                        <div class="table-container">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>ID Venta</th>
                                        <th>Fecha</th>
                                        <th>Cliente</th>
                                        <th>Producto</th>
                                        <th>Cantidad</th>
                                        <th>Total</th>
                                        <th>Estado</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        Connection con = null;
                                        Statement stmt = null;
                                        ResultSet rs = null;
                                        
                                        try {
                                            // Cargar el controlador de MySQL
                                            Class.forName("com.mysql.cj.jdbc.Driver");
                                            
                                            // Establecer la conexión con la base de datos
                                            String url = "jdbc:mysql://localhost:3306/db_inquimoba";
                                            String usuario = "root";
                                            String contraseña = ""; // Cambia si tienes contraseña
                                            
                                            con = DriverManager.getConnection(url, usuario, contraseña);
                                            stmt = con.createStatement();
                                            
                                            // Ejecutar consulta para obtener las ventas
                                            // Asumiendo que tienes una tabla "ventas" y una tabla "productos" relacionada
                                            String sql = "SELECT v.*, p.nombre as producto_nombre FROM ventas v " +
                                                       "LEFT JOIN productos p ON v.producto_id = p.id " +
                                                       "ORDER BY v.fecha DESC";
                                            rs = stmt.executeQuery(sql);
                                            
                                            // Mostrar los resultados en la tabla
                                            while(rs.next()) {
                                                String estado = rs.getString("estado");
                                                String badgeClass = "success";
                                                
                                                if ("Pendiente".equals(estado)) {
                                                    badgeClass = "warning";
                                                } else if ("Cancelada".equals(estado)) {
                                                    badgeClass = "danger";
                                                }
                                    %>
                                                <tr>
                                                    <td><%= rs.getString("id") %></td>
                                                    <td><%= rs.getString("fecha") %></td>
                                                    <td><%= rs.getString("cliente") %></td>
                                                    <td><%= rs.getString("producto_nombre") != null ? rs.getString("producto_nombre") : "Producto no disponible" %></td>
                                                    <td><%= rs.getString("cantidad") %></td>
                                                    <td>$<%= rs.getString("total") %></td>
                                                    <td><span class="badge bg-<%= badgeClass %>"><%= estado %></span></td>
                                                    <td>
                                                        <button class="btn btn-sm btn-info"><i class="fas fa-eye"></i></button>
                                                        <button class="btn btn-sm btn-warning"><i class="fas fa-receipt"></i></button>
                                                    </td>
                                                </tr>
                                    <%
                                            }
                                        } catch(ClassNotFoundException e) {
                                            out.println("<tr><td colspan='8'>Error: No se encontró el controlador de la base de datos</td></tr>");
                                        } catch(SQLException e) {
                                            out.println("<tr><td colspan='8'>Error de conexión a la base de datos: " + e.getMessage() + "</td></tr>");
                                        } finally {
                                            // Cerrar recursos
                                            try {
                                                if(rs != null) rs.close();
                                                if(stmt != null) stmt.close();
                                                if(con != null) con.close();
                                            } catch(SQLException e) {
                                                out.println("<tr><td colspan='8'>Error al cerrar conexión: " + e.getMessage() + "</td></tr>");
                                            }
                                        }
                                    %>
                                </tbody>
                            </table>
                            
                            <div class="d-flex justify-content-between mt-4">
                                <div>
                                    <button class="btn btn-success"><i class="fas fa-plus me-2"></i>Nueva Venta</button>
                                </div>
                                <div>
                                    <button class="btn btn-outline-primary"><i class="fas fa-file-export me-2"></i>Exportar</button>
                                    <button class="btn btn-outline-secondary"><i class="fas fa-print me-2"></i>Imprimir</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <footer>
                        <p>&copy; 2025 INQUIMOBA SAS. Todos los derechos reservados.</p>
                        <p>Caucasia - Antioquia | Tel: 3015923914 | Email: inquimoba@gmail.com</p>
                    </footer>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>