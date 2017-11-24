<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<style>
	.quarterli > li{
		float: left;
	  	width: 25%;
	  	height: 25%;
	  	margin: 0 -1px -1px 0;
	  	border: 1px solid transparent;
	  	overflow: hidden;
	}
</style>
<script type="text/javascript">
	var pageUrl = "pic.do";
	var showInfo = function() {
		$.ajax({
			type : "post",
			url : pageUrl,
			dataType : "json",
			timeout : 30000,
			data : {},
			success : function(data) {

			}
		});
	};

	var startShow = function() {
		console.log("test");
		var options = {
				"navbar":false,
				"movable":false,
				"title":false
		};
		$(".images").viewer(options);
		$('#myModal').modal("show");
	};
	$(function() {
		//showInfo();
	});
</script>
<div id="pad-wrapper" class="form-page">
	<form>
		<div class="field-box">
			<div class="col-md-12">
				<a class="btn-glow primary" onclick="startShow()" id="start" >显示</a>
			</div>
		</div>
		<div class="field-box">
			<div class="col-md-12">
				<div>
					<ul id="viewers" class="images quarterli">
						<li><img src="public/img/contact-img.png"></li>
						<li><img src="public/img/contact-img.png"></li>
						<li><img src="public/img/contact-img.png"></li>
						<li><img src="public/img/select2/spinner.gif"></li>
					</ul>
				</div>
			</div>
		</div>
	</form>
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>
</div>