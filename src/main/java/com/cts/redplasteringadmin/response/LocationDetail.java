package com.cts.redplasteringadmin.response;

import lombok.Data;

@Data
public class LocationDetail extends AbstractResponse{

    private Integer id;

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
