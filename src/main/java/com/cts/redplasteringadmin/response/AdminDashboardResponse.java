package com.cts.redplasteringadmin.response;

import lombok.Data;

@Data
public class AdminDashboardResponse extends AbstractResponse{

    private String name;

    private Integer totalEmployee;

    private Integer totalEmployeeClockedIn;

    private Integer totalEmployeeOnBreak;

    private Integer totalEmployeeOnTravel;
}