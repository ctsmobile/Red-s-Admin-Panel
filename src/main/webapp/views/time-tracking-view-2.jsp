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
    <link rel="stylesheet" href="/views/assets/fonts/fontawesome/css/fontawesome-all.min.css" type="text/css">
    <link rel="stylesheet" href="/views/assets/plugins/animation/css/animate.min.css" type="text/css">
    <link rel="stylesheet" href="/views/assets/css/bootstrap-icons.css" type="text/css">
    <link rel="stylesheet" href="/views/assets/css/vendors.css" type="text/css">
    <link rel="stylesheet" href="/views/assets/css/style.css" type="text/css">
    <link rel="stylesheet" href="/views/assets/css/custom.css" type="text/css">
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
                    <a href="dashboard.jsp" class="b-brand">
                        <figure><img src="/views/assets/images/logo_icon.png" /></figure>
                    </a>
                </div>
            </div>
            <div class="navbar-content scroll-div">
                <ul class="nav pcoded-inner-navbar">
                    <li class="nav-item">
                        <a href="dashboard.jsp" class="nav-link ">
                            <span class="pcoded-micon"><i class="bi bi-speedometer2"></i></span>
                            <span class="pcoded-mtext">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="tags.jsp" class="nav-link ">
                            <span class="pcoded-micon"><i class="bi bi-tags"></i></span>
                            <span class="pcoded-mtext">Tags</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="job-type.jsp" class="nav-link ">
                            <span class="pcoded-micon"><i class="bi bi-briefcase"></i></span>
                            <span class="pcoded-mtext">Job Type</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="location.jsp" class="nav-link ">
                            <span class="pcoded-micon"><i class="bi bi-geo-alt"></i></span>
                            <span class="pcoded-mtext">Location</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="employee.jsp" class="nav-link ">
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
                                <span>John Doe</span>
                            </div>
                            <ul class="pro-body">
                                <li>
                                    <a href="profile.jsp" class="dropdown-item"> <i class="feather icon-user"></i> Profile</a>
                                </li>
                                <li>
                                    <a href="change-password.jsp" class="dropdown-item"> <i class="feather icon-lock"></i> Reset Password</a>
                                </li>
                                <li>
                                    <a href="login.jsp" class="dropdown-item"> <i class="feather icon-log-out"></i> Logout </a>
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
                                                            <a href="/redplastering/admin/employee-time-tracking" class="btn btn-primary"><i class="bi bi-arrow-left"></i>Back</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="card card-statistics">
                                                    <div class="card-body">
                                                        <div class="row TimeTrakingWp justify-content-center">
                                                            <div class="col-lg-12">
                                                                <div class="row">
                                                                    <div class="col-md-12">
                                                                        <h5>Date: 20/05/2023</h5>
                                                                    </div>
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Employee Name:</strong>
                                                                            <p>Sumit</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Employee Tag:</strong>
                                                                            <p>SBS</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Job Type:</strong>
                                                                            <p>Scaffold</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Clock in:</strong>
                                                                            <p>09 AM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Clock out:</strong>
                                                                            <p>06 PM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
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
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Break lock in:</strong>
                                                                            <p>01:30 PM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Break out:</strong>
                                                                            <p>02:10 PM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <strong>Location in:</strong>
                                                                                    <p>B-125</p>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <strong>Location out:</strong>
                                                                                    <p>P-125</p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Travel in:</strong>
                                                                            <p>11:15 AM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Travel out:</strong>
                                                                            <p>12:20 PM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
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
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Travel in:</strong>
                                                                            <p>05 PM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Travel out:</strong>
                                                                            <p>06:05 PM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <strong>Location in:</strong>
                                                                                    <p>B-125</p>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <strong>Location out:</strong>
                                                                                    <p>T-125</p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <div class="row">
                                                                    <div class="col-md-12 mt-4">
                                                                        <h5>Date: 20/05/2023</h5>
                                                                    </div>
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Employee Name:</strong>
                                                                            <p>Sumit</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Employee Tag:</strong>
                                                                            <p>SBS</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Job Type:</strong>
                                                                            <p>Scaffold</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Clock in:</strong>
                                                                            <p>09 AM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Clock out:</strong>
                                                                            <p>06 PM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
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
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Break lock in:</strong>
                                                                            <p>01:30 PM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Break out:</strong>
                                                                            <p>02:10 PM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <strong>Location in:</strong>
                                                                                    <p>B-125</p>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <strong>Location out:</strong>
                                                                                    <p>P-125</p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Travel in:</strong>
                                                                            <p>11:15 AM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Travel out:</strong>
                                                                            <p>12:20 PM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
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
                                                                    <div class="col-4 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Travel in:</strong>
                                                                            <p>05 PM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-3 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Travel out:</strong>
                                                                            <p>06:05 PM</p>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-5 TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <div class="row">
                                                                                <div class="col-md-6">
                                                                                    <strong>Location in:</strong>
                                                                                    <p>B-125</p>
                                                                                </div>
                                                                                <div class="col-md-6">
                                                                                    <strong>Location out:</strong>
                                                                                    <p>T-125</p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-12 Reson TrackingDetail">
                                                                        <div class="TrakingDtlbox">
                                                                            <strong>Note:</strong>
                                                                            <p class="mb-0">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
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
