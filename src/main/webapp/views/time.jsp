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

    <!-- Date Picker css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="/views/assets/css/style.css">
    <link rel="stylesheet" href="/views/assets/css/custom.css">

    <!-- Scheduler -->

        <script src="https://cdn.syncfusion.com/ej2/dist/ej2.min.js"></script>
                <script src="https://cdn.syncfusion.com/ej2/23.2.4/dist/ej2.min.js" type="text/javascript"></script>

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
                        .e-schedule .e-timeline-view .e-date-header-wrap table tbody td.e-time-slots{
                        font-size: 90%;
                        padding: inherit;
                        }
                       .e-schedule .e-timeline-view .e-child-node{
                        vertical-align: baseline;
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
                function exportData(){

                                var job = $('#jobtype1').val();
                                var employeeId = $('#employee1').val();
                                var tag = $('#tag1').val();
                                var date = $('#daterange').val();
                                var location = $('#location1').val();
                                $.ajax({
                                          				url : "http://54.82.200.45:8082/api/v1/admin/exportReport",
                                          				type : "post",
                                          				headers : {
                                          				'token':"${token}"
                                          				},
                                          				contentType: "application/json",
                                          				data : JSON.stringify({ "dateRange": date,"jobId": job,"tag":tag,"employeeId":employeeId,"locationId":location }),
                                          				success : function(response) {
                                                             var byteArray = response;

                                                                             const blob = new Blob([byteArray], { type: 'application/octet-stream' });
                                                                             const downloadUrl = "http://54.82.200.45/Redplastering/uploads/Report.xlsx";
                                                                            

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
                window.location = "http://54.82.200.45:8684/redplastering/admin/employee-time-tracking/"+job+"/"+employeeId+"/"+tag+"/"+location+"/"+date;

                };

        $(function () {
            $('input[name="daterange"]').daterangepicker({
                opens: 'left'
            }, function (start, end, label) {
                console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
            });

        });

    </script>
     <script>
     function isEmpty(value) {
       return (value == null || (typeof value === "string" && value.trim().length === 0));
     }
     var timeTracking = [], timeData;
     var travelList = [] , travelData;
     var employees = [],employee;
     var timeTraces = [],timeTrace;
     var count = 0;
     <c:forEach var="time" items="${timeTrackingList}">
     timeTrace = {
                                          Id: ++count,
                                          Subject: 'Working Time',
                                          StartTime: new Date('${time.clockInTime}'),
                                          EndTime: new Date('${time.clockOutTime}'),
                                          EmployeeId : ${time.id}
                                      };
     timeTraces.push(timeTrace);
     if(!isEmpty("${time.breakInTime}")){
timeTrace = {
                                          Id: ++count,
                                          Subject: 'Break Time',
                                          StartTime: new Date('${time.breakInTime}'),
                                          EndTime: new Date('${time.breakOutTime}'),
                                          EmployeeId : ${time.id}
                                      };
                                      timeTraces.push(timeTrace);
                                      console.log("timetrace: " + timeTrace);
     }
        <c:forEach var="travel" items="${time.travelDetailList}">
            travelData = {
                        "id": "${travel.id}",
                        "travelInTime": "${travel.travelInTime}",
                        "travelOutTime": "${travel.travelOutTime}",
                        "travelInLocation": "${travel.travelInLocation}",
                        "travelOutLocation": "${travel.travelOutLocation}"
                       };
            travelList.push(travelData);
            timeTrace = {
                                                      Id: ++count,
                                                      Subject: 'Travelling Time',
                                                      StartTime: new Date('${travel.travelInTime}'),
                                                      EndTime: new Date('${travel.travelOutTime}'),
                                                      EmployeeId : ${time.id}
                                                  };
                                                  timeTraces.push(timeTrace);

        </c:forEach>
         timeData = {

                                "id": ${time.id},
                                "employeeName": "${time.employeeName}",
                                "tag": "${time.tag}",
                                "jobType": "${time.jobType}",
                                "clockInTime": "${time.clockInTime}",
                                "clockInLocation": "${time.clockInLocation}",
                                "clockOutLocation": "${time.clockOutLocation}",
                                "clockOutTime": "${time.clockOutTime}",
                                "breakInTime": "${time.breakInTime}",
                                "breakOutTime": "${time.breakOutTime}",
                                "breakInLocation": "${time.breakInLocation}",
                                "breakOutLocation": "${time.breakOutLocation}",
                                "currentDate": "${time.currentDate}",
                                "workingHours": "${time.workingHours}",
                                "breakHours": "${time.breakHours}",
                                "travelHours": "${time.travelHours}",
                                "travelDetailList": travelList
                            };
         timeTracking.push(timeData);
         employee = { text: '${time.employeeName}(${time.tag},${time.jobType})', id: ${time.id}, color: '#ea7a57' };
         employees.push(employee);

     </c:forEach>
        var id;
        var data = timeTraces;
                var schedule = new ej.schedule.Schedule({
                    width: '100%',
                    height: '550px',
                    views: [{ option: 'TimelineDay',displayName: 'Day'}],
                   currentView: 'TimelineDay',
                                       selectedDate: new Date("${date}"),
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
                                  dataSource: employees,
                                  textField: 'text', idField: 'id', colorField: 'color'
                              }],
                              renderCell: function (args) {
                                  if (args.elementType === 'emptyCells' && args.element.classList.contains('e-resource-left-td')) {
                                      var target = args.element.querySelector('.e-resource-text');
                                      target.innerHTML = '<div class="name">Employee(Tag,Job Type)</div>  ';
                                  }if (args.elementType === 'resourceHeader') {
                                                                 var employeeId = 0;
                                                                 var target = args.element.querySelector('.e-resource-text');
                                                                 for(var i=0;i<employees.length;i++){

                                                                  if(target.innerHTML == employees[i].text){
                                                                        employeeId = employees[i].id;
                                                                    }
                                                                 }
                                                                 target.innerHTML = '<a href="/redplastering/admin/viewTimeTracking/'+employeeId+'">' + target.innerHTML + '</a>';
                                                               }
                              },
                    eventSettings: { dataSource: data,  allowAdding: false,  allowEditing: false,  allowDeleting: false,}
                });
                schedule.appendTo('#schedule');

        </script>

</body>
</html>