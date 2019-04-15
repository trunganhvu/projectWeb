<%-- 
    Document   : sp
    Created on : Apr 15, 2019, 3:17:28 PM
    Author     : Tomm
--%>

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
<script src="js/simpleCart.min.js"> </script>
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
    </head>
    <body>
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
				<input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
				<input type="submit" value="Subscribe" id="submit" name="submit">
				<div id="response"> </div>
		     </div>
	         <div class="clearfix"></div>
       </div>
        <div class="clearfix"></div>
	 </div>
</div>
        <div class="container">
<div class="women_main">
	<div class="col-md-9 w_content">
	    <div class="women">
			
			
		     <div class="clearfix"></div>	
		</div>
		<!-- grids_of_4 -->
		<div class="grids_of_4">
		  <div class="grid1_of_4 simpleCart_shelfItem">
				<div class="content_box"><a href="single.jsp">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/1.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask1">
	                        <div class="info"> </div>
			            </div>
				   	  </a>
				   </div>
				    <h5><a href="single.jsp"> reebok</a></h5>
				    
				     <div class="size_1">
				     	<span class="item_price">$187.95</span>
				      
		      		    <div class="clearfix"></div>
		      		  </div>
		      		  <div class="size_2">
		      		  
			    	    <div class="size_2-right"><input type="button" class="item_add add3" value="" /></div>
			    	    <div class="clearfix"> </div>
			    	 </div>
			     </div>
			</div>
			<!-------------------------------------------->
			<div class="grid1_of_4 simpleCart_shelfItem">
				<div class="content_box"><a href="single.jsp">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/2.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask1">
	                        <div class="info"> </div>
			            </div>
				   	  </a>
				   </div>
				    <h5><a href="single.jsp">Van old</a></h5>
				   
				     <div class="size_1">
				     	<span class="item_price">$187.95</span>
				      
		      		    <div class="clearfix"></div>
		      		  </div>
		      		  <div class="size_2">
		      		   
			    	    <div class="size_2-right"><input type="button" class="item_add add3" value="" /></div>
			    	    <div class="clearfix"> </div>
			    	 </div>
			     </div>
			</div>
			<!-------------------------------------------->
			<div class="grid1_of_4 simpleCart_shelfItem">
				<div class="content_box"><a href="single.jsp">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/3.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask1">
	                        <div class="info"> </div>
			            </div>
				   	  </a>
				   </div>
				    <h5><a href="single.jsp"> Van</a></h5>
				   
				     <div class="size_1">
				     	<span class="item_price">$187.95</span>
				       
		      		    <div class="clearfix"></div>
		      		  </div>
		      		  <div class="size_2">
		      		  
			    	    <div class="size_2-right"><input type="button" class="item_add add3" value="" /></div>
			    	    <div class="clearfix"> </div>
			    	 </div>
			     </div>
			</div>
			<!-------------------------------------------->
			<div class="grid1_of_4 simpleCart_shelfItem">
				<div class="content_box"><a href="single.jsp">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/4.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask1">
	                        <div class="info"> </div>
			            </div>
				   	  </a>
				   </div>
				    <h5><a href="single.jsp"> Nike</a></h5>
				   
				     <div class="size_1">
				     	<span class="item_price">$187.95</span>
				       
		      		    <div class="clearfix"></div>
		      		  </div>
		      		  <div class="size_2">
		      		  
			    	   <div class="size_2-right"><input type="button" class="item_add add3" value="" /></div>
			    	    <div class="clearfix"> </div>
			    	 </div>
			   	</div>
			</div>
			<div class="clearfix"></div>
		</div>
	<!-------------------------------------------->
		<div class="grids_of_4">
		  <div class="grid1_of_4 simpleCart_shelfItem">
				<div class="content_box"><a href="single.jsp">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/5.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask1">
	                        <div class="info"> </div>
			            </div>
				   	  </a>
				   </div>
				    <h5><a href="single.jsp"> Ultraboots</a></h5>
				 
				     <div class="size_1">
				     	<span class="item_price">$187.95</span>
				      
		      		    <div class="clearfix"></div>
		      		  </div>
		      		  <div class="size_2">
		      		   
			    	    <div class="size_2-right"><input type="button" class="item_add add3" value="" /></div>
			    	    <div class="clearfix"> </div>
			    	 </div>
			     </div>
			</div>
			<!----------------->
			<div class="grid1_of_4 simpleCart_shelfItem">
				<div class="content_box"><a href="single.jsp">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/6.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask1">
	                        <div class="info"> </div>
			            </div>
				   	  </a>
				   </div>
				    <h5><a href="single.jsp"> Vans</a></h5>
				    
				     <div class="size_1">
				     	<span class="item_price">$187.95</span>
				     
		      		    <div class="clearfix"></div>
		      		  </div>
		      		  <div class="size_2">
		      		   
			    	    <div class="size_2-right"><input type="button" class="item_add add3" value="" /></div>
			    	    <div class="clearfix"> </div>
			    	 </div>
			     </div>
			</div>
			<!----------------->
			<div class="grid1_of_4 simpleCart_shelfItem">
				<div class="content_box"><a href="single.jsp">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/9.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask1">
	                        <div class="info"> </div>
			            </div>
				   	  </a>
				   </div>
				    <h5><a href="single.jsp"> Ultra Boost</a></h5>
				   
				     <div class="size_1">
				     	<span class="item_price">$187.95</span>
				      
		      		    <div class="clearfix"></div>
		      		  </div>
		      		  <div class="size_2">
		      		   
			    	    <div class="size_2-right"><input type="button" class="item_add add3" value="" /></div>
			    	    <div class="clearfix"> </div>
			    	 </div>
			     </div>
			</div>
<!----------------->


			
			<div class="grid1_of_4 simpleCart_shelfItem">
				<div class="content_box"><a href="single.jsp">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/8.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask1">
	                        <div class="info"> </div>
			            </div>
				   	  </a>
				   </div>
				    <h5><a href="single.html"> Adidas NMD</a></h5>
				   
				     <div class="size_1">
				     	<span class="item_price">$187.95</span>
				       
		      		    <div class="clearfix"></div>
		      		  </div>
		      		  <div class="size_2">
		      		   
			    	    <div class="size_2-right"><input type="button" class="item_add add3" value="" /></div>
			    	    <div class="clearfix"> </div>
			    	 </div>
			     </div>
			</div>
			<div class="clearfix"></div>
		</div>
		
	</div>
	<!-- start sidebar -->
	<div class="col-md-3">
	 
   <div class="clearfix"></div>
   <!-- end content -->
 </div>
</div>
    </body>
</html>
