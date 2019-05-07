<%-- 
    Document   : register
    Created on : Apr 15, 2019, 3:07:24 PM
    Author     : Tomm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
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
                                                    <li><a href="men.jsp">Vans</a></li>

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
<!--                                                    <li><a href="men.jsp">Vans</a></li>-->

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
                                <h4><p><span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> Item)</p><img src="images/bag.png" alt=""/><div class="clearfix"> </div></h4>
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
        <div class="single_top">
            <div class="container"> 
                <div class="register">
                    <form> 
                        <div class="register-top-grid">
                            <h3>Đăng ký tài khoản</h3>
                            </br>
                            <div>
                                <span>Tên tài khoản (email, sô điện thoại, tên đăng nhập)<label>*</label></span>
                                <input type="text"> 
                                <span>Mật khẩu (khoảng 8 đến 20 ký tự)<label>*</label></span>
                                <input type="text">
                                <span>Nhập lại mật khẩu<label>*</label></span>
                                <input type="text">
                            </div>

                            <div class="clearfix"> </div>
                            <a class="news-letter" href="#">

                            </a>
                        </div>
<!--                        <div class="register-bottom-grid">
                            <h3>Thông tin dăng nhập</h3>
                            <div>
                                <span>Mật khẩu<label>*</label></span>
                                <input type="text">
                                <span>Nhập lại mật khẩu<label>*</label></span>
                                <input type="text">
                            </div>
                            <div>
                                
                            </div>
                            <div class="clearfix"> </div>
                        </div>-->
                    </form>
                    <div class="clearfix"> </div>
                    <div class="register-but">
                        <form>
                            <input type="submit" value="submit">
                            <div class="clearfix"> </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>      

    </body>
</html>
