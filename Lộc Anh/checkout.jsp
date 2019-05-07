    <%@page import="dao.CategoryDao"%>
<%@page import="model.Cart"%>
<%@page import="model.Users"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Item"%>
<%-- 
    Document   : checkout
    Created on : Apr 15, 2019, 4:02:18 PM
    Author     : Tomm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>thanh toán</title>
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
            CategoryDao categoryDAO = new CategoryDao();
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }

        %>
        <div class="container">
            <div class="check">	 
                <div class="col-md-9 cart-items">
                    <h1>GIO HANG CUA TOI</h1>
                    
                    <script>$(document).ready(function (c) {
                            $('.close1').on('click', function (c) {
                                $('.cart-header').fadeOut('slow', function (c) {
                                    $('.cart-header').remove();
                                });
                            });
                        });
                    </script>
                    
                    <div class="cart-header">
                        
                        <div class="close1"> </div>
                        
                        <div class="cart-sec simpleCart_shelfItem">
                            <%for (Map.Entry<Long, Item> list : cart.getCartiItems().entrySet()) {%>
                            <div class="cart-item cyc">
                                <img src="<%=list.getValue().getProductItem().getProductImage()%>" class="img-responsive" alt=""/>
                            </div>
                            <div class="cart-item-info">
                                <h3><a href="#">Vans</a><span></span></h3>
                                <ul class="qty">
                                    <li><p>Size : 5</p></li>
                                    <li><p>Qty : 1</p></li>
                                </ul>

                            </div>
                            <div class="clearfix"></div>
                            <%}%>
                        </div>
                    </div>
<!--                    <script>$(document).ready(function (c) {
                            $('.close2').on('click', function (c) {
                                $('.cart-header2').fadeOut('slow', function (c) {
                                    $('.cart-header2').remove();
                                });
                            });
                        });
                    </script>
                    <div class="cart-header2">
                        <div class="close2"> </div>
                        <div class="cart-sec simpleCart_shelfItem">
                            <div class="cart-item cyc">
                                <img src="images/pic2.jpg" class="img-responsive" alt=""/>
                            </div>
                            <div class="cart-item-info">
                                <h3><a href="#">Adidas</a><span>Model No: 3578</span></h3>
                                <ul class="qty">
                                    <li><p>Size : 5</p></li>
                                    <li><p>Qty : 1</p></li>
                                </ul>
                                <div class="delivery">

                                    <div class="clearfix"></div>
                                </div>	
                            </div>
                            <div class="clearfix"></div>

                        </div>
                    </div>		-->
                </div>
                <div class="col-md-3 cart-total">
                    <a class="continue" href="#">THNAH TOAN</a>
                    <div class="price-details">
                        <h3>DON HANG</h3>
                        <span>Tong</span>
                        <span class="total1">6.200.000</span>
                        <span>Khuyen mai</span>
                        <span class="total1">---</span>
                        <span>So tien can tra</span>
                        <span class="total1">150.000</span>
                        <div class="clearfix"></div>				 
                    </div>	
                    <ul class="total_price">
                        <li class="last_price"> <h4>Tong tien can thanh toan</h4></li>	
                        <li class="last_price"><span>6350.00</span></li>
                        <div class="clearfix"> </div>
                    </ul>


                    <div class="clearfix"></div>
                    <a class="order" href="#">DAT HANG</a>

                </div>
            </div>
        </div>
    </body>
</html>
