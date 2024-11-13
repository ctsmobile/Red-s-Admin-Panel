package com.cts.redplasteringadmin.Controller;

import com.cts.redplasteringadmin.services.AdminService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/redplastering/admin")
@Controller
public class RedPlasteringAdminController {

    @Autowired
    private AdminService adminService;

    @RequestMapping("/")
    public String index(){
        return "login";
    }

    @RequestMapping("/login")
    public String login(String email, String password, Model map, HttpSession session){
        return adminService.login(email, password, map, session);
    }

    @RequestMapping("/dashboard")
    public String dashboard(Model map, HttpSession session){
        return adminService.dashboard(map, session);
    }

    @RequestMapping("/profile")
    public String profile(Model map, HttpSession session){
        return adminService.profile(map, session);
    }

    @RequestMapping("/edit-profile")
    public String editProfile(Model map, HttpSession session){
        return adminService.editProfile(map, session);
    }

    @RequestMapping("/updateProfile")
    public String updateProfile(String name,String email,String mobile,Model map, HttpSession session){
        return adminService.updateProfile(name,email,mobile,map, session);
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        return adminService.logout(session);
    }

    @RequestMapping("/employee")
    public String employee(Model map,HttpSession session){
        return adminService.employee(map,session);
    }

    @RequestMapping("/view-employee/{employeeId}")
    public String viewEmployee(@PathVariable("employeeId") String employeeId, Model map, HttpSession session){
        return adminService.viewEmployee(employeeId ,map,session);
    }

    @RequestMapping("/add-employee")
    public String addEmployee(Model map, HttpSession session){
        return adminService.addEmployee(map, session);
    }

    @RequestMapping("/addEmployee")
    public String addEmployeeToDb(String notes, String lastName, String firstName, String email, String password, String tags,
                                  String position, String foreman, String deviceId, String phoneNo, String username, String rateOfPay, Model map, HttpSession session){
        return adminService.addEmployeeToDb(notes,lastName, firstName, email, password, tags, position,foreman,deviceId,phoneNo,username,rateOfPay, map, session);
    }

    @RequestMapping("/edit-employee/{employeeId}")
    public String editEmployee(@PathVariable("employeeId") String employeeId, Model map, HttpSession session){
        return adminService.editEmployee(employeeId, map, session);
    }

    @RequestMapping("/tags")
    public String tags(Model map,HttpSession session){
        return adminService.tags(map,session);
    }

    @RequestMapping("/add-tags")
    public String addTags(Model map,HttpSession session){
        return adminService.addTags(map,session);
    }

    @RequestMapping("/addTag")
    public String addTag(String tagName, String task, Model map,HttpSession session){
        return adminService.addTag(tagName, task, map,session);
    }

    @RequestMapping("/jobtype")
    public String jobType(Model map,HttpSession session){
        return adminService.jobType(map,session);
    }

    @RequestMapping("/add-job")
    public String addJob(Model map,HttpSession session){
        return adminService.addJob(map,session);
    }

    @RequestMapping("/addJob")
    public String addJobType(String jobName, String filename,Model map,HttpSession session){
        return adminService.addJobType(jobName,filename,map,session);
    }

    @RequestMapping("/editJob/{id}")
    public String editJob(@PathVariable("id") Integer id, Model map,HttpSession session){
        return adminService.editJob(id,map,session);
    }

    @RequestMapping("/updateJob/{id}")
    public String updateJob(@PathVariable("id") Integer id,String jobName,String filename, Model map,HttpSession session){
        return adminService.updateJob(id,jobName,filename,map,session);
    }

    @RequestMapping("/change-password")
    public String changePassword(Model map, HttpSession session){
        return adminService.changePassword(map, session);
    }

    @RequestMapping("/editTag/{id}")
    public String editTag(@PathVariable("id") Integer id, Model map, HttpSession session){
        return adminService.editTag(id, map, session);
    }

    @RequestMapping("/updateTag/{id}")
    public String updateTag(@PathVariable("id") Integer id,String tagName, String task, Model map, HttpSession session){
        return adminService.updateTag(id, tagName, task, map, session);
    }

    @RequestMapping("/resetPassword")
    public String resetPassword(String oldPassword, String newPassword, Model map, HttpSession session){
        return adminService.resetPassword(oldPassword, newPassword, map, session);
    }

    @RequestMapping("/location")
    public String location(Model map, HttpSession session){
        return adminService.location(map, session);
    }

    @RequestMapping("/add-location")
    public String addLocation(Model map, HttpSession session){
        return adminService.addLocation(map, session);
    }

    @RequestMapping("/addLocation")
    public String addLocationToDb(Integer projectNumber,String projectName,String jobSite, String latitude, String longitude, Double range, String address, String shiftStartTime, String shiftEndTime, Model map, HttpSession session){
        return adminService.addLocationToDb(projectNumber,projectName,jobSite, latitude, longitude, range, address, shiftStartTime, shiftEndTime, map, session);
    }

    @RequestMapping("/editLocation/{id}")
    public String editLocation(@PathVariable("id") Integer id, Model map, HttpSession session){
        return adminService.editLocation(id, map, session);
    }

    @RequestMapping("/employee-time-tracking")
    public String employeeTimeTracking(Model map, HttpSession session){
        return adminService.employeeTimeTracking( map, session);
    }

    @RequestMapping("/employee-time-tracking/{jobType}/{employeeId}/{tag}/{location}/{date}")
    public String employeeTimeTrackingWithFilter(@PathVariable("jobType") Integer jobType,@PathVariable("employeeId") String employeeId,@PathVariable("tag") String tag,@PathVariable("location") Integer location,@PathVariable("date") String date, Model map, HttpSession session){
        return adminService.employeeTimeTrackingWithFilter(jobType,employeeId,tag,location,date, map, session);
    }

    @RequestMapping("/viewTimeTracking/{id}")
    public String viewTimeTracking(@PathVariable("id") Integer id, Model map, HttpSession session){
        return adminService.viewTimeTracking(id, map, session);
    }

    @RequestMapping("/editTimeTracking/{id}")
    public String editTimeTracking(@PathVariable("id") Integer id, Model map, HttpSession session){
        return adminService.editTimeTracking(id, map, session);
    }

    @RequestMapping("/updateTimeTracking/{id}")
    public String updateTimeTracking(@PathVariable("id") Integer trackId,String notes, String clockInTime,String clockOutTime,Integer clockInLocation,Integer clockOutLocation,String breakInTime,String breakOutTime,Integer breakInLocation,Integer breakOutLocation,@RequestParam(value = "id" , required = false) Integer[] id
            ,@RequestParam(value="travelInTime",required = false) String[] travelInTime,@RequestParam(value="travelOutTime",required = false) String[] travelOutTime,@RequestParam(value="travelInLocation",required = false) Integer[] travelInLocation,@RequestParam(value="travelOutLocation",required = false) Integer[] travelOutLocation, Model map, HttpSession session){
        return adminService.updateTimeTracking(notes, trackId,clockInTime,clockOutTime,clockInLocation,clockOutLocation,breakInTime,breakOutTime,breakInLocation,breakOutLocation,
                id,travelInTime,travelOutTime,travelInLocation,travelOutLocation, map, session);
    }

    @RequestMapping("/updateLocation/{id}")
    public String updateLocation(@PathVariable("id") Integer id,Integer projectNumber, String projectName, String jobSite, String latitude, String longitude, Double range, String address, String shiftStartTime, String shiftEndTime, Model map, HttpSession session){
        return adminService.updateLocation(id,projectNumber,projectName, jobSite, latitude, longitude, range, address, shiftStartTime, shiftEndTime, map, session);
    }

    @RequestMapping("/updateEmployee/{employeeId}")
    public String updateEmployee(@PathVariable("employeeId") String employeeId,String notes, String lastName, String firstName, String email, String tags,
                                  String position, String foreman, String deviceId, String phoneNo, String username, String rateOfPay, Model map, HttpSession session){
        return adminService.updateEmployee(employeeId,notes, lastName, firstName, email, tags, position,foreman,deviceId,phoneNo,username,rateOfPay, map, session);
    }
}
