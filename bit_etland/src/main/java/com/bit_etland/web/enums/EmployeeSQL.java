package com.bit_etland.web.enums;
public enum EmployeeSQL {
	REGISTER, ACCESS;
	
	@Override
	public String toString() {
		StringBuffer query= new StringBuffer();
		switch (this) {
		case REGISTER:
			query.append("INSERT INTO EMPLOYEES(EMPLOYEE_ID,"
					+ "MANAGER,"
					+ "NAME,"
					+ "BIRTH_DATE, "
					+ "PHOTO, "
					+ "NOTES)"
					+ " VALUES("
					+ " EMP_SEQ.NEXTVAL, ?, ?, ?, '1020', ?)");
			break;
		case ACCESS:
			query.append("SELECT * FROM EMPLOYEES \n" + 
					"WHERE EMPLOYEE_ID LIKE ? AND NAME LIKE ?");
			break;
		default:
			break;
		}
		return query.toString();
	}
	
}
