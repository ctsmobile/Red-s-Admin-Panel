<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Welcome Red Plastering</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="admin" />
    <meta name="author" content="" />

    <!-- Favicon icon -->
    <link rel="icon" href="/views/assets/images/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="/views/assets/fonts/fontawesome/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="/views/assets/plugins/animation/css/animate.min.css">
    <link rel="stylesheet" href="/views/assets/css/bootstrap-icons.css">
    <link rel="stylesheet" type="text/css" href="/views/assets/css/vendors.css" />
    <link rel="stylesheet" href="/views/assets/css/style.css">
    <link rel="stylesheet" href="/views/assets/css/custom.css">
    <style>
        .iconBox{
            width: 70px;
            height: 70px;
            border-radius: 50%;
            line-height: 70px;
            margin: -10px auto 0;
            font-size: 60px;
            color: green;
        }
    </style>
</head>

<body>
    <div class="loader">
        <div class="h-100 d-flex justify-content-center">
            <div class="align-self-center">
                <img src="/views/assets/images/loader.gif" alt="loader">
            </div>
        </div>
    </div>

    <!-- Side Bar Start-->
    <nav class="pcoded-navbar">
        <div class="navbar-wrapper">
            <div class="navbar-brand header-logo">
                <a href="/redplastering/admin/dashboard" class="b-brand">
                    <figure><img src="/views/assets/images/logo.png" /></figure>
                </a>

                <div class="navbar-brand b-brand_icon">
                    <a href="/redplastering/admin/dashboard" class="b-brand">
                        <figure><img src="/views/assets/images/logo_icon.png" /></figure>
                    </a>
                </div>
            </div>
            <div class="navbar-content scroll-div">
                <ul class="nav pcoded-inner-navbar">
                    <li class="nav-item">
                        <a href="/redplastering/admin/dashboard" class="nav-link">
                            <span class="pcoded-micon"><i class="bi bi-speedometer2"></i></span>
                            <span class="pcoded-mtext">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/redplastering/admin/tags" class="nav-link">
                            <span class="pcoded-micon"><i class="bi bi-tags"></i></span>
                            <span class="pcoded-mtext">Tags</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/redplastering/admin/jobtype" class="nav-link">
                            <span class="pcoded-micon"><i class="bi bi-briefcase"></i></span>
                            <span class="pcoded-mtext">Job Type</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/redplastering/admin/location" class="nav-link">
                            <span class="pcoded-micon"><i class="bi bi-geo-alt"></i></span>
                            <span class="pcoded-mtext">Location</span>
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a href="/redplastering/admin/employee" class="nav-link">
                            <span class="pcoded-micon"><i class="bi bi-people"></i></span>
                            <span class="pcoded-mtext">Employee</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/redplastering/admin/employee-time-tracking" class="nav-link">
                            <span class="pcoded-micon"><i class="bi bi-alarm"></i></span>
                            <span class="pcoded-mtext">Time Tracking</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Side Bar end -->

    <!-- Header start -->

    <header class="navbar pcoded-header navbar-expand-lg navbar-light">
        <div class="m-header">
            <a class="mobile-menu" id="mobile-collapse1" href="javascript:void();"><span></span></a>
            <a href="dashboard.jsp" class="b-brand">
                <figure><img src="/views/assets/images/logo.png" /></figure>
            </a>
        </div>
        <a class="mobile-menu" id="mobile-header" href="javascript:void();">
            <i class="feather icon-more-horizontal"></i>
        </a>
        <div class="collapse navbar-collapse d-flex align-items-center CustomTitle">
            <ul class="navbar-nav">
                <li><a class="mobile-menu" id="mobile-collapse" href="javascript:void();"><span></span></a></li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li>
                    <div class="dropdown drp-user">
                        <a href="javascript:void();" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="feather icon-user"></i>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right profile-notification">
                            <div class="pro-head">
                                <img src="/views/assets/images/avatar-2.jpg" class="img-radius" alt="User-Profile-Image">
                                <span>${name}</span>
                            </div>
                            <ul class="pro-body">
                                <li>
                                    <a href="/redplastering/admin/profile" class="dropdown-item"> <i class="feather icon-user"></i> Profile</a>
                                </li>
                                <li>
                                    <a href="/redplastering/admin/change-password" class="dropdown-item"> <i class="feather icon-lock"></i> Reset Password</a>
                                </li>
                                <li>
                                    <a href="/redplastering/admin/logout" class="dropdown-item"> <i class="feather icon-log-out"></i> Logout </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </header>
    <!-- Header end -->
    <!-- [ Main Content ] start -->
    <div class="pcoded-main-container">
        <div class="pcoded-wrapper">
            <div class="pcoded-content">
                <div class="pcoded-inner-content">
                    <div class="main-body">
                        <div class="page-wrapper">                            
                            <div class="app-container">                                
                                <div class="app-main" id="main">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-12 mb-4">
                                                <div class="d-block d-sm-flex flex-nowrap align-items-center">
                                                    <div class="page-title mb-2 mb-sm-0">
                                                        <h2>Employee</h2>
                                                    </div>
                                                    <div class="ml-auto d-flex align-items-center PgRight">
                                                        <a href="/redplastering/admin/add-employee" class="btn btn-primary"><i class="bi bi-plus"></i>Add Employee</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="card card-statistics">
                                                    <div class="card-body">
                                                    <input value="${token}" id="tokenInput" hidden>
                                                    <input value="${successMessage}" id="successMessage" hidden>
                                                        <div class="datatable-wrapper table-responsive">
                                                            <table id="datatable" class="display compact table table-striped table-bordered">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Employee Id</th>
                                                                        <th>Employee Name</th>
                                                                        <th>Email Id</th>                                                                        
                                                                        <th>Tags</th>
                                                                        <th>Foreman</th>
                                                                        <th>Device ID</th>
                                                                        <th>Employee State</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody id="data-container">
                                                                <c:forEach items="${list}" var="element">
                                                                    <tr>
                                                                        <td>${element.employeeId}</td>
                                                                        <td>${element.employeeName}</td>
                                                                        <td>${element.email}</td>
                                                                        <td>${element.tags}</td>
                                                                        <td>${element.foreman}</td>
                                                                        <td>${element.deviceId}</td>
                                                                        <td>
                                                                            <c:if test = "${element.employeeState == 'checkedIn' || element.employeeState == 'breakOut' || element.employeeState == 'travelOut'}">
                                                                            <p>Clocked In</p>
                                                                            </c:if>
                                                                            <c:if test = "${element.employeeState == 'checkedOut' || empty element.employeeState}">
                                                                            <p>Clocked Out</p>
                                                                            </c:if>
                                                                            <c:if test = "${element.employeeState == 'breakIn'}">
                                                                            <p>Break In</p>
                                                                            </c:if>
                                                                            <c:if test = "${element.employeeState == 'travelIn'}">
                                                                            <p>Travel In</p>
                                                                            </c:if>
                                                                        </td>
                                                                        <td class="ActionBox">
                                                                            <a href="/redplastering/admin/view-employee/${element.employeeId}" class="btn btn-sm btn-primary">
                                                                                <span class="tooltiptext">View Detail</span>
                                                                                <i class="bi bi-eye"></i>
                                                                            </a>
                                                                            <a href="/redplastering/admin/edit-employee/${element.employeeId}" class="btn btn-sm btn-primary">
                                                                                <span class="tooltiptext">Edit</span>
                                                                                <i class="bi bi-pencil"></i>
                                                                            </a>
                                                                            <a href="javascript:void();" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#Updatepassword" onclick="deleteEmployee('${element.employeeId}')">
                                                                                                                                                            <span class="tooltiptext">Update Password</span>
                                                                                                                                                            <i class="bi bi-lock"></i>
                                                                                                                                                        </a>
                                                                            <a href="javascript:void();" class="btn btn-sm btn-primary"  data-toggle="modal" data-target="#DeleteModal" onclick="deleteEmployee('${element.employeeId}')">
                                                                                <span class="tooltiptext">Delete</span>
                                                                                <i class="bi bi-trash3"></i>
                                                                            </a>
                                                                        </td>
                                                                    </tr>
                                                                    </c:forEach>
                                                                </tbody>
                                                            </table>
                                                            <div id="pagination"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Main Content end -->

  <!-- Success Message Modal -->
<div class="modal fade" id="MoreTravel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-body">
                <p class="text-end"><button type="button" class="btn-close" style="color: red;" data-dismiss="modal" aria-label="Close"></button></p>
                <div class="iconBox"><i class="bi bi-check-circle-fill"></i></div>
                <h3 class="mt-5 pb-5 text-center">${successMessage}</h3>
            </div>
        </div>
    </div>
</div>

  <!-- Delete Modal Guides-->
  <div class="modal fade" id="DeleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-body text-center">
            <img src="/views/assets/images/sent.png" alt="" width="50" height="46">
            <h4 class="pt-4">Are you sure want to delete this Employee?</h4>
            <div class="m-t-20"> 
                <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                <button type="submit" class="btn btn-danger" data-dismiss="modal" onclick="confirm()">Delete</button>
            </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Update Password Modal -->
    <div class="modal fade" id="Updatepassword" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-body">
                  <div class="row form-group">
                      <div class="col-md-12 position-relative">
                          <label class="pb-1">Update Password</label>
                          <!-- <input type="password" class="form-control"> -->
                          <input type="password" id="password-field" class="form-control" minlength="6" required>
                          <i id="pass-status" class="fa fa-eye-slash" aria-hidden="true" onClick="viewPassword()"></i>
                      </div>
                  </div>
                  <div class="form-group text-center mt-3">
                      <a href="javascrip:void(0);" class="btn btn-white" data-dismiss="modal">Cancel</a>
                      <button type="send" class="btn btn-primary" onclick="update()">Update <i class="bi bi-send"></i></button>
                  </div>
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
  		var id;
  		var token = document.getElementById('tokenInput').value;
  		var message = document.getElementById('successMessage').value;
  		window.onload = function(){
  		console.log("pagination");
  		console.log("message");
                if(message !== null && message.length > 3){
                  $('#MoreTravel').modal('show');
                  }
  		$('#datatable').pagination({
           limit:5});

        };
  		function admit() {
let rows = []
                    $('table tbody tr').each(function(i, row) {
                    	return rows.push(row);
                    });

                    $('#pagination').pagination({
                        limit:5,
                        dataSource: rows,
                        pageSize: 1,
                        callback: function(data, pagination) {
                            $('tbody').html(data);
                        }
                    });
  		}
  		function deleteEmployee(employeeId) {
  			id = employeeId;
  		}
  		function confirm() {
  		console.log(token);
  		console.log(id);
  			$.ajax({
  				url : "http://54.82.200.45:8082/api/v1/admin/deleteEmployee/"+id,
  				type : "delete",
  				headers : {
  				'token':token
  				},
  				success : function() {
                    location.reload(true);
  				}
  			});
  		};
  		function update() {
          		console.log(token);
          		console.log(id);
          		var password = document.getElementById('password-field').value;
          			$.ajax({
          				url : "http://54.82.200.45:8082/api/v1/admin/updatePassword/"+id,
          				type : "put",
          				headers : {
          				'token':token
          				},
          				contentType: "application/json",
          				data : JSON.stringify({ "password": password }),
          				success : function() {
                            location.reload(true);
          				}
          			});
          		};
  		function viewPassword() {
                    var passwordInput = document.getElementById('password-field');
                    var passStatus = document.getElementById('pass-status');

                    if (passwordInput.type == 'password') {
                        passwordInput.type = 'text';
                        passStatus.className = 'fa fa-eye';

                    } else {
                        passwordInput.type = 'password';
                        passStatus.className = 'fa fa-eye-slash';
                    }
                };
  	</script>
    <!-- Required Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://pagination.js.org/dist/2.1.4/pagination.min.js"></script>
    <script src="/views/assets/js/vendors.js"></script>
    <script src="/views/assets/js/app.js"></script>
    <script src="/views/assets/js/pcoded.min.js"></script>

</body>
</html>
