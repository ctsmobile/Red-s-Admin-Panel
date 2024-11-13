package com.cts.redplasteringadmin.response;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@EqualsAndHashCode(callSuper = false)
public class AdminLoginResponse extends AbstractResponse {
    //private String token;
   private String message;
   private  boolean status;

}
