<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="layout" content="main" />
<link rel="stylesheet" type="text/css" href="clean/css/customize-template.css" media="screen, projection" />
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script type="text/javascript" src="clean/js/jquery/jquery-1.8.2.min.js"></script>
</head>

<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button class="btn btn-navbar" data-toggle="collapse" data-target="#app-nav-top-bar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a href="dashboard.html" class="brand"><i class="icon-leaf"> Dashboard</i></a>
				<div id="app-nav-top-bar" class="nav-collapse">
					<ul class="nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">MENU <b class="caret hidden-phone"></b></a>
							<ul class="dropdown-menu">
								<li><a href="clean/demo/dashboard.html">Dashboard</a></li>
								<li><a href="clean/demo/form.html">Form</a></li>
								<li><a href="clean/demo/custom-view.html">Custom View</a></li>
								<li><a href="clean/demo/login.html">Login Page</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div id="body-container">
		<div id="body-content">
			<div class="body-nav body-nav-horizontal body-nav-fixed">
				<div class="container">
					<ul>
						<li><a href="http://localhost:18084/selectMainLedgerForm.do"> <i class="icon-home icon-large"></i>????????????</a></li>
						<li><a href="http://localhost:18084/insertLedgerForm.do"> <i class="icon-pencil icon-large"></i>??????</a></li>
						<li><a href="http://localhost:18084/selectLedgerForm.do"> <i class="icon-list-alt icon-large"></i>??????</a></li>
						<li><a href="http://localhost:18084/searchLedgerForm.do"> <i class="icon-search icon-large"></i>??????</a></li>
					</ul>
				</div>
			</div>
			<section class="nav nav-page">
			<div class="container">
				<div class="row">
					<div class="span7">
						<header class="page-header"><h3>??????</h3></header>
					</div>
				</div>
			</div>
			</section>
			<section class="page container">
			<div class="row">
				<div class="span16">
					<div class="box pattern">
						<div class="box-header">
							<i class="icon-table"></i>
							<h5>??????</h5>
						</div>
						<div class="box-content box-table">
							<table id="sample-table" class="table table-hover table-bordered tablesorter">
								<section>
								<thead>
									<tr>
										<th>??????</th>
										<th>?????????</th>
										<th>?????????</th>
										<th>??????</th>
										<th>??????</th>
										<th>??????</th>
										<th>??????</th>
									</tr>
								</thead>
								<tbody id="data-container"></tbody>
								</section>
							</table>
						</div>
						<div class="box-footer">
							<div id="pagination"></div>
						</div>
					</div>
				</div>
			</div>
			</section>
		</div>
	</div>

	<footer class="application-footer">
	<div class="container">
		<p>Application Footer</p>
		<div class="disclaimer">
			<p>This is an example disclaimer. All right reserved.</p>
			<p>Copyright ?? keaplogik 2011-2012</p>
		</div>
	</div>
	</footer>

	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-transition.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-alert.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-modal.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-dropdown.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-scrollspy.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-tab.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-tooltip.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-popover.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-button.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-collapse.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-carousel.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-typeahead.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-affix.js"></script>
	<script type="text/javascript" src="clean/js/bootstrap/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="clean/js/jquery/jquery-tablesorter.js"></script>
	<script type="text/javascript" src="clean/js/jquery/jquery-chosen.js"></script>
	<script type="text/javascript" src="clean/js/jquery/virtual-tour.js"></script>
	<script type="text/javascript">
	$(function () {
        let container = $('#pagination');
        container.pagination({
            dataSource: ${result},	           
            callback: function (data, pagination) {	            		            	
            	var dataHtml;
                $.each(data, function (index, item) {	                	
                    var money_status = item.ledger_money_status;
                    var status = item.ledger_status;
                    if(status=="1") {
                    	item.ledger_status = "<a href='javascript:;' class='btn btn-small btn-success'>?????????</a>"
                    } else if (status=="2" || status=="3") {
                    	item.ledger_status = "<a href='javascript:;' class='btn btn-small btn-warning'>24??????&??????</a>"
                    }
                    if (money_status=="1") {
                    	item.ledger_money_status = "<a href='javascript:;' class='btn btn-small btn-danger'>?????????</a>"
                    } else if(money_status=="2") {
                    	item.ledger_money_status = "<a href='javascript:;' class='btn btn-small btn-info'>????????????</a>"
                    }                     
                   	dataHtml += 
                    	'<tr onclick=selectDetailView('+item.board_no+')>'+ '<td>' + item.ledger_regist_date + '</td>' +
    					'<td>' + item.ledger_source + '</td>' +
    					'<td>' + item.ledger_destination + '</td>' +
        				'<td>' + item.ledger_status + '</td>' +
	    				'<td>' + item.ledger_money + '</td>' +
	    				'<td>' + item.ledger_status_count + '</td>' +
	    				'<td>' + item.ledger_money_status +'</td>'+ '</tr>';        					
                });
				$("#data-container").html(dataHtml);
            }
        })
    });	
	$(function() {
			$('#sample-table').tablesorter();
			$('#datepicker').datepicker();
			$(".chosen").chosen();
		});
	
	function selectDetailView(ledger_no){
		location.href="http://localhost:18084/updateLedgerForm.do?ledger_no="+ledger_no;    
	}		  
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />
</body>
</html>