<!DOCTYPE html>
<%@ page session="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>School Management System - Staff Designation</title>

		<!-- topbar starts -->
			<%@ include file="/WEB-INF/common_views/header.jsp" %>
		<!-- topbar ends -->
			<!-- left menu starts -->
			<%@ include file="/WEB-INF/common_views/menu.jsp" %>			
			<!-- left menu ends -->


<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <h1>
    Staff Designation
    </h1>
    <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-dashboard"></i> Dashboard</a></li>
    <li><a href="#"><i class="fa fa-dashboard"></i> Settings</a></li>
    <li class="active">Add/Edit Staff Designation</li>
    </ol>
    </section>
	<!--
	<div class="col-md-3">
		<a class="btn btn-default pull-right" href="addstudent.htm" role="button"><spring:message code="Label.Add.Student"/></a>		
	</div>
	</div>-->

<section class="content">


	<form:form commandName="staffdesignation" method="POST" name="staffdesignation">
	
    	<div class="row">
		<div class="col-md-12">

		 	<div class="box box-primary">
	            <div class="box-body">
					
					<div class="form-group">

						<div class="col-md-3">
						  	<c:choose>
							  	<c:when test="${not empty error_name}">
							  		<div class="form-group has-error red-tooltip" data-toggle="tooltip" data-placement="bottom" title="${error_name}"> 
							  	</c:when>
							  	<c:otherwise>
							  		<div class="form-group" data-toggle="tooltip" data-placement="bottom" title="${error_name}">
							  	</c:otherwise>
						  	</c:choose>
							<label class="control-label" for="focusedInput">Name</label>
							<div class="control">
						  		<form:input class="form-control" id="name" path="name"/>
				  			</div>
						  </div>
						</div>


						<div class="col-md-3">
							<div class="form-group" data-toggle="tooltip" data-placement="bottom" title="Check if login information is necessary"> 
							<label class="control-label" for="focusedInput">Is Able To Log In</label>
							<div class="control">
						  		<form:checkbox class="form-control" id="hasAssociatedLoginInformation" path="hasAssociatedLoginInformation"/>
				  			</div>
						  </div>
						</div>

					</div>
				</div>
			</div>			    

  <div class="box box-default">
    <div class="box-body">
	  		<div class="form-actions">
					<button type="submit" class="btn btn-default">Save changes</button>
					<a class="btn" href="showcategories.htm">Cancel</a>
				</div>
			</div>	
		</div>
	</div>	
</div><!--/span-->
<!-- content ends -->
</form:form>
</div><!--/#content.span10-->
</div><!--/fluid-row-->

<script src='js/common.js'></script>
<!--footer-->
<%@ include file="/WEB-INF/common_views/footer.jsp" %>