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
    
    <link rel="stylesheet" href="/views/assets/css/bootstrap-min.css" type="text/css">
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
                                                        <h2>Time Tracking Edit</h2>
                                                    </div> 
                                                    <div class="ml-auto d-flex align-items-center PgRight">
                                                        <div class="TrackingFilter">
                                                            <a href="/redplastering/admin/employee-time-tracking" class="btn btn-primary"><i class="bi bi-arrow-left"></i>Back</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="card card-statistics">
                                                    <div class="card-body TrackingWrapper">
                                                        <form action="/redplastering/admin/updateTimeTracking/${timeTrack.id}">
                                                            <div class="row mb-2">
                                                                <div class="col-md-12">
                                                                    <h5>Date: ${timeTrack.currentDate}</h5>
                                                                </div>
                                                            </div>
                                                            <div class="row mb-3">                                                               
                                                                <div class="col-md-6 col-lg-4">
                                                                    <label>Employee Name</label>
                                                                    <input type="text" class="form-control" value="${timeTrack.employeeName}" disabled>
                                                                </div>
                                                                <div class="col-md-6 col-lg-4">
                                                                    <label>Employee Tag</label>
                                                                    <input type="text" class="form-control" value="${timeTrack.tag}" disabled>
                                                                </div>
                                                                <div class="col-md-6 col-lg-4">
                                                                    <label>Job Type</label>
                                                                    <input type="text" class="form-control" value="${timeTrack.jobType}" disabled>
                                                                </div>                                                               
                                                            </div>
                                                            <div class="row mb-3 align-items-center">
                                                                <div class="col-md-6 col-lg-4">
                                                                    <label>Clock in</label>
                                                                    <input type="text" class="form-control" value="${timeTrack.clockInTime}" pattern="([0-9]|0[0-9]|1[0-9]|2[0-3]):([0-5][0-9])\s*([AaPp][Mm]))" name="clockInTime">
                                                                </div>
                                                                <div class="col-md-6 col-lg-4">
                                                                    <label>Clock out</label>
                                                                    <input type="text" class="form-control" value="${timeTrack.clockOutTime}" pattern="([0-9]|0[0-9]|1[0-9]|2[0-3]):([0-5][0-9])\s*([AaPp][Mm]))" name="clockOutTime">
                                                                </div>
                                                                <div class="col-md-6 col-lg-4">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <label>Location in</label>
                                                                    <select class="form-control" name="clockInLocation">
                                                                    <option value=0>---select location---</option>
                                                                    <c:forEach items="${locationList}" var="element">
                                                                    <c:if test = "${element.id == timeTrack.clockInLocationId}">
                                                                        <option value="${element.id}" selected>${element.jobSide}</option>
                                                                    </c:if>
                                                                    <c:if test = "${element.id != timeTrack.clockInLocationId}">
                                                                         <option value="${element.id}">${element.jobSide}</option>
                                                                    </c:if>
                                                                    </c:forEach>
                                                                    </select>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <label>Location out</label>
                                                                    <select class="form-control" name="clockOutLocation">
                                                                    <option value=0>---select location---</option>
                                                                    <c:forEach items="${locationList}" var="element">
                                                                    <c:if test = "${element.id == timeTrack.clockOutLocationId}">
                                                                        <option value="${element.id}" selected>${element.jobSide}</option>
                                                                    </c:if>
                                                                    <c:if test = "${element.id != timeTrack.clockOutLocationId}">
                                                                         <option value="${element.id}">${element.jobSide}</option>
                                                                    </c:if>
                                                                    </c:forEach>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                        </div>
                                                                </div>
                                                            </div>
                                                            <div class="row mb-3 align-items-center" style="margin: 0 8px;">
                                                                <div class="col-md-6 col-lg-4">
                                                                    <label>Break in</label>
                                                                    <input type="text" class="form-control" value="${timeTrack.breakInTime}" pattern="\b((1[0-2]|0?[1-9]).([0-5][0-9]) ([AaPp][Mm]))" name="breakInTime">
                                                                </div>
                                                                <div class="col-md-6 col-lg-4">
                                                                    <label>Break out</label>
                                                                    <input type="text" class="form-control" value="${timeTrack.breakOutTime}" pattern="\b((1[0-2]|0?[1-9]).([0-5][0-9]) ([AaPp][Mm]))" name="breakOutTime">
                                                                </div>
                                                                <div class="col-md-6 col-lg-4">
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <label>Location in</label>
                                                                            <select class="form-control" name="breakInLocation">
                                                                            <option value=0>---select location---</option>
                                                                            <c:forEach items="${locationList}" var="element">
                                                                            <c:if test = "${element.id == timeTrack.breakInLocationId}">
                                                                                <option value="${element.id}" selected>${element.jobSide}</option>
                                                                            </c:if>
                                                                            <c:if test = "${element.id != timeTrack.breakInLocationId}">
                                                                                 <option value="${element.id}">${element.jobSide}</option>
                                                                            </c:if>
                                                                            </c:forEach>
                                                                            </select>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <label>Location out</label>
                                                                            <select class="form-control" name="breakOutLocation">
                                                                            <option value=0>---select location---</option>
                                                                            <c:forEach items="${locationList}" var="element">
                                                                            <c:if test = "${element.id == timeTrack.breakOutLocationId}">
                                                                                <option value="${element.id}" selected>${element.jobSide}</option>
                                                                            </c:if>
                                                                            <c:if test = "${element.id != timeTrack.breakOutLocationId}">
                                                                                 <option value="${element.id}">${element.jobSide}</option>
                                                                            </c:if>
                                                                            </c:forEach>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <c:forEach items="${timeTrack.travelDetailList}" var="timeTravel">
                                                            <div class="row" style="margin-left: -4px; margin-right: -4px; ">
                                                            <input type="number" value="${timeTravel.id}" name="id" hidden>
                                                            <div class="row mb-3 align-items-center" style="margin: 0;">
                                                                <div class="col-md-6 col-lg-4">
                                                                    <label>Travel in</label>
                                                                    <input type="text" class="form-control" value="${timeTravel.travelInTime}" pattern="\b((1[0-2]|0?[1-9]).([0-5][0-9]) ([AaPp][Mm]))" name="travelInTime">
                                                                </div>
                                                                <div class="col-md-6 col-lg-4">
                                                                    <label>Travel out</label>
                                                                    <input type="text" class="form-control" value="${timeTravel.travelOutTime}" pattern="\b((1[0-2]|0?[1-9]).([0-5][0-9]) ([AaPp][Mm]))" name="travelOutTime">
                                                                </div>
                                                                <div class="col-md-6 col-lg-4">
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <label>Location in</label>
                                                                            <select class="form-control" name="travelInLocation">
                                                                            <option value=0>---select location---</option>
                                                                                <c:forEach items="${locationList}" var="element">
                                                                                <c:if test = "${element.id == timeTravel.travelInLocationId}">
                                                                                    <option value="${element.id}" selected>${element.jobSide}</option>
                                                                                </c:if>
                                                                                <c:if test = "${element.id != timeTravel.travelInLocationId}">
                                                                                    <option value="${element.id}">${element.jobSide}</option>
                                                                                </c:if>
                                                                                </c:forEach>
                                                                            </select>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <label>Location out</label>
                                                                            <select class="form-control" name="travelOutLocation">
                                                                            <option value=0>---select location---</option>
                                                                               <c:forEach items="${locationList}" var="element">
                                                                               <c:if test = "${element.id == timeTravel.travelOutLocationId}">
                                                                                  <option value="${element.id}" selected>${element.jobSide}</option>
                                                                               </c:if>
                                                                               <c:if test = "${element.id != timeTravel.travelOutLocationId}">
                                                                                  <option value="${element.id}">${element.jobSide}</option>
                                                                               </c:if>
                                                                               </c:forEach>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            </div>
                                                            </c:forEach>
                                                            <div class="row mb-3">
                                                                <div class="col-md-12 Reson">
                                                                    <label>Add a Note</label>
                                                                    <textarea class="form-control" name="notes" id="notes"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-12 text-center"><button type="send" class="btn btn-primary" style="min-width: 150px;">Update</button></div>
                                                            </div>
                                                        </form>
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
