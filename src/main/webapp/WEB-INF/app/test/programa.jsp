<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa</title>
        <style>
            label{display: block; margin-top: 20px;}
            .btn{display: block; margin-top: 20px;}
        </style>
    </head>
    <body>
        <h1>Programa</h1>
        <form method="post" action="guardarPrograma">
            <label>Nombre</label>
            <input type="text" name="nombre"/>
            <label>Descripción</label>
            <input type="text" name="descripcion"/>
            <label>Código</label>
            <input type="text" name="codigo"/>
            <input type="submit" name="Guardar" class="btn"/>
        </form>
    </body>
</html>
