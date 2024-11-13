package com.cts.redplasteringadmin.response;

import lombok.Data;

import java.util.List;

@Data
public class LocationListResponse extends AbstractResponse{

    private List<LocationDetail> locationDetailList;
}
