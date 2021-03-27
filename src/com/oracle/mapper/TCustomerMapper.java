package com.oracle.mapper;

import com.oracle.po.TCustomer;

public interface TCustomerMapper {
	public abstract TCustomer selectCustomerBytypeAndNumber(TCustomer t);
	public abstract void insertCustomer(TCustomer t);
}
