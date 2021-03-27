package com.oracle.mapper;

import java.util.List;

import com.oracle.po.TOperator;

/**
 * @author 默尘
 */
public interface TOperatorMapper {

    TOperator selectOperatorById(TOperator operator);

    void insertOperator(TOperator operator);

    List<TOperator> selectAll();

    void updateOperatorById(TOperator operator);
}
