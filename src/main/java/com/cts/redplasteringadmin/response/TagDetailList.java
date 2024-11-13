package com.cts.redplasteringadmin.response;

import lombok.Data;

import java.util.List;

@Data
public class TagDetailList extends AbstractResponse{

    private List<TagDetail> tagDetailList;
}
