package com.oracle.po;

/**
 * @author 默尘
 */
public class TOperator {

	private String operator_id;
	private String operator_pwd;
	private String operator_name;
	private String is_admin;
	public TOperator(){
		
	}
	
	public TOperator(String operator_id, String operator_pwd, String operator_name, String is_admin) {
		super();
		this.operator_id = operator_id;
		this.operator_pwd = operator_pwd;
		this.operator_name = operator_name;
		this.is_admin = is_admin;
	}

	public String getOperator_id() {
		return operator_id;
	}
	public void setOperator_id(String operator_id) {
		this.operator_id = operator_id;
	}
	public String getOperator_pwd() {
		return operator_pwd;
	}
	public void setOperator_pwd(String operator_pwd) {
		this.operator_pwd = operator_pwd;
	}
	public String getOperator_name() {
		return operator_name;
	}
	public void setOperator_name(String operator_name) {
		this.operator_name = operator_name;
	}
	public String getIs_admin() {
		return is_admin;
	}
	public void setIs_admin(String is_admin) {
		this.is_admin = is_admin;
	}
	
	
}
