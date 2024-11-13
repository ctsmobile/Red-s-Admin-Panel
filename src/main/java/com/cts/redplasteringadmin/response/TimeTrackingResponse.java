package com.cts.redplasteringadmin.response;

import lombok.Data;

import java.util.List;

@Data
public class TimeTrackingResponse extends AbstractResponse{

    private Integer id;

    private String employeeName;

    private String tag;

    private String jobType;

    private String clockInTime;

    private String clockInLocation;

    private Integer clockInLocationId;

    private String clockOutLocation;

    private Integer clockOutLocationId;

    private String clockOutTime;

    private String breakInTime;

    private String breakOutTime;

    private String breakInLocation;

    private Integer breakInLocationId;

    private String breakOutLocation;

    private Integer breakOutLocationId;

    private String currentDate;

    private String workingHours;

    private String breakHours;

    private String travelHours;

    private List<TravelDetail> travelDetailList;
}
