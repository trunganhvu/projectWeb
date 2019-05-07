<%-- 
    Document   : Single
    Created on : Apr 15, 2019, 3:47:26 PM
    Author     : Tomm
--%>

<%@page import="model.product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
            product product = new product();
            String productID = "";
            if (request.getParameter("productID") != null) {
                productID = request.getParameter("productID");
                product = productDAO.getProduct(Long.parseLong(productID));
            }
        %>
        <div class="header_top">
            <div class="container">
                <div class="one-fifth column row_1">
                    <span class="selection-box"><select class="domains valid" name="domains">
                            <option>English</option>
                            <option>French</option>
                            <option>German</option>
                        </select></span>
                </div>
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
                                                    <li><a href="men.jsp">Vans</a></li>

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
        <div class="single_top">
            <div class="container"> 
                <div class="single_grid">
                    <div class="grid images_3_of_2">
                        <ul id="etalage">
                            <li>

                                <img class="etalage_thumb_image" src="<%=product.getProductImage()%>" class="img-responsive" />


                            </li>

                        </ul>
                        <div class="clearfix"></div>		
                    </div> 
                    <div class="desc1 span_3_of_2">

                        <h1><%=product.getProductName()%></h1>

                        <p> <%=product.getProductDescription()%> </p>
                        <div class="dropdown_top">
                            <div class="dropdown_left">
                                <select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro1"}'>
                                    <option value="0">Select size</option>	
                                    <option value="1">35</option>
                                    <option value="2">36</option>
                                    <option value="3">37 </option>
                                    <option value="4">38</option>
                                    <option value="5">39</option>
                                    <option value="6">40</option>
                                    <option value="7">41</option>
                                    <option value="8">42</option>
                                    <option value="9">43</option>
                                    <option value="10">44</option>
                                </select>
                            </div>
<!--                            <ul class="color_list">
                                <li><a href="#"> <span class="color1"> </span></a></li>
                                <li><a href="#"> <span class="color2"> </span></a></li>
                                <li><a href="#"> <span class="color3"> </span></a></li>
                                <li><a href="#"> <span class="color4"> </span></a></li>
                                <li><a href="#"> <span class="color5"> </span></a></li>
                            </ul>-->
                            <div class="clearfix"></div>
                        </div>
                        <div class="simpleCart_shelfItem">
                            <div class="price_single">
                                <div class="head"><h2><span class="amount item_price"><%=product.getProductPrice()%></span></h2></div>

                            </div>
                            <!--<div class="single_but"><a href="" class="item_add btn_3" value=""></a></div>-->
                            <div class="size_2-right"><a href="#" class="item_add item_add1 btn_5" value="" />Thêm sản phẩm </a></div>

                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>

                <ul class="menu_drop">


                </ul>

            </div>
            <h3 class="m_2">Related Products</h3>
            <div class="container">
                <div class="box_3">
                    <div class="col-md-3">
                        <div class="content_box"><a href="single.jsp">
                                <img src="images/6.jpg" class="img-responsive" alt="">
                            </a>
                        </div>
                        <h4><a href="single.jsp">Contrary to popular belief</a></h4>
                        <p>$ 199</p>
                    </div>
                    <div class="col-md-3">
                        <div class="content_box"><a href="single.jsp">
                                <img src="images/2.jpg" class="img-responsive" alt="">
                            </a>
                        </div>
                        <h4><a href="single.jsp">Contrary to popular belief</a></h4>
                        <p>$ 199</p>
                    </div>
                    <div class="col-md-3">
                        <div class="content_box"><a href="single.jsp">
                                <img src="images/4.jpg" class="img-responsive" alt="">
                            </a>
                        </div>
                        <h4><a href="single.jsp">Contrary to popular belief</a></h4>
                        <p>$ 199</p>
                    </div>
                    <div class="col-md-3">
                        <div class="content_box"><a href="single.jsp">
                                <img src="images/5.jpg" class="img-responsive" alt="">
                            </a>
                        </div>
                        <h4><a href="single.jsp">Contrary to popular belief</a></h4>
                        <p>$ 199</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    </body>
</html>
