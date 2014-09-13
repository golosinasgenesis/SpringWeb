<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Programa Ajax</title>
        <style>
            label{display: block; margin-top: 20px;}
            .btn{display: block; margin-top: 20px;}
        </style>
        
    </head>
    <body>
        <h1>Programa Ajax</h1>
        <form id="formulario">
            <label>Nombre</label>
            <input type="text" name="nombre"/>
            <label>Descripción</label>
            <input type="text" name="descripcion"/>
            <label>Código</label>
            <input type="text" name="codigo"/>
            <input type="button" value="Guardar" class="btn" id="enviar"/>
        </form>
        <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
        <script>
            $(function (){
                $('#enviar').click(function (){
                    //console.log('enviar');
                   $.ajax({
                       url: 'guardarPrograma',
                       data: $('#formulario').serializeArray(),
                       type: 'POST',
                       success: function (response){
                           alert(response);
                       }   
                   })
                })
            });
        </script>
    </body>
</html>
