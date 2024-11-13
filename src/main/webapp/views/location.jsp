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
                    <li class="nav-item active">
                        <a href="/redplastering/admin/location" class="nav-link">
                            <span class="pcoded-micon"><i class="bi bi-geo-alt"></i></span>
                            <span class="pcoded-mtext">Location</span>
                        </a>
                    </li>
                    <li class="nav-item">
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
            <a href="/redplastering/admin/dashboard" class="b-brand">
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
                                                        <h2>Location</h2>
                                                    </div>
                                                    <div class="ml-auto d-flex align-items-center PgRight">
                                                        <a href="/redplastering/admin/add-location" class="btn btn-primary"><i class="bi bi-plus"></i>Add Location</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="card card-statistics">
                                                <input value="${token}" id="tokenInput" hidden>
                                                <input value="${successMessage}" id="successMessage" hidden>
                                                    <div class="card-body">
                                                        <div class="datatable-wrapper table-responsive">
                                                            <table id="datatable" class="display compact table table-striped table-bordered">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Project Number</th>
                                                                        <th>Project Name</th>
                                                                        <th>Name</th>
                                                                        <th>Address</th>                                                                        
                                                                        <th>Range</th>
                                                                        <th>Shift Time</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach items="${locationList}" var="element">
                                                                    <tr>
                                                                        <td>${element.projectNumber}</td>
                                                                        <td>${element.projectName}</td>
                                                                        <td>${element.jobSide}</td>
                                                                        <td>${element.address}</td>
                                                                        <td>${element.rangeVale} Miles</td>
                                                                        <td>${element.shiftStartTime} to ${element.shiftEndTime}</td>
                                                                        <td class="ActionBox">
                                                                            <!-- <a href="location-view.html" class="btn btn-sm btn-primary">
                                                                                <span class="tooltiptext">View Detail</span>
                                                                                <i class="bi bi-eye"></i>
                                                                            </a> -->
                                                                            <a href="/redplastering/admin/editLocation/${element.id}" class="btn btn-sm btn-primary">
                                                                                <span class="tooltiptext">Edit</span>
                                                                                <i class="bi bi-pencil"></i>
                                                                            </a>
                                                                            <a href="javascript:void();" class="btn btn-sm btn-primary"  data-toggle="modal" data-target="#DeleteModal" onclick="deleteLocation('${element.id}')">
                                                                                <span class="tooltiptext">Delete</span>
                                                                                <i class="bi bi-trash3"></i>
                                                                            </a>
                                                                        </td>
                                                                    </tr>
                                                                    </c:forEach>

                                                                </tbody>
                                                            </table>
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
            <h4 class="pt-4">Are you sure want to delete this Location?</h4>
            <div class="m-t-20"> 
                <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                <button type="submit" class="btn btn-danger" data-dismiss="modal" onclick="confirm()">Delete</button>
            </div>
        </div>
      </div>
    </div>
  </div>
<script type="text/javascript">
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
  		var id = 0;
  		var token = document.getElementById('tokenInput').value;
  		function deleteLocation(tagId) {
  			id = tagId;
  		}
  		function confirm() {
  		console.log(token);
  			$.ajax({
  				url : "http://54.82.200.45:8082/api/v1/admin/deleteLocation/" + id,
  				type : "delete",
  				headers : {
  				'token':token
  				},
  				success : function() {
                    location.reload(true);
  				}
  			});
  		}
  	</script>
    <!-- Required Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://pagination.js.org/dist/2.1.4/pagination.min.js"></script>
    <script src="/views/assets/js/vendors.js"></script>
    <script src="/views/assets/js/app.js"></script>
    <script src="/views/assets/js/pcoded.min.js"></script>

</body>
</html>
