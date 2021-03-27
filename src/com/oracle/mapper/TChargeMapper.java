package com.oracle.mapper;

import java.util.List;

import com.oracle.po.TCharge;
import com.oracle.po.TChargeRule;

public interface TChargeMapper {

	public abstract TCharge selectTchargeByCode(TCharge charge);
	public abstract void updateCharge(TCharge charge);
	public abstract List<TChargeRule> selectChargeRule(TChargeRule chargeRule);
	public abstract void deleteRuleById(TChargeRule rule);
	public abstract void insertRule(TChargeRule rule);
}
