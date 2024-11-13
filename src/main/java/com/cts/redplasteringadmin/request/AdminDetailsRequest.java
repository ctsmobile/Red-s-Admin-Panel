package com.cts.redplasteringadmin.request;

import lombok.Data;

@Data
public class AdminDetailsRequest {
    private String userId;
    private String email;
    private String password;
    private String name;
    private String profilePhoto;
    private String mobile;
}
