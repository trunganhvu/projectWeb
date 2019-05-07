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
        <div class="header_top">
            <div class="container">

                <div class="cssmenu">
                    <ul>
                        <li class="active"><a href="login.jsp">My Account</a></li> 
                    </ul>
                </div>
            </div>
        </div>	

        <div class="wrap-box"></div>
        <div class="header_bottom">
            <div class="container">
                <div class="col-xs-8 header-bottom-left">
                    <div class="col-xs-2 logo">
                        <h1><a href="index.jsp"><span>Buy</span>shop</a></h1>
                    </div>  
                    <div class="col-xs-6 menu">
                        <ul class="megamenu skyblue">
                            <li class="active grid"><a class="color1" href="index.jsp">Nam</a><div class="megapanel">
                                    <div class="row">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <ul>
                                                    <li><a href="men.jsp"> Nike</a></li>
                                                    <li><a href="men.jsp"> Adidas</a></li>


                                                </ul>	
                                            </div>							
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <ul>
                                                    <li><a href="men.jsp">Rebook</a></li>

                                                </ul>	
                                            </div>							
                                        </div>

                                    </div>
                                </div>
                            </li>
                            <li class="grid"><a class="color2" href="#">Nữ</a>
                                <div class="megapanel">
                                    <div class="row">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <ul>
                                                    <li><a href="men.jsp"> Nike</a></li>
                                                    <li><a href="men.jsp"> Adidas</a></li>

                                                </ul>	
                                            </div>							
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <ul>
                                                    <li><a href="men.jsp">Rebook</a></li>

                                                </ul>	
                                            </div>							
                                        </div>

                                    </div>
                                </div>
                            </li>

                        </ul> 
                    </div>
                </div>
                <div class="col-xs-4 header-bottom-right">
                    <div class="box_1-cart">
                        <div class="box_11"><a href="checkout.jsp">
                                <!----<h4><p>Cart: <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</p><img src="images/bag.png" alt=""/><div class="clearfix"> </div></h4>
                                  ---->
                                <h4><p> <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> Item)</p><img src="images/bag.png" alt=""/><div class="clearfix"> </div></h4>
                            </a></div>
                        <p class="empty"><a href="javascript:;" class="simpleCart_empty">Giỏ hàng trống</a></p>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="search">	  
                        <input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Search';
                                }">
                        <input type="submit" value="Subscribe" id="submit" name="submit">
                        <div id="response"> </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
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
                            <div class="cart-item cyc">
                                <img src="images/pic1.jpg" class="img-responsive" alt=""/>
                            </div>
                            <div class="cart-item-info">
                                <h3><a href="#">Vans</a><span></span></h3>
                                <ul class="qty">
                                    <li><p>Size : 5</p></li>
                                    <li><p>Qty : 1</p></li>
                                </ul>

                            </div>
                            <div class="clearfix"></div>

                        </div>
                    </div>
                    <script>$(document).ready(function (c) {
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
                    </div>		
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
