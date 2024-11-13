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
    <!-- Date Picker css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
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
                                                        <h2>Time Tracking</h2>
                                                    </div>
                                                    <div class="ml-auto d-flex align-items-center">
                                                        <div class="TrackingFilter">
                                                            <label>Select Job</label>
                                                            <select class="form-control">
                                                                <option>All Jobs</option>
                                                                <option>Scaffold</option>
                                                                <option>Lather</option>
                                                                <option>Plasterer</option>
                                                                <option>Travel</option>
                                                            </select>                                                                    
                                                        </div>                                              
                                                        <div class="TrackingFilter">
                                                            <label>Select Tag</label>
                                                            <select class="form-control">
                                                                <option>All Tags</option>
                                                                <option>SBS</option>
                                                                <option>CLA</option>
                                                                <option>Reds</option>
                                                                <option>Foreman</option>
                                                            </select>                                                                    
                                                        </div>                                              
                                                        <div class="TrackingFilter">
                                                            <label>Select Date Range</label>
                                                            <input class="form-control" type="text" name="daterange" value="" />
                                                        </div>
                                                        <div class="TrackingFilter">
                                                            <input placeholder="check in" class="form-control" type="text" onfocus="(this.type='date')" id="date" />
                                                        </div>                                              
                                                        <div class="TrackingFilter">
                                                            <input placeholder="check out" class="form-control" type="text" onfocus="(this.type='date')" id="date" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="card card-statistics">
                                                    <div class="card-body">
                                                        <div class="datatable-wrapper table-responsive">
                                                            <table id="datatable" class="display compact table table-striped table-bordered">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Employee Name/Tag</th>
                                                                        <th>Job Type</th>
                                                                        <th>Date</th>
                                                                        <th>Clock in/out</th>
                                                                        <th>Break in/out</th>
                                                                        <th>Travel in/out</th>
                                                                        <th>Break Time</th>
                                                                        <th>Travel Time</th>
                                                                        <th>Working Hours</th>
                                                                        <th>Action</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                <c:forEach items="${timeTrackingList}" var="timeTrack">
                                                                    <tr>
                                                                        <td>
                                                                            <span>${timeTrack.employeeName}</span>
                                                                            <span>${timeTrack.tag}</span>
                                                                        </td>
                                                                        <td>${timeTrack.jobType}</td>
                                                                        <td>${timeTrack.currentDate}</td>
                                                                        <td>
                                                                           <span>${timeTrack.clockInTime}</span>
                                                                        <c:if test = "${timeTrack.clockOutLocation == 'unassigned'}">
                                                                           <span style="color:red">${timeTrack.clockOutTime}</span>
                                                                        </c:if>
                                                                        <c:if test = "${timeTrack.clockOutLocation != 'unassigned'}">
                                                                             <span >${timeTrack.clockOutTime}</span>
                                                                        </c:if>
                                                                        </td>
                                                                        <td>
                                                                            <span>${timeTrack.breakInTime}</span>
                                                                        <c:if test = "${timeTrack.breakOutLocation == 'unassigned'}">
                                                                            <span style="color:red">${timeTrack.breakOutTime}</span>
                                                                        </c:if>
                                                                        <c:if test = "${timeTrack.breakOutLocation != 'unassigned'}">
                                                                            <span>${timeTrack.breakOutTime}</span>
                                                                        </c:if>
                                                                        </td>
                                                                        <td>
                                                                            <span>${timeTrack.travelDetailList[0].travelInTime}</span>
                                                                            <c:if test = "${timeTrack.travelDetailList[0].travelOutLocation == 'unassigned'}">
                                                                            <span style="color:red">${timeTrack.travelDetailList[0].travelOutTime}</span>
                                                                            </c:if>
                                                                            <c:if test = "${timeTrack.travelDetailList[0].travelOutLocation != 'unassigned'}">
                                                                                <span>${timeTrack.travelDetailList[0].travelOutTime}</span>
                                                                            </c:if>
                                                                            <c:if test = "${timeTrack.travelDetailList.size() > 1}">
                                                                            ,<span class="MoreTravel"> +${timeTrack.travelDetailList.size()-1} More</span>
                                                                            </c:if>
                                                                        </td>
                                                                        <td>${timeTrack.breakHours}</td>
                                                                        <td>${timeTrack.travelHours}</td>
                                                                        <td>${timeTrack.workingHours}</td>
                                                                        <td class="ActionBox">
                                                                            <a href="/redplastering/admin/viewTimeTracking/${timeTrack.id}" class="btn btn-sm btn-primary">
                                                                                <span class="tooltiptext">View</span>
                                                                                <i class="bi bi-eye"></i>
                                                                            </a>
                                                                            <a href="/redplastering/admin/editTimeTracking/${timeTrack.id}" class="btn btn-sm btn-primary">
                                                                                <span class="tooltiptext">Edit</span>
                                                                                <i class="bi bi-pencil"></i>
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

<!-- Modal -->
<div class="modal fade" id="MoreTravel2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title fs-5" id="exampleModalLabel">Travel in/out & Location</h4>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <c:forEach items="${travelList}" var="timeTrack">
                <div class="row">
                    <div class="col-3 TrackingDetail">
                        <div class="TrakingDtlbox">
                            <strong>Travel in:</strong>
                            <p>11:15 am</p>
                        </div>
                    </div>
                    <div class="col-3 TrackingDetail">
                        <div class="TrakingDtlbox">
                            <strong>Travel out:</strong>
                            <p>12:20 pm</p>
                        </div>
                    </div>
                    <div class="col-6 TrackingDetail">
                        <div class="TrakingDtlbox">
                            <div class="row">
                                <div class="col-md-6">
                                    <strong>Location in:</strong>
                                    <p>T-125</p>
                                </div>
                                <div class="col-md-6">
                                    <strong>Location out:</strong>
                                    <p>Q-125</p>
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
<div class="modal fade" id="MoreTravel" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title fs-5" id="exampleModalLabel">Travel in/out & Location</h4>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-3 TrackingDetail">
                        <div class="TrakingDtlbox">
                            <strong>Travel in:</strong>
                            <p>11:15 am</p>
                        </div>
                    </div>
                    <div class="col-3 TrackingDetail">
                        <div class="TrakingDtlbox">
                            <strong>Travel out:</strong>
                            <p>12:20 pm</p>
                        </div>
                    </div>
                    <div class="col-6 TrackingDetail">
                        <div class="TrakingDtlbox">
                            <div class="row">
                                <div class="col-md-6">
                                    <strong>Location in:</strong>
                                    <p>T-125</p>
                                </div>
                                <div class="col-md-6">
                                    <strong>Location out:</strong>
                                    <p>Q-125</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 TrackingDetail">
                        <div class="TrakingDtlbox">
                            <strong>Travel in:</strong>
                            <p>12:30 PM</p>
                        </div>
                    </div>
                    <div class="col-3 TrackingDetail">
                        <div class="TrakingDtlbox">
                            <strong>Travel out:</strong>
                            <p>01:00 PM</p>
                        </div>
                    </div>
                    <div class="col-6 TrackingDetail">
                        <div class="TrakingDtlbox">
                            <div class="row">
                                <div class="col-md-6">
                                    <strong>Location in:</strong>
                                    <p>P-125</p>
                                </div>
                                <div class="col-md-6">
                                    <strong>Location out:</strong>
                                    <p>H-125</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-3 TrackingDetail">
                        <div class="TrakingDtlbox">
                            <strong>Travel in:</strong>
                            <p>01:15 PM</p>
                        </div>
                    </div>
                    <div class="col-3 TrackingDetail">
                        <div class="TrakingDtlbox">
                            <strong>Travel out:</strong>
                            <p>02:00 PM</p>
                        </div>
                    </div>
                    <div class="col-6 TrackingDetail">
                        <div class="TrakingDtlbox">
                            <div class="row">
                                <div class="col-md-6">
                                    <strong>Location in:</strong>
                                    <p>S-125</p>
                                </div>
                                <div class="col-md-6">
                                    <strong>Location out:</strong>
                                    <p>D-125</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


    <!-- Required Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://pagination.js.org/dist/2.1.4/pagination.min.js"></script>
    <script src="/views/assets/js/vendors.js"></script>
    <script src="/views/assets/js/app.js"></script>
    <script src="/views/assets/js/pcoded.min.js"></script>
    <script src="/views/assets/js/bootstrap.bundle.min.js"></script>
    <!-- Date Picker js -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <script>
    window.onload = function(){
                $('#datatable').pagination({
                                            limit:5});
            };
    var travelList;
        function getList(timeTravelList){
            alert(timeTravelList);
            travelList = timeTravelList;
        };
        $(function () {
            $('input[name="daterange"]').daterangepicker({
                opens: 'left'
            }, function (start, end, label) {
                console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
            });
        });
    </script>  
    
</body>
</html>
