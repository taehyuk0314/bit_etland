package com.bit_etland.web.enums;
public enum CustomerSQL {
	SIGNUP, SIGNIN, LIST, ROW_COUNT, RETRIEVE,UPDATE, UPDATE_PROFILE_IMG, REMOVE;
	
	@Override
	public String toString() {
		StringBuffer query= new StringBuffer();
		switch (this) {
		case SIGNUP:
			query.append("INSERT INTO CUSTOMERS(CUSTOMER_ID,"
					+ "CUSTOMER_NAME,"
					+ "PASSWORD,"
					+ "SSN,"
					+ "PHONE,"
					+ "POSTALCODE,"
					+ "CITY,"
					+ "ADDRESS,"
					+ "PHOTO"
					+")\n"  
					+"VALUES (?,?,?,?,?,?,?,?,'1020')");
			break;
		case SIGNIN:
			query.append("SELECT * \n"
					+ "FROM CUSTOMERS \n"
					+ "WHERE CUSTOMER_ID LIKE ? AND  PASSWORD LIKE ?");
			break;
		case LIST:
			query.append("SELECT T2.*\n" + 
					"FROM(SELECT ROWNUM R2,T.*\n" + 
					"        FROM (SELECT ROWNUM RNUM ,C.* \n" + 
					"        FROM CUSTOMERS C  \n" + 
					"        ORDER BY RNUM DESC) T) T2  \n" + 
					"WHERE R2 BETWEEN ? AND ? \n");

			break;
		case ROW_COUNT:
			query.append("SELECT COUNT(*) AS COUNT FROM CUSTOMERS");
			break;
		case RETRIEVE:
			query.append("SELECT * FROM CUSTOMERS WHERE CUSTOMER_ID LIKE ? ");
			break;
		case UPDATE:
			query.append("UPDATE CUSTOMERS\n" + 
					"SET PASSWORD = ?,\n" + 
					"    PHONE = ?,\n" + 
					"    CITY = ?,\n" + 
					"    ADDRESS = ?,\n" + 
					"    POSTALCODE = ?\n" + 
					"WHERE CUSTOMER_ID LIKE ?");
			break;
		case UPDATE_PROFILE_IMG:
			query.append("UPDATE CUSTOMERS SET PHOTO = ? WHERE CUSTOMER_ID LIKE ?");
			break;
		case REMOVE :
			query.append("DELETE FROM CUSTOMERS WHERE CUSTOMER_ID LIKE ?");
			break;
		default:
			break;
		}
		return query.toString();
	}
	
}
