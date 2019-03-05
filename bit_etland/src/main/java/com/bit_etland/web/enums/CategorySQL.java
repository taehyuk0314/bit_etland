package com.bit_etland.web.enums;

public enum CategorySQL {
	CATE_LIST;
	
	@Override
	public String toString() {
		StringBuffer query= new StringBuffer();
		switch (this) {
		case CATE_LIST:
			query.append("SELECT * FROM CATEGORIES");
			break;
		
		default:
			break;
		}
		return query.toString();
	}
}
