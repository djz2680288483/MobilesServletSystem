package com.oracle.mapper;

import com.oracle.po.TMobile;

public interface TMobileMapper {

	public abstract TMobile selectMobileByNumber(TMobile mobile);
	public abstract void insertMobiles(TMobile mobile);
	public abstract void updateMobile(TMobile t);
}
