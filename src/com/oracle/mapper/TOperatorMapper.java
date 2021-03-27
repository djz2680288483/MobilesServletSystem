package com.oracle.mapper;

import java.util.List;

import com.oracle.po.TOperator;

public interface TOperatorMapper {

	public abstract TOperator selectOperatorById(TOperator operator);
	public abstract void insertOperator(TOperator operator);
	public abstract List<TOperator> selectAll();
	public abstract void updateOperatorById(TOperator operator);
}
