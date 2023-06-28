
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>Punto de venta</title>
        <style>
            body {
                display: flex;
                align-items: center;
                padding-top: 90px;
                padding-bottom: 90px;
                background-image: url("https://img.freepik.com/vector-gratis/sala-cine-gente-viendo-peliculas-pantalla-panoramica-tres-lados_107791-5707.jpg?w=1380&t=st=1687888431~exp=1687889031~hmac=4ea649d78f968ec5be6438238699a53a7a26b7cab149276d7687c65cb153967a");
                background-repeat: no-repeat;
                background-size: 160% auto;

            }
            
        </style>
    </head>
    <body>
        <div class="container">
            <h1><div class="text-warning">PELICULAS</div></h1>
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="productos" />
            </jsp:include>
            <br>
            <form action="ProductoControlador" method="post">      
                <input type="hidden" name="id" value="${producto.id}">
                <div class="form-group">
                    <label for="" class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombre" value="${producto.nombre}" placeholder="Pelicula">
                </div>
                 <td>Sala N</td>
                <td><select name="descripcion" value="${producto.descripcion}">
                        <option>SALA 1</option>
                        <option>SALA 2</option>
                        <option selected>SALA 3</option>
                    </select> 
                    </select></td>
                <br>
                <br>
                <td>Formato</td>
                <td><select name="formato" value="${producto.formato}">

                        <option>  2D</option>
                        <option selected>3D</option>
                    </select> 
                    </select></td>
                <br>
                <br>
                <td>  Precio</td>
                <td><select name="precio" value="${producto.precio}">

                        <option>40.00</option>
                        <option selected>50.00</option>
                    </select> 
                    </select></td>
                <br>
                <br>
                <button type="submit" class="btn btn-warning">REGISTRAR</button>
            </form>
                <br>
                


        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>