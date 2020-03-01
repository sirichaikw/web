package com.motobigbike;

public class Customer {
	private Common common = new Common();
	
	public CustomerProfile getCustomerProfileById(String customerId) {
		String jsonString = common.httpPost("https://customer-ws:9001/CustomerWS/profile.jsp", "id=1");
		
		CustomerProfile custProfile = new CustomerProfile();
		custProfile.customerId = "-";
		custProfile.firstName = "-";
		custProfile.lastName = "-";
		custProfile.jsonOutput = jsonString;
		return custProfile;
	}
}