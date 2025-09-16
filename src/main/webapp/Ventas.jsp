<%-- 
    Document   : Ventas
    Created on : 16/09/2025, 3:29:45 p. m.
    Author     : Sistema
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                    <!-- Este espacio es para conectar con la base de datos -->
                                    <%
                                        // Ejemplo de código para conectar con base de datos
                                        /*
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tu_basedatos", "usuario", "contraseña");
                                            Statement stmt = con.createStatement();
                                            ResultSet rs = stmt.executeQuery("SELECT * FROM ventas");
                                            
                                            while(rs.next()) {
                                                out.println("<tr>");
                                                out.println("<td>" + rs.getString("id_venta") + "</td>");
                                                out.println("<td>" + rs.getString("fecha") + "</td>");
                                                out.println("<td>" + rs.getString("cliente") + "</td>");
                                                out.println("<td>" + rs.getString("producto") + "</td>");
                                                out.println("<td>" + rs.getString("cantidad") + "</td>");
                                                out.println("<td>" + rs.getString("total") + "</td>");
                                                out.println("<td><span class='badge bg-"+ (rs.getString("estado").equals("Completada") ? "success" : "warning") +"'>" + rs.getString("estado") + "</span></td>");
                                                out.println("<td>");
                                                out.println("<button class='btn btn-sm btn-info'><i class='fas fa-eye'></i></button>");
                                                out.println("<button class='btn btn-sm btn-warning'><i class='fas fa-receipt'></i></button>");
                                                out.println("</td>");
                                                out.println("</tr>");
                                            }
                                            con.close();
                                        } catch(Exception e) {
                                            out.println(e);
                                        }
                                        */
                                    %>
                                    
                                    <!-- Datos de ejemplo (eliminar cuando se conecte a la base de datos) -->
                                    <tr>
                                        <td>V001</td>
                                        <td>15/09/2025</td>
                                        <td>Química Andina S.A.</td>
                                        <td>Reactivo Químico A</td>
                                        <td>5</td>
                                        <td>$600.000</td>
                                        <td><span class="badge bg-success">Completada</span></td>
                                        <td>
                                            <button class="btn btn-sm btn-info"><i class="fas fa-eye"></i></button>
                                            <button class="btn btn-sm btn-warning"><i class="fas fa-receipt"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>V002</td>
                                        <td>14/09/2025</td>
                                        <td>Laboratorios BioTech</td>
                                        <td>Equipo Medición pH</td>
                                        <td>2</td>
                                        <td>$1.700.000</td>
                                        <td><span class="badge bg-success">Completada</span></td>
                                        <td>
                                            <button class="btn btn-sm btn-info"><i class="fas fa-eye"></i></button>
                                            <button class="btn btn-sm btn-warning"><i class="fas fa-receipt"></i></button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>V003</td>
                                        <td>13/09/2025</td>
                                        <td>Purificadora del Norte</td>
                                        <td>Filtro Industrial</td>
                                        <td>1</td>
                                        <td>$1.200.000</td>
                                        <td><span class="badge bg-warning">Pendiente</span></td>
                                        <td>
                                            <button class="btn btn-sm btn-info"><i class="fas fa-eye"></i></button>
                                            <button class="btn btn-sm btn-warning"><i class="fas fa-receipt"></i></button>
                                        </td>
                                    </tr>
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