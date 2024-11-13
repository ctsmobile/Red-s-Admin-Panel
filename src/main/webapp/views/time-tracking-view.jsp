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
                <a href="dashboard.jsp" class="b-brand">
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
                        <a href="/redplastering/admin/dashboard" class="nav-link ">
                            <span class="pcoded-micon"><i class="bi bi-speedometer2"></i></span>
                            <span class="pcoded-mtext">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/redplastering/admin/tags" class="nav-link ">
                            <span class="pcoded-micon"><i class="bi bi-tags"></i></span>
                            <span class="pcoded-mtext">Tags</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/redplastering/admin/jobtype" class="nav-link ">
                            <span class="pcoded-micon"><i class="bi bi-briefcase"></i></span>
                            <span class="pcoded-mtext">Job Type</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/redplastering/admin/location" class="nav-link ">
                            <span class="pcoded-micon"><i class="bi bi-geo-alt"></i></span>
                            <span class="pcoded-mtext">Location</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/redplastering/admin/employee" class="nav-link ">
                            <span class="pcoded-micon"><i class="bi bi-people"></i></span>
                            <span class="pcoded-mtext">Employee</span>
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a href="/redplastering/admin/employee-time-tracking" class="nav-link ">
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
                                                        <h2>Time Tracking Detail</h2>
                                                    </div> 
                                                    <div class="ml-auto d-flex align-items-center PgRight">
                                                        <div class="TrackingFilter">
                                                            <a href="/redplastering/admin/editTimeTracking/${timeTrack.id}" class="btn btn-primary"><i class="bi bi-pencil"></i>Edit</a>
                                                            <span>  </span><a href="/redplastering/admin/employee-time-tracking" class="btn btn-primary"><i class="bi bi-arrow-left"></i>Back</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="card card-statistics">
                                                    <div class="card-body">
                                                        <div class="row TimeTrakingWp">
                                                            <div class="col">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <h5>Date: ${timeTrack.currentDate}</h5>
                                                                    </div>
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Employee Name:</strong>
                                                                            <p>${timeTrack.employeeName}</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Employee Tag:</strong>
                                                                            <p>${timeTrack.tag}</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Job Type:</strong>
                                                                            <p>${timeTrack.jobType}</p>
                                                                        </div>
                                                                    </div>                                                                   
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Clock in:</strong>
                                                                            <p>${timeTrack.clockInTime}</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Clock out:</strong>
                                                                            <c:if test = "${timeTrack.clockOutLocation == 'unassigned'}">
                                                                            <p style="color:red">${timeTrack.clockOutTime}</p>
                                                                            </c:if>
                                                                            <c:if test = "${timeTrack.clockOutLocation != 'unassigned'}">
                                                                               <p>${timeTrack.clockOutTime}</p>
                                                                            </c:if>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <strong>Location in:</strong>
                                                                                    <p>${timeTrack.clockInLocation}</p>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <strong>Location out:</strong>
                                                                                    <c:if test = "${timeTrack.clockOutLocation == 'unassigned'}">
                                                                                    <p style="color:red">${timeTrack.clockOutLocation}</p>
                                                                                    </c:if>
                                                                                    <c:if test = "${timeTrack.clockOutLocation != 'unassigned'}">
                                                                                       <p>${timeTrack.clockOutLocation}</p>
                                                                                    </c:if>
                                                                                </div>
                                                                            </div>                                                                            
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong> Start Break:</strong>
                                                                            <p>${timeTrack.breakInTime}</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong> End Break:</strong>
                                                                            <c:if test = "${timeTrack.breakOutLocation == 'unassigned'}">
                                                                            <p style="color:red">${timeTrack.breakOutTime}</p>
                                                                            </c:if>
                                                                            <c:if test = "${timeTrack.breakOutLocation != 'unassigned'}">
                                                                               <p>${timeTrack.breakOutTime}</p>
                                                                            </c:if>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <strong>Location in:</strong>
                                                                                    <p>${timeTrack.breakInLocation}</p>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <strong>Location out:</strong>
                                                                                    <c:if test = "${timeTrack.breakOutLocation == 'unassigned'}">
                                                                                    <p style="color:red">${timeTrack.breakOutLocation}</p>
                                                                                   </c:if>
                                                                                   <c:if test = "${timeTrack.breakOutLocation != 'unassigned'}">
                                                                                       <p>${timeTrack.breakOutLocation}</p>
                                                                                   </c:if>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <c:forEach items="${timeTravelList}" var="timeTravel">
                                                                    <div class="row" style="margin:0;padding:0">
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Start Travel:</strong>
                                                                            <p>${timeTravel.travelInTime}</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>End Travel:</strong>
                                                                            <c:if test = "${timeTravel.travelOutLocation == 'unassigned'}">
                                                                            <p style="color:red">${timeTravel.travelOutTime}</p>
                                                                            </c:if>
                                                                            <c:if test = "${timeTravel.travelOutLocation != 'unassigned'}">
                                                                               <p>${timeTravel.travelOutTime}</p>
                                                                            </c:if>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <strong>Location in:</strong>
                                                                                    <p>${timeTravel.travelInLocation}</p>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <strong>Location out:</strong>
                                                                                    <c:if test = "${timeTravel.travelOutLocation == 'unassigned'}">
                                                                                    <p style="color:red">${timeTravel.travelOutLocation}</p>
                                                                                    </c:if>
                                                                                    <c:if test = "${timeTravel.travelOutLocation != 'unassigned'}">
                                                                                       <p>${timeTravel.travelOutLocation}</p>
                                                                                    </c:if>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    </div>
                                                                    </c:forEach>
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
        </div>
    </div>
    <!-- Main Content end -->


  <!-- Delete Modal Guides-->
  <div class="modal fade" id="DeleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-body text-center">
            <img src="/views/assets/images/sent.png" alt="" width="50" height="46">
            <h4 class="pt-4">Are you sure want to delete this Guides?</h4>
            <div class="m-t-20"> 
                <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                <button type="submit" class="btn btn-danger" data-dismiss="modal">Delete</button>
            </div>
        </div>
      </div>
    </div>
  </div>

    <!-- Required Js -->
    <script src="/views/assets/js/vendors.js"></script>
    <script src="/views/assets/js/app.js"></script>
    <script src="/views/assets/js/pcoded.min.js"></script>

</body>
</html>
