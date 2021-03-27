package com.oracle.mapper;

import com.oracle.po.TCustomer;

/**
 * @author 默尘
 */
public interface TCustomerMapper {
    TCustomer selectCustomerBytypeAndNumber(TCustomer t);

    void insertCustomer(TCustomer t);
}
