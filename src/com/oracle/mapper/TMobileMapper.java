package com.oracle.mapper;

import com.oracle.po.TMobile;

/**
 * @author 默尘
 */
public interface TMobileMapper {

    TMobile selectMobileByNumber(TMobile mobile);

    void insertMobiles(TMobile mobile);

    void updateMobile(TMobile t);
}
