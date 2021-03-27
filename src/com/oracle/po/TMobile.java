package com.oracle.po;

/**
 * @author 默尘
 */
public class TMobile {

	private String mobile_number;
	private String mobile_type;
	private String card_number;
	private String is_available;
	public TMobile(){}
	
	public TMobile(String mobile_number, String mobile_type, String card_number, String is_available) {
		super();
		this.mobile_number = mobile_number;
		this.mobile_type = mobile_type;
		this.card_number = card_number;
		this.is_available = is_available;
	}

	public String getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(String mobile_number) {
		this.mobile_number = mobile_number;
	}
	public String getMobile_type() {
		return mobile_type;
	}
	public void setMobile_type(String mobile_type) {
		this.mobile_type = mobile_type;
	}
	public String getCard_number() {
		return card_number;
	}
	public void setCard_number(String card_number) {
		this.card_number = card_number;
	}
	public String getIs_available() {
		return is_available;
	}
	public void setIs_available(String is_available) {
		this.is_available = is_available;
	}
	
	
}
