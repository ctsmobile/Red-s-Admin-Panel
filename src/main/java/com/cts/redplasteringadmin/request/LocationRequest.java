package com.cts.redplasteringadmin.request;

import lombok.Data;

import java.util.Date;

@Data
public class LocationRequest {
    private String address;
    private Double rangeVale;
    private String jobSide;
    private String latitude;
    private String longitude;
    private String shiftStartTime;
    private String shiftEndTime;
    private Integer projectNumber;
    private String projectName;
}
