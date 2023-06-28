<% 
    if (session.getAttribute("login") != "OK"){
        response.sendRedirect("login.jsp");
    }
    %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                padding-top: 40px;
                padding-bottom: 40px;
                background-image: url("https://images4.alphacoders.com/129/1299442.png");
                background-repeat: no-repeat;
                background-size: 160% auto;
                
            }
            </style>
    </head>
    <body>
        <div class="container">
           <center><h1><div class="d-inline p-2 bg-dark text-white">VENTAS</div></h1></center>
           <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://erikstore.com/blog/wp-content/uploads/2023/04/Super-mario-bros-la-pelicula-curiosidades.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="https://img.asmedia.epimg.net/resizer/kOEmXGAp0RNjOSvhwn9THAMzD_I=/644x362/cloudfront-eu-central-1.images.arcpublishing.com/diarioas/25IAY3O4ZVF4LPEHALL2C7Y4YU.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="https://www.cinemascomics.com/wp-content/uploads/2023/06/The-Flash-2023.jpg" class="d-block w-100" alt="...">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div> 
            <jsp:include page="WEB-INF/menu.jsp">
                <jsp:param name="opcion" value="ventas" />
            </jsp:include>
           
            <br>
            <a href="VentaControlador?action=add"class ="btn btn-success btn-sm"><i class="fas fa-plus-circle"></i>Nuevo </a>
            
            <table class="table table-dark table-striped">
                <tr>
                    <th>Id</th> 
                    <th>CLIENTE</th> 
                    <th>PELICULA</th> 
                    <th>FECHA</th>
                    <th></th> 
                    <th></th> 
                </tr>
                <c:forEach var="item" items="${ventas}">
                 <tr>
                    <td>${item.id}</td>
                    <td>${item.cliente}</td>
                    <td>${item.producto}</td>
                    <td>${item.fecha}</td>
                    <td><a href="VentaControlador?action=edit&id=${item.id}"><i class="fas fa-user-edit"></i></td>
                    <td><a href="VentaControlador?action=delete&id=${item.id}" onclick="return(confirm('Esta Seguro ?????'))"><i class="fas fa-trash"></i></td>
                    
                </tr> 
                </c:forEach>
            </table>
    <a href="Logout" class="btn btn-danger" >Cerrar Session</a>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>