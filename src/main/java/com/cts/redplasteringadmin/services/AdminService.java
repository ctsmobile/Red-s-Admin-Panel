package com.cts.redplasteringadmin.services;

import com.cts.redplasteringadmin.request.*;
import com.cts.redplasteringadmin.response.*;
import com.google.gson.Gson;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.client.HttpStatusCodeException;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class AdminService {

    @Autowired
    private RestTemplate restTemplate;

    private final String baseURI = "http://54.82.200.45:8082/api/v1/admin/";
    //private final String baseURI = "http://localhost:8082/api/v1/admin/";

    public String login(String email, String password, Model map, HttpSession session) {

        LoginRequest loginRequest = new LoginRequest();
        loginRequest.setEmail(email);
        loginRequest.setPassword(password);
        LoginResponse loginResponse = null;
        try {

       loginResponse = restTemplate.postForObject(baseURI + "login", loginRequest, LoginResponse.class);


        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                map.addAttribute("errorMessage", errorResponse.getFrontendMessage());
                return "login";
            }
        }

        if(loginResponse.getToken() == null){
            map.addAttribute("errorMessage", loginResponse.getFrontendMessage());
            return "login";
        }
        else{
            session.setAttribute("token", loginResponse.getToken());
            session.setAttribute("name", loginResponse.getName());
            return "redirect:/redplastering/admin/dashboard";
        }
    }

    public String logout(HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("token", session.getAttribute("token").toString());
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try {
        restTemplate.exchange(baseURI+"logout", HttpMethod.GET,requestEntity, AbstractResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                System.out.println("Error : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        session.setAttribute("token","");
        return "redirect:/redplastering/admin/";
    }

    public String employee(Model map, HttpSession session) {
        EmployeeListResponse employeeListResponse = new EmployeeListResponse();
        HttpHeaders headers = new HttpHeaders();
        System.out.println("reached method");
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            System.out.println("running API");
            employeeListResponse = restTemplate.exchange(baseURI+"getEmployeeList", HttpMethod.GET, requestEntity, EmployeeListResponse.class).getBody();
        }catch (RestClientException e){
            System.out.println("issue occured");
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        map.addAttribute("name",session.getAttribute("name"));
        map.addAttribute("token",session.getAttribute("token"));
        map.addAttribute("list",employeeListResponse.getList());
        if(session.getAttribute("successMessage")!=null && String.valueOf(session.getAttribute("successMessage")).length()>3) {
            map.addAttribute("successMessage", session.getAttribute("successMessage"));
            session.removeAttribute("successMessage");
        }
        return "employee";
    }

    public String dashboard(Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        AdminDashboardResponse response = restTemplate.exchange(baseURI+"getDashboardInfo", HttpMethod.GET,requestEntity, AdminDashboardResponse.class).getBody();
        map.addAttribute("totalEmployee",response.getTotalEmployee());
        map.addAttribute("totalEmployeeClockedIn",response.getTotalEmployeeClockedIn());
        map.addAttribute("totalEmployeeOnBreak",response.getTotalEmployeeOnBreak());
        map.addAttribute("totalEmployeeOnTravel",response.getTotalEmployeeOnTravel());
        map.addAttribute("name",(String) session.getAttribute("name"));
        return "dashboard";
    }

    public String viewEmployee(String employeeId, Model map, HttpSession session) {
        GetEmployeeResponse getEmployeeResponse = new GetEmployeeResponse();
        HttpHeaders headers = new HttpHeaders();
        System.out.println("reached method");
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            System.out.println("running API");
            getEmployeeResponse = restTemplate.exchange(baseURI+"getEmployeeById/"+employeeId, HttpMethod.GET, requestEntity, GetEmployeeResponse.class).getBody();
        }catch (RestClientException e){
            System.out.println("issue occured");
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        map.addAttribute("employee",getEmployeeResponse);
        map.addAttribute("name",(String) session.getAttribute("name"));
        return "employee-view";
    }

    public String addEmployee(Model map, HttpSession session) {
        TagDetailList tagDetailList = new TagDetailList();
        HttpHeaders headers = new HttpHeaders();
        System.out.println("reached method");
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            System.out.println("running API");
            tagDetailList = restTemplate.exchange(baseURI+"getTags", HttpMethod.GET, requestEntity, TagDetailList.class).getBody();
        }catch (RestClientException e){
            System.out.println("issue occured");
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        map.addAttribute("tagList",tagDetailList.getTagDetailList());
        map.addAttribute("token",(String) session.getAttribute("token"));
        map.addAttribute("name",(String) session.getAttribute("name"));
        return "employee-add";
    }

    public String addEmployeeToDb(String notes, String lastName, String firstName, String email, String password, String tags, String position, String foreman, String deviceId, String phoneNo, String username, String rateOfPay, Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        System.out.println("reached method");
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        EmployeeListResponse employeeListResponse = new EmployeeListResponse();
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            System.out.println("running API");
            employeeListResponse = restTemplate.exchange(baseURI+"getEmployeeList", HttpMethod.GET, requestEntity, EmployeeListResponse.class).getBody();
        }catch (RestClientException e){
            System.out.println("issue occured");
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        EmployeeRequest employeeRequest = new EmployeeRequest();
        employeeRequest.setEmail(email);
        employeeRequest.setPassword(password);
        employeeRequest.setDeviceId(deviceId);
        employeeRequest.setFirstName(firstName);
        employeeRequest.setLastName(lastName);
        employeeRequest.setPhoneNo(phoneNo);
        employeeRequest.setForeman(foreman);
        employeeRequest.setPosition(position);
        employeeRequest.setRateOfPay(Double.parseDouble(rateOfPay));
        employeeRequest.setTags(tags);
        employeeRequest.setUsername(username);
        employeeRequest.setCreatedBy("ADMIN");
        employeeRequest.setNotes(notes);
        TagDetailList tagDetailList = new TagDetailList();
        HttpEntity<Void> requestEntity2 = new HttpEntity<>(headers);
        try{
            System.out.println("running API");
            tagDetailList = restTemplate.exchange(baseURI+"getTags", HttpMethod.GET, requestEntity2, TagDetailList.class).getBody();
        }catch (RestClientException e){
            System.out.println("issue occured");
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        for (GetEmployeeResponse getEmployeeResponse:employeeListResponse.getList()){
            if(getEmployeeResponse.getEmail().equals(email)){
                map.addAttribute("employee",employeeRequest);
                map.addAttribute("tagList",tagDetailList.getTagDetailList());
                map.addAttribute("errorMessage", "Email address was already registered");
                map.addAttribute("name",(String)session.getAttribute("name"));
                return "employee-add";
            }
            else{
                if(getEmployeeResponse.getUsername().equals(username)){
                    map.addAttribute("employee",employeeRequest);
                    map.addAttribute("tagList",tagDetailList.getTagDetailList());
                    map.addAttribute("errorMessage", "Username already exists!");
                    map.addAttribute("name",(String)session.getAttribute("name"));
                    return "employee-add";
                }
            }
        }
        HttpEntity<EmployeeRequest> requestEntity1 = new HttpEntity<>( employeeRequest, headers);
        AbstractResponse response = new AbstractResponse();
        try{
            System.out.println("running API");
            System.out.println("token: " + headers.get("token"));
            response = restTemplate.exchange(baseURI+"addEmployee", HttpMethod.POST, requestEntity1, AbstractResponse.class).getBody();
        }catch (RestClientException e){
            System.out.println("issue occured");
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        session.setAttribute("successMessage",response.getFrontendMessage());
        return "redirect:/redplastering/admin/employee";

    }

    public String editEmployee(String employeeId, Model map, HttpSession session) {
        GetEmployeeResponse getEmployeeResponse = new GetEmployeeResponse();
        TagDetailList tagDetailList = new TagDetailList();
        HttpHeaders headers = new HttpHeaders();
        System.out.println("reached method");
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            System.out.println("running API");
            tagDetailList = restTemplate.exchange(baseURI+"getTags", HttpMethod.GET, requestEntity, TagDetailList.class).getBody();
        }catch (RestClientException e){
            System.out.println("issue occured");
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        try{
            System.out.println("running API");
            getEmployeeResponse = restTemplate.exchange(baseURI+"getEmployeeById/"+employeeId, HttpMethod.GET, requestEntity, GetEmployeeResponse.class).getBody();
        }catch (RestClientException e){
            System.out.println("issue occured");
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        String[] names = getEmployeeResponse.getEmployeeName().split(" ");
        getEmployeeResponse.setLastName(names[1]);
        getEmployeeResponse.setFirstName(names[0]);
        map.addAttribute("employee",getEmployeeResponse);
        map.addAttribute("tagList",tagDetailList.getTagDetailList());
        map.addAttribute("name",(String) session.getAttribute("name"));
        return "employee-edit";
    }

    public String tags(Model map, HttpSession session) {
        TagDetailList tagDetailList = new TagDetailList();
        HttpHeaders headers = new HttpHeaders();
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            tagDetailList = restTemplate.exchange(baseURI+"getTags", HttpMethod.GET, requestEntity, TagDetailList.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        map.addAttribute("tagList",tagDetailList.getTagDetailList());
        map.addAttribute("token",(String) session.getAttribute("token"));
        map.addAttribute("name",(String) session.getAttribute("name"));
        if(session.getAttribute("successMessage")!=null && String.valueOf(session.getAttribute("successMessage")).length()>3) {
            map.addAttribute("successMessage", session.getAttribute("successMessage"));
            session.removeAttribute("successMessage");
        }
        return "tags";
    }

    public String addTags(Model map, HttpSession session) {
        map.addAttribute("name",(String) session.getAttribute("name"));
        return "tag-add";
    }

    public String addTag(String tagName, String task, Model map, HttpSession session) {
        TagDetailList tagDetailList = new TagDetailList();
        HttpHeaders headers = new HttpHeaders();
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            tagDetailList = restTemplate.exchange(baseURI+"getTags", HttpMethod.GET, requestEntity, TagDetailList.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        for(TagDetail tagDetail:tagDetailList.getTagDetailList()){
            if(tagDetail.getTagName().equalsIgnoreCase(tagName)){
                map.addAttribute("errorMessage","Tag name already exists");
                map.addAttribute("name",(String)session.getAttribute("name"));
                return "tag-add";
            }
        }
        TagDetailsRequest tagDetailsRequest = new TagDetailsRequest();
        tagDetailsRequest.setTagName(tagName);
        tagDetailsRequest.setTask(task);
        tagDetailsRequest.setCreatedBy("ADMIN");
        AbstractResponse response = new AbstractResponse();
        HttpEntity<TagDetailsRequest> requestEntity1 = new HttpEntity<>(tagDetailsRequest,headers);
        try{
            System.out.println("Tag is being added");
            response = restTemplate.exchange(baseURI+"addTag", HttpMethod.POST, requestEntity1, AbstractResponse.class).getBody();
        }catch (RestClientException e){
            System.out.println("tag is not added");
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        session.setAttribute("successMessage",response.getFrontendMessage());
        return "redirect:/redplastering/admin/tags";
    }

    public String jobType(Model map, HttpSession session) {
        JobTypeListResponse response = new JobTypeListResponse();
        HttpHeaders headers = new HttpHeaders();
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            response = restTemplate.exchange(baseURI+"getJobTypes", HttpMethod.GET, requestEntity, JobTypeListResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        map.addAttribute("jobList",response.getData());
        map.addAttribute("token",(String) session.getAttribute("token"));
        map.addAttribute("name",(String) session.getAttribute("name"));
        if(session.getAttribute("successMessage")!=null && String.valueOf(session.getAttribute("successMessage")).length()>3) {
            map.addAttribute("successMessage", session.getAttribute("successMessage"));
            session.removeAttribute("successMessage");
        }
        return "job-type";
    }

    public String changePassword(Model map, HttpSession session) {
        map.addAttribute("name",(String) session.getAttribute("name"));
        return "change-password";
    }

    public String resetPassword(String oldPassword, String newPassword, Model map, HttpSession session) {
        ResetPasswordRequest resetPasswordRequest = new ResetPasswordRequest();
        resetPasswordRequest.setNewPassword(newPassword);
        resetPasswordRequest.setOldPassword(oldPassword);
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        AbstractResponse response = new AbstractResponse();
        HttpEntity<ResetPasswordRequest> requestEntity = new HttpEntity<>(resetPasswordRequest,headers);
        try{
            response = restTemplate.exchange(baseURI+"resetPassword", HttpMethod.POST, requestEntity, AbstractResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                String error = ((HttpStatusCodeException) e).getResponseBodyAsString().substring(((HttpStatusCodeException) e).getResponseBodyAsString().lastIndexOf(":")+2,((HttpStatusCodeException) e).getResponseBodyAsString().length()-2);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                if(error.equals("Invalid token")){
                    return "login";
                }
                map.addAttribute("errorMessage",error);
                map.addAttribute("name",(String) session.getAttribute("name"));
                return "change-password";
            }
        }
        map.addAttribute("successMessage", "Password changed successfully!");
        map.addAttribute("name",(String) session.getAttribute("name"));
        return "change-password";
    }

    public String editTag(Integer id, Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        TagDetail response = new TagDetail();
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            response = restTemplate.exchange(baseURI+"getTagById/"+id, HttpMethod.GET, requestEntity, TagDetail.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        map.addAttribute("tagDetail", response);
        map.addAttribute("name",(String) session.getAttribute("name"));
        map.addAttribute("successMessage","Success");
        return "tag-edit";
    }

    public String updateTag(Integer id, String tagName, String task, Model map, HttpSession session) {
        TagDetailList tagDetailList = new TagDetailList();
        HttpHeaders headers = new HttpHeaders();
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            tagDetailList = restTemplate.exchange(baseURI+"getTags", HttpMethod.GET, requestEntity, TagDetailList.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        for(TagDetail tagDetail:tagDetailList.getTagDetailList()){
            if(tagDetail.getTagName().equalsIgnoreCase(tagName)&&tagDetail.getId()!=id){
                TagDetail tagDetail1 = new TagDetail();
                tagDetail1.setId(id);
                tagDetail1.setTagName(tagName);
                tagDetail1.setTask(task);
                map.addAttribute("tagDetail",tagDetail1);
                map.addAttribute("errorMessage","Tag name already exists");
                map.addAttribute("name",(String)session.getAttribute("name"));
                return "tag-edit";
            }
        }
        TagDetailsRequest tagDetailsRequest = new TagDetailsRequest();
        tagDetailsRequest.setTagName(tagName);
        tagDetailsRequest.setTask(task);
        AbstractResponse response = new AbstractResponse();
        HttpEntity<TagDetailsRequest> requestEntity1 = new HttpEntity<>(tagDetailsRequest, headers);
        try{
            response = restTemplate.exchange(baseURI+"updateTags/"+id, HttpMethod.PUT, requestEntity1, TagDetail.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        session.setAttribute("successMessage",response.getFrontendMessage());
        return "redirect:/redplastering/admin/tags";
    }

    public String location(Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        LocationListResponse response = new LocationListResponse();
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            response = restTemplate.exchange(baseURI+"getLocations", HttpMethod.GET, requestEntity, LocationListResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        for(int i =0 ;i<response.getLocationDetailList().size();i++){
            if(response.getLocationDetailList().get(i).getId()==1){
                response.getLocationDetailList().remove(response.getLocationDetailList().get(i));
            }
        }
        map.addAttribute("locationList", response.getLocationDetailList());
        map.addAttribute("token",(String) session.getAttribute("token"));
        map.addAttribute("name",(String) session.getAttribute("name"));
        if(session.getAttribute("successMessage")!=null && String.valueOf(session.getAttribute("successMessage")).length()>3) {
            map.addAttribute("successMessage", session.getAttribute("successMessage"));
            session.removeAttribute("successMessage");
        }
        return "location";
    }

    public String addLocation(Model map, HttpSession session) {
        map.addAttribute("name",(String) session.getAttribute("name"));
        return "location-add";
    }

    public String addLocationToDb(Integer projectNumber, String projectName, String jobSite, String latitude, String longitude, Double range, String address, String shiftStartTime, String shiftEndTime, Model map, HttpSession session) {
        LocationRequest locationRequest = new LocationRequest();
        locationRequest.setAddress(address);
        locationRequest.setLatitude(latitude);
        locationRequest.setLongitude(longitude);
        locationRequest.setJobSide(jobSite);
        locationRequest.setRangeVale(range);
        locationRequest.setShiftStartTime(shiftStartTime);
        locationRequest.setShiftEndTime(shiftEndTime);
        locationRequest.setProjectNumber(projectNumber);
        locationRequest.setProjectName(projectName);
        LocationListResponse locations = new LocationListResponse();
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<Void> requestEntity1 = new HttpEntity<>(headers);
        try{
            locations = restTemplate.exchange(baseURI+"getLocations", HttpMethod.GET, requestEntity1, LocationListResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        for(LocationDetail locationDetail: locations.getLocationDetailList()){
            if(projectNumber == locationDetail.getProjectNumber()){
                map.addAttribute("errorMessage","Project Number Already Exists!");
                return "location-add";
            }
            if(projectName.equals(locationDetail.getProjectName())){
                map.addAttribute("errorMessage","Project Name Already Exists!");
                return "location-add";
            }
        }

        HttpEntity<LocationRequest> requestEntity = new HttpEntity<>(locationRequest, headers);
        AbstractResponse response = new AbstractResponse();
        try{
            response = restTemplate.exchange(baseURI+"addLocation", HttpMethod.POST, requestEntity, AbstractResponse.class).getBody();
            System.out.println("Method reached in try block");
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        session.setAttribute("successMessage",response.getFrontendMessage());
        return "redirect:/redplastering/admin/location";
    }

    public String editLocation(Integer id, Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        LocationDetail response = new LocationDetail();
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            response = restTemplate.exchange(baseURI+"getLocationById/"+id, HttpMethod.GET, requestEntity, LocationDetail.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        map.addAttribute("location", response);
        map.addAttribute("name",(String) session.getAttribute("name"));
        return "location-edit";
    }

    public String updateLocation(Integer id, Integer projectNumber,String projectName, String jobSite, String latitude, String longitude, Double range, String address, String shiftStartTime, String shiftEndTime, Model map, HttpSession session) {
        LocationRequest locationRequest = new LocationRequest();
        locationRequest.setAddress(address);
        locationRequest.setLatitude(latitude);
        locationRequest.setLongitude(longitude);
        locationRequest.setJobSide(jobSite);
        locationRequest.setProjectNumber(projectNumber);
        locationRequest.setProjectName(projectName);
        locationRequest.setRangeVale(range);
        locationRequest.setShiftStartTime(shiftStartTime);
        locationRequest.setShiftEndTime(shiftEndTime);
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<LocationRequest> requestEntity = new HttpEntity<>(locationRequest, headers);
        AbstractResponse response = new AbstractResponse();
        try{
            response = restTemplate.exchange(baseURI+"updateLocation/"+id, HttpMethod.PUT, requestEntity, AbstractResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        session.setAttribute("successMessage",response.getFrontendMessage());
        return "redirect:/redplastering/admin/location";
    }

    public String updateEmployee(String employeeId,String notes, String lastName, String firstName, String email, String tags, String position, String foreman, String deviceId, String phoneNo, String username, String rateOfPay, Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        EmployeeRequest employeeRequest = new EmployeeRequest();
        employeeRequest.setEmail(email);
        if(deviceId.length()<2){
            deviceId = null;
        }
        employeeRequest.setNotes(notes);
        employeeRequest.setDeviceId(deviceId);
        employeeRequest.setFirstName(firstName);
        employeeRequest.setLastName(lastName);
        employeeRequest.setPhoneNo(phoneNo);
        employeeRequest.setForeman(foreman);
        employeeRequest.setPosition(position);
        employeeRequest.setRateOfPay(Double.parseDouble(rateOfPay.substring(2)));
        employeeRequest.setTags(tags);
        employeeRequest.setUsername(username);
        employeeRequest.setCreatedBy("ADMIN");
        HttpEntity<EmployeeRequest> requestEntity = new HttpEntity<>( employeeRequest, headers);
        AbstractResponse response = new AbstractResponse();
        try{
            response = restTemplate.exchange(baseURI+"updateEmployeeById/"+employeeId, HttpMethod.PUT, requestEntity, AbstractResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        session.setAttribute("successMessage",response.getFrontendMessage());
        return "redirect:/redplastering/admin/employee";
    }

    public String employeeTimeTracking(Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        System.out.println((String) session.getAttribute("token"));
        TimeTrackingListResponse response = new TimeTrackingListResponse();
        SearchRequest searchRequest = new SearchRequest();
        searchRequest.setEmployeeId("all");
        searchRequest.setTag("all");
        searchRequest.setDate(null);
        searchRequest.setJobId(0);
        searchRequest.setLocationId(0);
        HttpEntity<SearchRequest> requestEntity = new HttpEntity<>(searchRequest,headers);
        try{
            response = restTemplate.exchange(baseURI+"getEmployeeTracking", HttpMethod.POST, requestEntity, TimeTrackingListResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        map.addAttribute("date",format.format(new Date()));
        map.addAttribute("tagDetailList",response.getTagDetailList());
        map.addAttribute("locationDetailList",response.getLocationDetailList());
        map.addAttribute("jobTypeList",response.getJobTypeList());
        map.addAttribute("employeeList",response.getEmployeeList());
        map.addAttribute("timeTrackingList",response.getTimeTrackingList());
        map.addAttribute("name",(String)session.getAttribute("name"));
        map.addAttribute("token",(String)session.getAttribute("token"));
        return "time";
    }

    public String viewTimeTracking(Integer id, Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        System.out.println((String) session.getAttribute("token"));
        TimeTrackingResponse response = new TimeTrackingResponse();
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            response = restTemplate.exchange(baseURI+"getEmployeeTrackingById/"+id, HttpMethod.GET, requestEntity, TimeTrackingResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        System.out.println(response.getTravelDetailList().size());
        map.addAttribute("timeTrack",response);
        map.addAttribute("timeTravelList",response.getTravelDetailList());
        map.addAttribute("name",(String)session.getAttribute("name"));
        return "time-tracking-view";
    }

    public String editTimeTracking(Integer id, Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        System.out.println((String) session.getAttribute("token"));
        TimeTrackingResponse response = new TimeTrackingResponse();
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            response = restTemplate.exchange(baseURI+"getEmployeeTrackingById/"+id, HttpMethod.GET, requestEntity, TimeTrackingResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        LocationListResponse locationListResponse = new LocationListResponse();
        try{
            locationListResponse = restTemplate.exchange(baseURI+"getLocations", HttpMethod.GET, requestEntity, LocationListResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        map.addAttribute("locationList", locationListResponse.getLocationDetailList());
        map.addAttribute("timeTrack",response);
        map.addAttribute("name",(String)session.getAttribute("name"));
        return "time-tracking-edit";

    }

    public String addJob(Model map, HttpSession session) {
        map.addAttribute("token",(String)session.getAttribute("token"));
        map.addAttribute("name",(String)session.getAttribute("name"));
        return "job-add";
    }

    public String addJobType(String jobName, String filename, Model map, HttpSession session) {
        System.out.println(filename);
        JobTypeListResponse responseList = new JobTypeListResponse();
        HttpHeaders headers = new HttpHeaders();
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            responseList = restTemplate.exchange(baseURI+"getJobTypes", HttpMethod.GET, requestEntity, JobTypeListResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        for(JobTypeDetail jobTypeDetail:responseList.getData()){
            if(jobTypeDetail.getJobName().equalsIgnoreCase(jobName)){
                map.addAttribute("errorMessage","Job name already exists");
                map.addAttribute("name",(String)session.getAttribute("name"));
                return "job-add";
            }
        }
        EmployeeJobTypeRequest employeeJobTypeRequest = new EmployeeJobTypeRequest();
        employeeJobTypeRequest.setJobName(jobName);
        employeeJobTypeRequest.setImageName(filename);
        AbstractResponse response = new AbstractResponse();
        HttpEntity<EmployeeJobTypeRequest> requestEntity1 = new HttpEntity<>(employeeJobTypeRequest,headers);
        try{
            response = restTemplate.exchange(baseURI+"addJobType", HttpMethod.POST, requestEntity1, AbstractResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        session.setAttribute("successMessage",response.getFrontendMessage());
        return "redirect:/redplastering/admin/jobtype";
    }

    public String editJob(Integer id, Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        JobTypeDetail response = new JobTypeDetail();

        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            response = restTemplate.exchange(baseURI+"getJobTypeById/"+id, HttpMethod.GET, requestEntity, JobTypeDetail.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        response.setFilename(response.getImageName().substring(response.getImageName().lastIndexOf("/")+1));
        map.addAttribute("jobDetail", response);
        map.addAttribute("token",(String) session.getAttribute("token"));
        map.addAttribute("name",(String) session.getAttribute("name"));
        return "job-edit";
    }

    public String updateJob(Integer id, String jobName, String filename, Model map, HttpSession session) {
        JobTypeListResponse responseList = new JobTypeListResponse();
        HttpHeaders headers = new HttpHeaders();
        headers.set("token", (String) session.getAttribute("token"));
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            responseList = restTemplate.exchange(baseURI+"getJobTypes", HttpMethod.GET, requestEntity, JobTypeListResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                return "login";
            }
        }
        for(JobTypeDetail jobTypeDetail:responseList.getData()){
            if(jobTypeDetail.getJobName().equalsIgnoreCase(jobName)&&jobTypeDetail.getJobId()!=id){
                String FILE_URL = "http://54.82.200.45:8684/Redplastering/uploads/";
                JobTypeDetail jobTypeDetail1 = new JobTypeDetail();
                jobTypeDetail1.setJobId(id);
                jobTypeDetail1.setJobName(jobName);
                jobTypeDetail1.setFilename(filename);
                jobTypeDetail1.setImageName(FILE_URL+filename);
                map.addAttribute("jobDetail",jobTypeDetail1);
                map.addAttribute("errorMessage","Job name already exists");
                map.addAttribute("name",(String)session.getAttribute("name"));
                return "job-edit";
            }
        }
        EmployeeJobTypeRequest employeeJobTypeRequest = new EmployeeJobTypeRequest();
        employeeJobTypeRequest.setJobName(jobName);
        employeeJobTypeRequest.setImageName(filename);
        AbstractResponse response = new AbstractResponse();
        HttpEntity<EmployeeJobTypeRequest> requestEntity1 = new HttpEntity<>(employeeJobTypeRequest,headers);
        try{

            response = restTemplate.exchange(baseURI+"updateJobTypeById/"+id, HttpMethod.PUT, requestEntity1, AbstractResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        session.setAttribute("successMessage",response.getFrontendMessage());
        return "redirect:/redplastering/admin/jobtype";
    }

    public String updateTimeTracking(String notes, Integer trackId, String clockInTime, String clockOutTime, Integer clockInLocation, Integer clockOutLocation, String breakInTime, String breakOutTime, Integer breakInLocation, Integer breakOutLocation, Integer[] id, String[] travelInTime, String[] travelOutTime, Integer[] travelInLocation, Integer[] travelOutLocation, Model map, HttpSession session) {
        System.out.println("time in location :"+new Gson().toJson(travelInLocation));
        System.out.println("time out location :"+new Gson().toJson(travelOutLocation));
        System.out.println("time out :"+new Gson().toJson(travelOutTime));
        int j = 0;
        if(id!=null&&id.length>0) {
            j = id.length;
        }
        List<TravelDetail> travelDetails = new ArrayList<TravelDetail>();
        for(int i=0;i<j;i++){
            TravelDetail travelDetail = new TravelDetail();
            travelDetail.setId(id[i]);
            travelDetail.setTravelInTime(travelInTime[i]);
            if(travelOutTime.length>i) {
                travelDetail.setTravelOutTime(travelOutTime[i]);
            }else{
                travelDetail.setTravelOutTime("");
            }

                if(travelInLocation[i]==0){
                    travelDetail.setTravelInLocationId(null);
                }
                travelDetail.setTravelInLocationId(travelInLocation[i]);

                if(travelOutLocation[i]==0){
                    travelDetail.setTravelOutLocationId(null);
                }
                travelDetail.setTravelOutLocationId(travelOutLocation[i]);

            travelDetails.add(travelDetail);
        }
        System.out.println("travel Details :"+new Gson().toJson(travelDetails));
        UpdateTimetrackingRequest request = new UpdateTimetrackingRequest();
        request.setClockInTime(clockInTime);
        request.setClockOutTime(clockOutTime);
        if(clockInLocation==0){
            request.setClockInLocation(null);
        }else {
            request.setClockInLocation(clockInLocation);
        }
        if(clockOutLocation == 0){
            request.setClockOutLocation(null);
        }else {
            request.setClockOutLocation(clockOutLocation);
        }
        request.setBreakInTime(breakInTime);
        request.setBreakOutTime(breakOutTime);
        if(breakInLocation == 0){
            request.setBreakInLocation(null);
        }else {
            request.setBreakInLocation(breakInLocation);
        }
        if(breakOutLocation == 0){
            request.setBreakOutLocation(null);
        }else {
            request.setBreakOutLocation(breakOutLocation);
        }
        request.setTravelDetailList(travelDetails);
        request.setNotes(notes);
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        System.out.println(trackId);
        System.out.println("Update Time track request :"+ new Gson().toJson(request));
        AbstractResponse response = new AbstractResponse();
        HttpEntity<UpdateTimetrackingRequest> requestEntity = new HttpEntity<>(request,headers);
        try{
            System.out.println(new Gson().toJson(requestEntity.getBody()));
            response = restTemplate.exchange(baseURI+"updateEmployeeTrackingById/"+trackId, HttpMethod.PUT, requestEntity, AbstractResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        return "redirect:/redplastering/admin/employee-time-tracking";
    }

    public String profile(Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));

        AdminDetial response = new AdminDetial();
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            response = restTemplate.exchange(baseURI+"getProfile", HttpMethod.GET, requestEntity, AdminDetial.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        map.addAttribute("name",(String)session.getAttribute("name"));
        map.addAttribute("adminDetail",response);
        return "profile";
    }

    public String editProfile(Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));

        AdminDetial response = new AdminDetial();
        HttpEntity<Void> requestEntity = new HttpEntity<>(headers);
        try{
            response = restTemplate.exchange(baseURI+"getProfile", HttpMethod.GET, requestEntity, AdminDetial.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        map.addAttribute("name",(String)session.getAttribute("name"));
        map.addAttribute("adminDetail",response);
        return "profile-edit";
    }

    public String updateProfile(String name, String email, String mobile, Model map, HttpSession session) {
        AdminDetailsRequest request = new AdminDetailsRequest();
        request.setEmail(email);
        request.setName(name);
        request.setMobile(mobile);
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));

        AbstractResponse response = new AbstractResponse();
        HttpEntity<AdminDetailsRequest> requestEntity = new HttpEntity<>(request,headers);
        try{
            response = restTemplate.exchange(baseURI+"updateProfile", HttpMethod.PUT, requestEntity, AbstractResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        session.setAttribute("name",name);
        return "redirect:/redplastering/admin/profile";

    }

    public String employeeTimeTrackingWithFilter(Integer type, String employeeId, String tag, Integer location, String date, Model map, HttpSession session) {
        HttpHeaders headers = new HttpHeaders();
        headers.set("Content-Type","application/json");
        headers.set("token", (String) session.getAttribute("token"));
        System.out.println((String) session.getAttribute("token"));
        TimeTrackingListResponse response = new TimeTrackingListResponse();
        SearchRequest searchRequest = new SearchRequest();
        searchRequest.setEmployeeId(employeeId);
        searchRequest.setDate(date);
        searchRequest.setTag(tag);
        searchRequest.setJobId(type);
        searchRequest.setLocationId(location);
        HttpEntity<SearchRequest> requestEntity = new HttpEntity<>(searchRequest,headers);
        try{
            response = restTemplate.exchange(baseURI+"getEmployeeTracking", HttpMethod.POST, requestEntity, TimeTrackingListResponse.class).getBody();
        }catch (RestClientException e){
            if(e instanceof HttpStatusCodeException){
                AbstractResponse errorResponse = ((HttpStatusCodeException) e).getResponseBodyAs(AbstractResponse.class);
                System.out.println("error is : "+((HttpStatusCodeException) e).getResponseBodyAsString());
                return "login";
            }
        }
        map.addAttribute("tagDetailList",response.getTagDetailList());
        map.addAttribute("locationDetailList",response.getLocationDetailList());
        map.addAttribute("jobTypeList",response.getJobTypeList());
        map.addAttribute("employeeList",response.getEmployeeList());
        map.addAttribute("timeTrackingList",response.getTimeTrackingList());
        map.addAttribute("searchRequest",searchRequest);
        map.addAttribute("name",(String)session.getAttribute("name"));
        map.addAttribute("date",date);
        map.addAttribute("token",(String)session.getAttribute("token"));
        return "time";
    }
}
