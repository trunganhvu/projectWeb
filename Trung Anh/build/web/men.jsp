<%-- 
    Document   : sp
    Created on : Apr 15, 2019, 3:17:28 PM
    Author     : Tomm
--%>

<%@page import="model.product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>SanPham</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Shoes" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <script src="js/simpleCart.min.js"></script>
        <!-- Custom Theme files -->
        <!--webfont-->
        <link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
        <!-- start menu -->
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function () {
                $(".megamenu").megamenu();
            });</script>
    </head>
    <body>
        <%
            ProductDAO productDAO = new ProductDAO();
            String category_id = "";
            if (request.getParameter("category") != null) {
                category_id = request.getParameter("category");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>


            <!--------------------------------------------------->

            <div class="container">
                <div class="women_main">
                    <div class="col-md-9 w_content">
                        <div class="women">
                            <div class="clearfix"></div>	
                        </div>
                    <%
                        for (product p : productDAO.getListProductByCategory(Long.parseLong(category_id))) {
                    %>
                    <div class="grids_of_4">

                        <div class="grid1_of_4 simpleCart_shelfItem">

                            <div class="content_box">
                                <a href="single.jsp?productID=<%=p.getProductID()%>">
                                    <div class="view view-fifth">
                                        <img src="<%=p.getProductImage()%>"  class="img-responsive" alt=""/>
                                        <div class="mask1">
                                            <div class="info"> 
                                            </div>
                                        </div>
                                </a>
                            </div>
                            <h5><a href="single.jsp?productID=<%=p.getProductID()%>"><%=p.getProductName()%> </a></h5>
                            <div class="size_1">
                                <span class="item_price"><%=p.getProductPrice()%></span>

                                <div class="clearfix"></div>
                            </div>
                            <div class="size_2">
                                <div class="size_2-right"><input type="button" class="item_add add3" value="" /></div>
                                <div class="clearfix"> </div>
                            </div>


                        </div>




                    </div>
                    <%
                        }
                    %>      
                </div>
            </div>
    </body>
</html>
