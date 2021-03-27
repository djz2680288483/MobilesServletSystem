package com.oracle.po;

/**
 * @author 默尘
 */
public class TCharge {

	private String charge_code;
	private String charge_name;
	private double charge;
	public TCharge(){};
	
	public TCharge(String charge_code, String charge_name, double charge) {
		super();
		this.charge_code = charge_code;
		this.charge_name = charge_name;
		this.charge = charge;
	}

	public String getCharge_code() {
		return charge_code;
	}
	public void setCharge_code(String charge_code) {
		this.charge_code = charge_code;
	}
	public String getCharge_name() {
		return charge_name;
	}
	public void setCharge_name(String charge_name) {
		this.charge_name = charge_name;
	}
	public double getCharge() {
		return charge;
	}
	public void setCharge(double charge) {
		this.charge = charge;
	}
	
}
