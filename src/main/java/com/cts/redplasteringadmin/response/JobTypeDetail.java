package com.cts.redplasteringadmin.response;

import lombok.Data;

@Data
public class JobTypeDetail extends AbstractResponse{

    private Integer jobId;

    private String jobName;

    private String imageName;

    private String filename;
}
