package com.cts.redplasteringadmin.request;

import lombok.Data;

import java.util.List;
import com.cts.redplasteringadmin.response.TravelDetail;

@Data
public class UpdateTimetrackingRequest {

    private String notes;

    private String clockInTime;

    private Integer clockInLocation;

    private Integer clockOutLocation;

    private String clockOutTime;

    private String breakInTime;

    private String breakOutTime;

    private Integer breakInLocation;

    private Integer breakOutLocation;

    private List<TravelDetail> travelDetailList;
}
