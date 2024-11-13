<!DOCTYPE html>
<html lang="en">
<head>
    <title>Welcome Red Plastering</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
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
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false&amp;key=AIzaSyBl5u6A9cYGdsO4bZ9mW8i0vC3uohGsxkw&amp;libraries=places"></script>
	<script>
    		var map;
    		var marker;
    		var editmap;
    		var editmarker;
    		google.maps.event.addDomListener(window,'load',initialize);

    		function initialize(){
    		var mylat = parseFloat(document.getElementById("latitude").value);
    		 var mylng = parseFloat(document.getElementById("longitude").value);

    		var myLatlng = new google.maps.LatLng(mylat, mylng);
    		console.log(myLatlng);

    		var mapOptions = {
    		zoom: 15,
    		center: myLatlng
    		}

    		 map = new google.maps.Map(document.getElementById("map"), mapOptions);

    		marker = new google.maps.Marker({
    			position: myLatlng,
    			title:"",
    			draggable: false
    		});
    		marker.setMap(map);
    		var input = document.getElementById('address');
    		var autocomplete = new google.maps.places.Autocomplete(input);
            autocomplete.addListener('place_changed', function() {
            var place = autocomplete.getPlace();
            var coords = place.geometry.location;
            console.log(coords);
            document.getElementById('latitude').value = place.geometry.location.lat();
            document.getElementById('longitude').value = place.geometry.location.lng();
            marker.setPosition(coords);
            map.setCenter(coords);
            });
    };
    			</script>
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
                                                        <h2>Edit Location</h2>
                                                    </div>
                                                    <div class="ml-auto d-flex align-items-center PgRight">
                                                        <div class="TrackingFilter">
                                                            <a href="/redplastering/admin/location" class="btn btn-primary"><i class="bi bi-arrow-left"></i>Back</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="card card-statistics">
                                                    <div class="card-body">
                                                        <div class="SmallSection Multi">
                                                            <form action="/redplastering/admin/updateLocation/${location.id}">
                                                                <div class="row form-group">
                                                                    <div class="col-md-6">
                                                                        <label>Job Side</label>
                                                                        <input type="text" class="form-control" value="${location.jobSide}" name="jobSite">
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <label>Range <small>(Miles)</small> </label>
                                                                        <input type="number" min="0.06" class="form-control" name="range" step=".01" value="${location.rangeVale}">
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                                                                                                                                                    <div class="col-md-6">
                                                                                                                                                                                                        <label>Project Number</label>
                                                                                                                                                                                                        <input type="number" class="form-control" name="projectNumber" value="${location.projectNumber}" required>
                                                                                                                                                                                                    </div>
                                                                                                                                                                                                    <div class="col-md-6">
                                                                                                                                                                                                        <label>Project Name</label>
                                                                                                                                                                                                        <input type="text" min="0" class="form-control" name="projectName" value="${location.projectName}" required>
                                                                                                                                                                                                    </div>
                                                                                                                                                                                                </div>
                                                                                                                                <div class="row form-group">
                                                                <div class="row form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Address</label>
                                                                        <input type="text" class="form-control" value="${location.address}" id="address" name="address">
                                                                    </div>
                                                                </div>                                                       
                                                                <div class="row form-group">
                                                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                                                    									<div class="location-map map-f-location">
                                                                    										<div id="map" style="height:200px"></div>
                                                                    									</div>
                                                                    								</div>
                                                                </div>                                                       
                                                                <div class="row form-group">
                                                                    <div class="col-md-6">
                                                                        <label>Latitude</label>
                                                                        <input type="text" class="form-control" value="${location.latitude}" id="latitude" name="latitude" readonly>

                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <label>Longitude</label>
                                                                        <input type="text" class="form-control" value="${location.longitude}" id="longitude" name="longitude" readonly>
                                                                    </div>
                                                                </div>
                                                                <div class="row form-group">
                                                                    <div class="col-md-6">
                                                                        <label>Shift start time</label>
                                                                        <input type="time" class="form-control" name="shiftStartTime" value="${location.shiftStartTime}">
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <label>Shift end time</label>
                                                                        <input type="time" class="form-control" name="shiftEndTime" value="${location.shiftEndTime}">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group text-center">
                                                                    <button type="send" class="btn btn-primary">Update <i class="bi bi-send"></i></button>
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
    </div>
    <!-- Main Content end -->


    <!-- Required Js -->
    <script src="/views/assets/js/vendors.js"></script>
    <script src="/views/assets/js/app.js"></script>
    <script src="/views/assets/js/pcoded.min.js"></script>

</body>
</html>
