package com.oracle.po;

/**
 * @author 默尘
 */
public class TUser {
	private int user_id;
	private int customer_id;
	private int account_id;
	private String mobile_number;
	private String roaming_status;
	private String com_level;
	
	public TUser() {
		super();
	}
	public TUser(int user_id, int customer_id, int account_id, String mobile_number, String roaming_status,
			String com_level) {
		super();
		this.user_id = user_id;
		this.customer_id = customer_id;
		this.account_id = account_id;
		this.mobile_number = mobile_number;
		this.roaming_status = roaming_status;
		this.com_level = com_level;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}
	public String getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(String mobile_number) {
		this.mobile_number = mobile_number;
	}
	public String getRoaming_status() {
		return roaming_status;
	}
	public void setRoaming_status(String roaming_status) {
		this.roaming_status = roaming_status;
	}
	public String getCom_level() {
		return com_level;
	}
	public void setCom_level(String com_level) {
		this.com_level = com_level;
	}
	

}
