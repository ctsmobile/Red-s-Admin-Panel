<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
    <link rel="stylesheet" type="text/css" href="assets/css/vendors.css" />
    <!-- Date Picker css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="/views/assets/css/style.css">
    <link rel="stylesheet" href="/views/assets/css/custom.css">

    <!-- Scheduler -->

        <script src="https://cdn.syncfusion.com/ej2/dist/ej2.min.js"></script>
                <script src="https://cdn.syncfusion.com/ej2/23.2.4/dist/ej2.min.js" type="text/javascript"></script>
                <script src="es5-datasource.js" type="text/javascript"></script>
                <script src="https://cdn.syncfusion.com/ej2/syncfusion-helper.js" type ="text/javascript"></script>
            <link href="https://cdn.syncfusion.com/ej2/material.css" rel="stylesheet" />

                <link href="https://cdn.syncfusion.com/ej2/23.2.4/ej2-base/styles/material.css" rel="stylesheet">
                   <link href="https://cdn.syncfusion.com/ej2/23.2.4/ej2-buttons/styles/material.css" rel="stylesheet">
                   <link href="https://cdn.syncfusion.com/ej2/23.2.4/ej2-calendars/styles/material.css" rel="stylesheet">
                   <link href="https://cdn.syncfusion.com/ej2/23.2.4/ej2-dropdowns/styles/material.css" rel="stylesheet">
                   <link href="https://cdn.syncfusion.com/ej2/23.2.4/ej2-inputs/styles/material.css" rel="stylesheet">
                   <link href="https://cdn.syncfusion.com/ej2/23.2.4/ej2-navigations/styles/material.css" rel="stylesheet">
                   <link href="https://cdn.syncfusion.com/ej2/23.2.4/ej2-popups/styles/material.css" rel="stylesheet">
                   <link href="https://cdn.syncfusion.com/ej2/23.2.4/ej2-schedule/styles/material.css" rel="stylesheet">
                <style>
                         #schedule {
                        max-width: 100%;
                        margin: auto;
                        }
                </style>
</head>

<body>
    <div class="loader" id="loader">
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
                                                <div class="d-block d-sm-flex flex-nowrap align-items-center filterTop">
                                                    <div class="page-title mb-2 mb-sm-0 d-flex align-items-center">
                                                        <div class="TrackingFilter">
                                                            <label>Select Date</label>
                                                            <div class="TrackingFilter m-0">
                                                                <input class="form-control" type="date" id="datepicker" value="${date}" onchange="selectFilter()">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="TrackingFilter">
                                                        <label>Select Job</label>
                                                        <select class="form-control" id="jobtype" onchange="selectFilter()">
                                                        <c:choose>
                                                        <c:when test="${job == 0}">
                                                        <option value="0" selected>All Jobs</option>
                                                        </c:when>
                                                        <c:otherwise>
                                                        <option value="0">All Jobs</option>
                                                        </c:otherwise>
                                                        </c:choose>
                                                            <c:forEach items="${jobTypeList}" var="jobType">
                                                            <c:choose>
                                                            <c:when test="${searchRequest.jobId == jobType.jobId}">
                                                            <option value="${jobType.jobId}" selected>${jobType.jobName}</option>
                                                            </c:when>
                                                            <c:otherwise>
                                                            <option value="${jobType.jobId}">${jobType.jobName}</option>
                                                            </c:otherwise>
                                                            </c:choose>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="TrackingFilter">
                                                        <label>Select Tag</label>
                                                        <select class="form-control" id="tag" onchange="selectFilter()">
                                                            <option value="all">All Tags</option>
                                                            <c:forEach items="${tagDetailList}" var="tag">
                                                            <c:choose>
                                                               <c:when test="${searchRequest.tag == tag.tagName}">
                                                               <option value="${tag.tagName}" selected>${tag.tagName}</option>
                                                               </c:when>
                                                               <c:otherwise>
                                                               <option value="${tag.tagName}">${tag.tagName}</option>
                                                               </c:otherwise>
                                                               </c:choose>

                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="TrackingFilter">
                                                        <label>Select Employee</label>
                                                        <select class="form-control" id="employee" onchange="selectFilter()">
                                                            <option value="all">All Employee</option>
                                                            <c:forEach items="${employeeList}" var="employee">
                                                            <c:choose>
                                                                    <c:when test="${searchRequest.employeeId == employee.employeeId}">
                                                                    <option value="${employee.employeeId}" selected>${employee.employeeName} (${employee.email})</option>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                    <option value="${employee.employeeId}">${employee.employeeName} (${employee.email})</option>
                                                                    </c:otherwise>
                                                                    </c:choose>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="TrackingFilter">
                                                        <label>Work Location</label>
                                                        <select class="form-control" id="location" onchange="selectFilter()">
                                                            <option value="0">All Location</option>
                                                            <c:forEach items="${locationDetailList}" var="location">
                                                            <c:choose>
                                                                    <c:when test="${searchRequest.locationId == location.id}">
                                                                    <option value="${location.id}" selected>${location.jobSide}</option>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                    <option value="${location.id}">${location.jobSide}</option>
                                                                    </c:otherwise>
                                                                    </c:choose>
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                    <div class="ml-auto d-flex align-items-center">

                                                        <div style="margin: 20px 0 0 10px;">
                                                            <button class="btn btn-sm btn-primary mb-0" data-toggle="modal" data-target="#Exportlist">
                                                                <span class="tooltiptext" style="padding-right: 5px;">Export</span>
                                                                <i class="bi bi-box-arrow-right"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="schedule"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="calendar"></div>
    <script>
    var data = [
               {
                    Id: 1,
                    Subject: 'Meeting',
                    StartTime: new Date(2023, 12, 13, 5, 0),
                    EndTime: new Date(2023, 12, 13, 6, 0),
                    EmployeeId : 3
                },{
                    Id: 2,
                    Subject: 'Meeting',
                    StartTime: new Date(2023, 12, 13, 10, 0),
                    EndTime: new Date(2023, 12, 13, 12, 0),
                    EmployeeId : 5
                },{
                    Id: 3,
                    Subject: 'Meeting',
                    StartTime: new Date(2023, 12, 13, 14, 0),
                    EndTime: new Date(2023, 12, 13, 16, 0),
                    EmployeeId : 7
                },{
                    Id: 4,
                    Subject: 'Meeting',
                    StartTime: new Date(2023, 12, 13, 18, 0),
                    EndTime: new Date(2023, 12, 13, 20, 0),
                     CategoryColor: 'red',
                    EmployeeId : 7
                },{
                    Id: 5,
                    Subject: 'Meeting',
                    StartTime: new Date(2023, 12, 13, 20, 0),
                    EndTime: new Date(2023, 12, 13, 22, 0),
                    EmployeeId : 7
                },

            ];
            var schedule = new ej.schedule.Schedule({
                width: '100%',
                height: '550px',
                views: [{ option: 'TimelineDay',displayName: 'Day'}],
               currentView: 'TimelineDay',
                                   selectedDate: new Date(),
                                   allowVirtualScrolling: false,
                                   showHeaderBar: false,
                                   showTimeIndicator: false,
                                   showWeekend: false,
                                   timeScale: {
                                       enable: false
                                   },
                timeScale: {slotCount: 1 },
                  group: {
                          resources: ['Employee']
                      },
                          resources: [{
                              field: 'EmployeeId', title: 'Employee Type',
                              name: 'Employee', allowMultiple: true,
                              dataSource: [
                                  { text: 'Jammy', id: 1, color: '#ea7a57' },
                                  { text: 'Tweety', id: 2, color: '#7fa900' },
                                  { text: 'Nestle', id: 3, color: '#5978ee' },
                                  { text: 'Phoenix', id: 4, color: '#fec200' },
                                  { text: 'Mission', id: 5, color: '#df5286' },
                                  { text: 'Hangout', id: 6, color: '#00bdae' },
                                  { text: 'Rick Roll', id: 7, color: '#865fcf' },
                                  { text: 'Rainbow', id: 8, color: '#1aaa55' },
                                  { text: 'Swarm', id: 9, color: '#df5286' },
                                  { text: 'Photogenic', id: 10, color: '#710193' }
                              ],
                              textField: 'text', idField: 'id', colorField: 'color'
                          }],
                          renderCell: function (args) {
                              if (args.elementType === 'emptyCells' && args.element.classList.contains('e-resource-left-td')) {
                                  var target = args.element.querySelector('.e-resource-text');
                                  target.innerHTML = '<div class="name">Employee</div>  ';
                              }if (args.elementType === 'resourceHeader') {
                                                             var target = args.element.querySelector('.e-resource-text');
                                                             target.innerHTML = '<a href="https://www.google.com/">' + target.innerHTML + '</a>';
                                                           }
                          },
                eventSettings: { dataSource: data,  allowAdding: false,  allowEditing: false,  allowDeleting: false,}
            });
            schedule.appendTo('#schedule');

    </script>

    <!-- Main Content end -->

<!-- Modal -->
<div class="modal fade exportmodal" id="Exportlist" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title fs-5" id="exampleModalLabel">Time Tracking</h4>
                <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close" id="modalClose"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="TrackingFilter">
                            <label>Select Date Range</label>
                            <input class="form-control" type="text" name="daterange" id="daterange" value="" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="TrackingFilter">
                            <label>Select Employee</label>
                            <select class="form-control" id="employee1">
                                <option value="all">All Employee</option>
                                <c:forEach items="${employeeList}" var="employee">
                                <option value="${employee.employeeId}">${employee.employeeName} (${employee.email})</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="TrackingFilter">
                            <label>Select Job Type</label>
                            <select class="form-control" id="jobtype1">
                                <option value="0">All Jobs</option>
                                <c:forEach items="${jobTypeList}" var="jobType">
                                <option value="${jobType.jobId}">${jobType.jobName}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="TrackingFilter">
                            <label>Select Tag</label>
                            <select class="form-control" id="tag1">
                               <option value="all">All Tags</option>
                               <c:forEach items="${tagDetailList}" var="tag">
                               <option value="${tag.tagName}">${tag.tagName}</option>
                               </c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="TrackingFilter">
                            <label>Work Location </label>
                            <select class="form-control" id="location1">
                               <option value="0">All Location</option>
                               <c:forEach items="${locationDetailList}" var="location">
                               <option value="${location.id}">${location.jobSide}</option>
                               </c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <button class="btn btn-sm btn-primary mb-0" onclick="exportData()">
                        <span class="tooltiptext" style="padding-right: 5px;">Export</span>
                        <i class="bi bi-box-arrow-right"></i>
                    </button>
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
    <script src="//cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <script>
    window.onload = function(){

                    $('#datatable').pagination({
                        limit:5});
                };

                function exportData(){

                                var job = $('#jobtype1').val();
                                var employeeId = $('#employee1').val();
                                var tag = $('#tag1').val();
                                var date = $('#daterange').val();
                                var location = $('#location1').val();
                                console.log("hitting api");
                                $.ajax({
                                          				url : "http://100.24.240.205:8080/api/v1/admin/exportReport",
                                          				type : "post",
                                          				headers : {
                                          				'token':"eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbjEyMzE3MDE4Njk2MDkzMzAiLCJpYXQiOjE3MDE4Njk2MDksImV4cCI6MTcwMjA0MjQwOX0.t_npi-sWqSZkgXMm26msC4Xz_7dzJgsq-7tnBfNd3nfyl8r4cF-R0S8iTNbrnvDqC_gfvVcVqS6cZW8s4B_YkA"
                                          				},
                                          				contentType: "application/json",
                                          				data : JSON.stringify({ "dateRange": date,"jobId": job,"tag":tag,"employeeId":employeeId,"locationId":location }),
                                          				success : function(response) {
                                                            console.log("successful");
                                                             var byteArray = response;
                                                                             console.log("bytearray length: "+byteArray.length);
                                                                             const blob = new Blob([byteArray], { type: 'application/octet-stream' });
                                                                             const downloadUrl = "http://100.24.240.205/Redplastering/uploads/Report.xlsx";
                                                                             const a = document.createElement("a");
                                                                             a.href = downloadUrl;
                                                                             a.download = "Report.xlsx";
                                                                             document.body.appendChild(a);
                                                                             a.click();
                                                                             URL.revokeObjectURL(downloadUrl);
                                                                             $('#modalClose').click();
                                          				},
                                                             error: function(data){
                                                                 console.log(data);
                                                             }
                                          			});
                                };
                function selectFilter(){
                var job = $('#jobtype').val();
                var employeeId = $('#employee').val();
                var tag = $('#tag').val();
                var date = $('#datepicker').val();
                var location = $('#location').val();
                window.location = "http://100.24.240.205:8686/redplastering/admin/employee-time-tracking/"+job+"/"+employeeId+"/"+tag+"/"+location+"/"+date;
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