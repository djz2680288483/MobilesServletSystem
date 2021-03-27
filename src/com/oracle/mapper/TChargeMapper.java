package com.oracle.mapper;

import java.util.List;

import com.oracle.po.TCharge;
import com.oracle.po.TChargeRule;

/**
 * @author 默尘
 */
public interface TChargeMapper {

    TCharge selectTchargeByCode(TCharge charge);

    void updateCharge(TCharge charge);

    List<TChargeRule> selectChargeRule(TChargeRule chargeRule);

    void deleteRuleById(TChargeRule rule);

    void insertRule(TChargeRule rule);
}
