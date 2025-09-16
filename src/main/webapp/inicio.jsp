<%-- 
    Document   : inicio
    Created on : 15/09/2025, 6:54:04 p. m.
    Author     : Sistema
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INQUIMOBA SAS - Equipos y Químicos para Plantas</title>
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
        
        .featured-image {
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0,0,0,0.15);
            transition: transform 0.3s ease;
            margin: 20px 0;
            max-width: 100%;
            height: auto;
            border: 5px solid white;
        }
        
        .featured-image:hover {
            transform: scale(1.03);
        }
        
        .content-section {
            padding: 25px;
            background-color: rgba(255,255,255,0.9);
            border-radius: 12px;
            margin: 15px 0;
            box-shadow: 0 4px 8px rgba(0,0,0,0.05);
        }
        
        .content-section h3 {
            color: var(--primary-color);
            border-bottom: 2px solid var(--secondary-color);
            padding-bottom: 10px;
            margin-bottom: 15px;
        }
        
        .form-control {
            border-radius: 8px;
            border: 1px solid #ced4da;
            padding: 12px;
            margin-bottom: 15px;
        }
        
        .form-control:focus {
            border-color: var(--secondary-color);
            box-shadow: 0 0 0 0.2rem rgba(52, 152, 219, 0.25);
        }
        
        .btn-submit {
            background-color: var(--accent-color);
            color: white;
            border: none;
            border-radius: 30px;
            padding: 12px 25px;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        
        .btn-submit:hover {
            background-color: #c0392b;
            transform: translateY(-2px);
        }
        
        footer {
            background-color: var(--dark-color);
            color: white;
            text-align: center;
            padding: 20px;
            border-radius: 0 0 15px 15px;
            margin-top: 20px;
        }
        
        .service-highlight {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            padding: 30px;
            border-radius: 12px;
            margin: 20px 0;
            text-align: center;
        }
        
        .icon-box {
            font-size: 2.5rem;
            color: var(--secondary-color);
            margin-bottom: 15px;
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
                        <img src="${pageContext.request.contextPath}/public/imagen/LOGO.jpg" class="logo" alt="Logo INQUIMOBA SAS">
                        <p class="lead">Comercialización de equipos y químicos para plantas químicas</p>
                    </div>
                    
                    <div class="card-body">
                        <div class="text-center mb-4">
                            <div class="d-flex flex-wrap justify-content-center">
                                <a href="#" class="btn btn-menu"><i class="fas fa-home me-2"></i>Inicio</a>
                                <a href="#" class="btn btn-menu"><i class="fas fa-users me-2"></i>Sobre Nosotros</a>
                                <a href="#" class="btn btn-menu"><i class="fas fa-box-open me-2"></i>Productos</a>
                                <a href="#" class="btn btn-menu"><i class="fas fa-shopping-cart me-2"></i>Ventas</a>
                                <a href="#" class="btn btn-menu"><i class="fas fa-concierge-bell me-2"></i>Servicios</a>
                                <a href="#" class="btn btn-menu"><i class="fas fa-envelope me-2"></i>Contacto</a>
                            </div>
                            <hr>
                            <h2 class="system-title">INQUIMOBA SAS - EQUIPOS Y QUÍMICOS PARA PLANTAS QUÍMICAS</h2>
                            <hr>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="content-section">
                                    <h3><i class="fas fa-info-circle me-2"></i>Inicio</h3>
                                    <p>
                                        Somos una compañía responsable que trabajamos con calidad y seguridad
                                        para el mejoramiento de los procesos de nuestros clientes. Ofrecemos
                                        una variedad de servicios y productos como importadores directos de
                                        nuestros equipos y maquinaria.
                                    </p>
                                </div>
                                
                                <div class="content-section">
                                    <h3><i class="fas fa-newspaper me-2"></i>Nuevos Productos</h3>
                                    <p>Últimos productos de alta tecnología para implementación en tanques de almacenamiento.</p>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <div class="content-section">
                                    <h3><i class="fas fa-box me-2"></i>Productos</h3>
                                    <p>
                                        Ofrecemos una gran variedad de productos de laboratorio y de procesos
                                        de automatización. 
                                    </p>
                                    <img src="${pageContext.request.contextPath}/public/imagen/equipo_1.jpg" class="featured-image" alt="Equipos de laboratorio">
                                </div>
                            </div>
                        </div>
                        
                        <div class="service-highlight">
                            <h3><i class="fas fa-concierge-bell me-2"></i>Servicios</h3>
                            <p>
                                Ofrecemos servicios que mejoran los diferentes procesos de producción 
                                y sistema de gestión de calidad de los diferentes procesos de laboratorio.
                            </p>
                            <img src="${pageContext.request.contextPath}/public/imagen/asesorias.jpg" class="featured-image" alt="Servicios de asesoría">
                        </div>
                        
                        <div class="content-section">
                            <h3><i class="fas fa-envelope me-2"></i>Formulario de Contacto</h3>
                            <form action="#" method="">
                                <div class="mb-3">
                                    <label for="nombre" class="form-label">Nombre:</label>
                                    <input type="text" class="form-control" id="nombre" name="nombre" required>
                                </div>
                                
                                <div class="mb-3">
                                    <label for="email" class="form-label">Correo Electrónico:</label>
                                    <input type="email" class="form-control" id="email" name="email" required>
                                </div>
                                
                                <div class="mb-3">
                                    <label for="mensaje" class="form-label">Mensaje:</label>
                                    <textarea class="form-control" id="mensaje" name="mensaje" rows="4" required></textarea>
                                </div>
                                
                                <div class="text-center">
                                    <button type="submit" class="btn btn-submit"><i class="fas fa-paper-plane me-2"></i>Enviar Mensaje</button>
                                </div>
                            </form>
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
    <script>
        // Animación simple para las secciones
        document.addEventListener('DOMContentLoaded', function() {
            const sections = document.querySelectorAll('.content-section, .service-highlight');
            
            sections.forEach(section => {
                section.style.opacity = '0';
                section.style.transform = 'translateY(20px)';
                section.style.transition = 'opacity 0.5s ease, transform 0.5s ease';
            });
            
            setTimeout(() => {
                sections.forEach((section, index) => {
                    setTimeout(() => {
                        section.style.opacity = '1';
                        section.style.transform = 'translateY(0)';
                    }, 100 * index);
                });
            }, 300);
            
            // Verificar si las imágenes se cargaron correctamente
            const images = document.querySelectorAll('img');
            images.forEach(img => {
                img.addEventListener('error', function() {
                    this.src = 'https://via.placeholder.com/300x200?text=Imagen+no+encontrada';
                    this.alt = 'Imagen no disponible';
                });
            });
        });
    </script>
</body>
</html>