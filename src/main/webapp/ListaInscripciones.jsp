<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Inscripciones</title>
    
    <!-- Vincular Bootstrap CSS desde un CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            padding-top: 50px;
        }
    </style>
</head>
<body>
    <!-- Barra de navegación simple -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Universidad</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Inscripciones</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <h2 class="my-4">Lista de Inscripciones</h2>
        
        <!-- Verificar si hay inscripciones -->
        <c:if test="${not empty inscripciones}">
            <!-- Tabla de inscripciones estilizada con Bootstrap -->
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>ID Inscripción</th>
                        <th>Nombre</th>
                        <th>Teléfono</th>
                        <th>Curso</th>
                        <th>Forma de Pago</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Iterar sobre la lista de inscripciones y mostrar sus datos -->
                    <c:forEach var="inscripcion" items="${inscripciones}">
                        <tr>
                            <td>${inscripcion.idInsc}</td>
                            <td>${inscripcion.nombre}</td>
                            <td>${inscripcion.celular}</td>
                            <td>
                            	<c:out value="${cursoMap[inscripcion.idCurso]}"/>
                            </td>
                            <td>
                            	<c:out value="${formaPagoMap[inscripcion.idFormaDePago]}"/>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        
        <!-- Mensaje cuando no haya inscripciones -->
        <c:if test="${empty inscripciones}">
            <div class="alert alert-warning" role="alert">
                No se encontraron inscripciones.
            </div>
        </c:if>
    </div>

    <!-- Vincular Bootstrap JS desde un CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
