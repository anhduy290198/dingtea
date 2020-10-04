<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!-- tag-libs -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <!-- Title Page-->
    <title>ADMIN</title>

    <!-- CSS -->
    <!-- <%@ include file="/WEB-INF/views/admin/layout/include-css.jsp" %> -->
    

</head>

<body>
    <div class="page-wrapper">
    
        <!-- HEADER MOBILE
        
        -->
        <%@ include file="/WEB-INF/views/admin/layout/headerMobile.jsp" %>
    		
        <!-- END HEADER MOBILE-->
        
			
        <!-- MENU SIDEBAR
        
        -->
        <%@ include file="/WEB-INF/views/admin/layout/menuSlidebar.jsp" %>
        	
        <!-- END MENU SIDEBAR-->
        

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            	<%@ include file="/WEB-INF/views/admin/layout/header.jsp" %>
            <!-- HEADER DESKTOP-->

            <div class="main-content">
            	
            </div>

            <!-- END PAGE CONTAINER-->
        </div>

    </div>

    <!-- JS 
    
    -->
    <%@ include file="/WEB-INF/views/admin/layout/include-js.jsp" %>
    

</body>

</html>
<!-- end document-->
