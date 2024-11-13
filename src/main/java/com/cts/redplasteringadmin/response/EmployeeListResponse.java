package com.cts.redplasteringadmin.response;

import lombok.Data;

import java.util.List;

@Data
public class EmployeeListResponse extends AbstractResponse {

    private List<GetEmployeeResponse> list;

}
