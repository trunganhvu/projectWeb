<%-- 
    Document   : login
    Created on : Mar 4, 2019, 3:45:52 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>

        <jsp:include page="header.jsp"></jsp:include>

   
            <div class="container">
                <div class="account">
                    <h2 class="account-in">Login</h2>
                    <form>
                        <div>
                            <span>Username</span>
                            <input type="text">
                        </div> 	
                        
                        <div> 
                            <span class="word">Password</span>
                            <input type="password">
                        </div>				
                        <input type="submit" value="Login"> 
                    </form>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
