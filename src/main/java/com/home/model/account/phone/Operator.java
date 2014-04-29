package com.home.model.account.phone;

public enum Operator {
	
	MTS("com.home.model.account.phone.Operator.MTS"),
	VELCOME("com.home.model.account.phone.Operator.VELCOME"),
	LIFE("com.home.model.account.phone.Operator.LIFE");
	
	private String value;
	
	private Operator(String value) {
		this.value = value;
	}
	
	public String getValue() {
		return value;
	}
}
