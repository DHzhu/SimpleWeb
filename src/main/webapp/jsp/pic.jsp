<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>

<link href="<%=request.getContextPath()%>/public/css/compiled/form-showcase.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
	var pageUrl = "pic.do";
	var showInfo = function(){
		$.ajax({
			type:"post",
			url:pageUrl,
			dataType:"json",
			timeout: 30000,
			data:{},
	    	success:function(data){
	    		
	    	},
	    	error:function(XMLHttpRequest, textStatus, errorThrown){
	    		
	    	}
	    });
	};
	$(function(){
		showInfo();
	});
</script>
<div id="pad-wrapper" class="form-page">
	<form>
		<div class="field-box">
             <div class="col-md-12">
                 <textarea class="form-control" style="resize:none;background-color:#fffdfd;"  rows="28" id="infoContent" readonly></textarea>
             </div>
         </div>
	</form>
</div>