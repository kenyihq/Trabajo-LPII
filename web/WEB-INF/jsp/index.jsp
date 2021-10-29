<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Lenguaje de Programación II</title>
    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a href="agregar.htm">Nuevo Registro</a>
                </div>
                <div class="card-body">
                    <table border="1">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>NOMBRES</th>
                                <th>APELLIDOS</th>
                                <th>CORREO</th>
                                <th>ACCIONES</th>
                            </tr>
                        </thead>
                        <tbody>
                            <C:forEach items="${lista}" var="item">
                                <tr>
                                    <td>${item.id}</td>
                                    <td>${item.nombre}</td>
                                    <td>${item.apellido}</td>
                                    <td>${item.email}</td>
                                    <td>
                                        <a>Editar</a>
                                        <a href="">Eliminar</a>
                                    </td>
                                </tr>
                            </C:forEach>
                        </tbody>

                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
