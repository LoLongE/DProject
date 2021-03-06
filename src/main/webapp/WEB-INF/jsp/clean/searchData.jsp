<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" type="text/css"
	href="clean/css/customize-template.css" media="screen, projection" />
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<script src="clean/js/jquery/jquery-1.8.2.min.js" type="text/javascript"></script>
</head>
<script type="text/javascript">

</script>
<body>
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button class="btn btn-navbar" data-toggle="collapse"
					data-target="#app-nav-top-bar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="dashboard.html" class="brand"><i class="icon-leaf">
						Dashboard</i></a>
				<div id="app-nav-top-bar" class="nav-collapse">
					<ul class="nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">MENU <b class="caret hidden-phone"></b></a>
							<ul class="dropdown-menu">
								<li><a href="clean/demo/dashboard.html">Dashboard</a></li>
								<li><a href="clean/demo/form.html">Form</a></li>
								<li><a href="clean/demo/custom-view.html">Custom View</a></li>
								<li><a href="clean/demo/login.html">Login Page</a></li>
							</ul></li>
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
						<li><a href="http://localhost:18082/clean.do"> <i
								class="icon-home icon-large"></i>????????????
						</a></li>
						<li><a href="http://localhost:18082/insertDataForm.do"> <i
								class="icon-pencil icon-large"></i>??????
						</a></li>
						<li><a href="#"> <i class="icon-list-alt icon-large"></i>??????
						</a></li>
						<li><a href="#"> <i class="icon-search icon-large"></i>??????
						</a></li>
					</ul>
				</div>
			</div>
			<section class="nav nav-page">
			<div class="container">
				<div class="row">
					<div class="span7">
						<header class="page-header">
						<h3>??????</h3>
						</header>
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
							<h5>????????????</h5>
						</div>
						<div class="box-content">
							<br>
							<div class="control-group ">
								<label class="control-label">?????? ?????? ?????? </label>
								<div class="controls">
									<select id="challenge_question_control" class="span15" name="board_regist_yy">
										<option value="">-- ??? --</option>
										<option value="2019">2019</option>
										<option value="2020">2020</option>									
									</select>
								</div>
								<div class="controls">
									<select id="challenge_question_control" class="span15" name="board_regist_mm">
										<option value="">-- ??? --</option>
										<option value="01">01</option>
										<option value="02">02</option>
										<option value="03">03</option>
										<option value="04">04</option>
										<option value="05">05</option>
										<option value="06">06</option>
										<option value="07">07</option>
										<option value="08">08</option>
										<option value="09">09</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>									
									</select>
										</div>
										<div class="controls">
								<select id="challenge_question_control" class="span15" name="board_regist_dd">
										<option value="">-- ??? --</option>
										<option value="01">01</option>
										<option value="02">02</option>
										<option value="03">03</option>
										<option value="04">04</option>
										<option value="05">05</option>
										<option value="06">06</option>
										<option value="07">07</option>
										<option value="08">08</option>
										<option value="09">09</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>	
										<option value="13">13</option>	
										<option value="14">14</option>	
										<option value="15">15</option>	
										<option value="16">16</option>	
										<option value="17">17</option>	
										<option value="18">18</option>	
										<option value="19">19</option>	
										<option value="20">20</option>	
										<option value="21">21</option>	
										<option value="22">22</option>	
										<option value="23">23</option>
										<option value="24">24</option>	
										<option value="25">25</option>	
										<option value="26">26</option>	
										<option value="27">27</option>	
										<option value="28">28</option>	
										<option value="29">29</option>
										<option value="30">30</option>	
											
																		
									</select>
									</div>
								<div class="control-group ">
								<label class="control-label">????????? </label>
								<div class="controls">
									<input type="text" id="current-pass-control1"
										name="board_source" class="span15" value=""
										autocomplete="false">
								</div>
								<div class="control-group ">
								<label class="control-label">????????? </label>
								<div class="controls">
									<input type="text" id="current-pass-control1"
										name="board_destination" class="span15" value=""
										autocomplete="false">
								</div>
								<label class="control-label">?????? </label>
								<div class="controls">
									<select id="challenge_question_control" class="span15" name="board_status">
										<option value="">-- ?????? ?????? --</option>
										<option value="1">?????????</option>
										<option value="2">24??????</option>
										<option value="3">??????</option>
									</select>
								</div>
								<label class="control-label">??????</label>
								<div class="controls">
									<select id="challenge_question_control" class="span15" name="board_money_status">
										<option value="">-- ?????? ?????? --</option>
										<option value="1">?????????</option>
										<option value="2">????????????</option>										
									</select>
								</div>
									<div class="box-footer">

							<button id="submit-button" type="submit" class="btn btn-primary"
								name="board_insert_button" value="CONFIRM">??????</button>
							<button type="submit" class="btn" name="action" value="CANCEL">??????</button>
						</div>
							</div>
						
						</div>
						</div>
						</div>
						</div>
			<div class="row">
				<div class="span16">
					<div class="box pattern">
						<div class="box-header">
							<i class="icon-table"></i>
							<h5>????????????</h5>
						</div>

						<div class="box-content box-table">
							<table id="sample-table"
								class="table table-hover table-bordered tablesorter">
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

	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-transition.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-alert.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-modal.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-dropdown.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-scrollspy.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-tab.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-tooltip.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-popover.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-button.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-collapse.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-carousel.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-typeahead.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-affix.js"></script>
	<script type="text/javascript"
		src="clean/js/bootstrap/bootstrap-datepicker.js"></script>
	<script type="text/javascript"
		src="clean/js/jquery/jquery-tablesorter.js"></script>
	<script type="text/javascript" src="clean/js/jquery/jquery-chosen.js"></script>
	<script type="text/javascript" src="clean/js/jquery/virtual-tour.js"></script>
	<script type="text/javascript">
	if(${jsonString != null}){
	$(function () {
		
        let container = $('#pagination');
        container.pagination({
            dataSource: ${jsonString},	           
            callback: function (data, pagination) {	            		            	
            	var dataHtml;
                $.each(data, function (index, item) {	                	
                    var money_status = item.board_money_status;
                    var status = item.board_status;
                    if(status=="1") {
                    	item.board_status = "<a href='javascript:;' class='btn btn-small btn-success'>?????????</a>"
                    } else if (status=="2" || status=="3") {
                    	item.board_status = "<a href='javascript:;' class='btn btn-small btn-warning'>24??????&??????</a>"
                    }
                    if (money_status=="1") {
                    	item.board_money_status = "<a href='javascript:;' class='btn btn-small btn-danger'>?????????</a>"
                    } else if(money_status=="2") {
                    	item.board_money_status = "<a href='javascript:;' class='btn btn-small btn-info'>????????????</a>"
                    }                     
                   	dataHtml += 
                    	'<tr onclick=selectDetailView('+item.board_no+')>'+ '<td>' + item.board_regist_date + '</td>' +
    					'<td>' + item.board_source + '</td>' +
    					'<td>' + item.board_destination + '</td>' +
        				'<td>' + item.board_status + '</td>' +
	    				'<td>' + item.board_money + '</td>' +
	    				'<td>' + item.board_status_count + '</td>' +
	    				'<td>' + item.board_money_status +'</td>'+ '</tr>';        					
                });
				$("#data-container").html(dataHtml);
            }
        })
		
    });	
	}
	$(function() {
			$('#sample-table').tablesorter();
			$('#datepicker').datepicker();
			$(".chosen").chosen();
		});
	
	function selectDetailView(board_no){
		location.href="http://localhost:18082/updateDataForm.do?board_no="+board_no;    
	}
		  
	    
	</script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />
</body>

</html>