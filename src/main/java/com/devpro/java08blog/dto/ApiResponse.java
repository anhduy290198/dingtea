package com.devpro.java08blog.dto;

import java.io.Serializable;

public class ApiResponse implements Serializable {
	
	
	private static final long serialVersionUID = -8425801695946598982L;

	private int statusCode; // 200 successfull,500:error
	
	//Dữ liệu trả về phía back-end
	private Object data;
	
	

	public ApiResponse(int statusCode, Object data) {
		super();
		this.statusCode = statusCode;
		this.data = data;
	}

	public int getStatusCode() {
		return statusCode;
	}

	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
	
	
	
}
