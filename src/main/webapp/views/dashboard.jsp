<!DOCTYPE html>
<html lang="en">

<head>
    <title>Welcome Red Plastering</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="admin"/>
    <meta name="author" content=""/>

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
                    <li class="nav-item active">
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
                    <li class="nav-item">
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
            <a href="dashboard.html" class="b-brand">
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
                            <div class="row">
                                <div class="col-md-12 PgHeadding mb-4">
                                    <h2>Dashboard</h2>
                                </div>
                                <div class="col-md-6">
                                    <div class="card daily-sales">
                                        <div class="card-block">
                                            <h4 class="mb-2">Number of Employee</h4>
                                            <div class="row d-flex align-items-center">
                                                <div class="col-9">
                                                    <h3 class="f-w-300 d-flex align-items-center m-b-0">${totalEmployee}</h3>
                                                </div>
                                                <div class="col-3 text-center">
                                                    <figure class="IconBox mb-0"><i class="feather icon-users"></i></figure>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card Monthly-sales">
                                        <div class="card-block">
                                            <h4 class="mb-2">Employee Clocked in</h4>
                                            <div class="row d-flex align-items-center">
                                                <div class="col-9">
                                                    <h3 class="f-w-300 d-flex align-items-center  m-b-0">${totalEmployeeClockedIn}</h3>
                                                </div>
                                                <div class="col-3 text-center">
                                                    <figure class="IconBox mb-0"><i class="bi bi-alarm"></i></figure>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-block">
                                            <h4 class="mb-2">Employee on Break</h4>
                                            <div class="row d-flex align-items-center">
                                                <div class="col-9">
                                                    <h3 class="f-w-300 d-flex align-items-center  m-b-0">${totalEmployeeOnBreak}</h3>
                                                </div>
                                                <div class="col-3 text-center">
                                                    <figure class="IconBox mb-0"><i class="bi bi-clock-history"></i></figure>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card Monthly-sales">
                                        <div class="card-block">
                                            <h4 class="mb-2">Employee on Travel</h4>
                                            <div class="row d-flex align-items-center">
                                                <div class="col-9">
                                                    <h3 class="f-w-300 d-flex align-items-center  m-b-0">${totalEmployeeOnTravel}</h3>
                                                </div>
                                                <div class="col-3 text-center">
                                                    <figure class="IconBox mb-0"><i class="bi bi-truck"></i></figure>
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


    <!-- Required Js -->
    <script src="/views/assets/js/vendors.js"></script>
    <script src="/views/assets/js/app.js"></script>
    <script src="/views/assets/js/pcoded.min.js"></script>
</body>
</html>
