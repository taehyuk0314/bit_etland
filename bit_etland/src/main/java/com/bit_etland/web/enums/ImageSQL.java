package com.bit_etland.web.enums;

public enum ImageSQL {
	IMG_ADD, IMG_LAST_SEQ, SELECT_ONE_IMG;
	
	@Override
	public String toString() {
		StringBuffer query= new StringBuffer();
		switch (this) {
		case IMG_ADD:
			query.append("INSERT INTO IMAGE(IMG_SEQ,IMG_NAME,IMG_EXTENTION,OWNER)\n" + 
					" VALUES(IMG_SEQ.NEXTVAL,?,?,?)");
			break;
		case IMG_LAST_SEQ:
			query.append("SELECT IMG_SEQ AS SEQ \n" + 
					" FROM IMAGE \n" + 
					" WHERE IMG_SEQ LIKE ((SELECT MAX(IMG_SEQ) \n" + 
					"                    FROM IMAGE))");
			break;
		case SELECT_ONE_IMG:
			query.append("SELECT * FROM IMAGE WHERE IMG_SEQ LIKE ?");
			break;
		default:
			break;
		}
		return query.toString();
	}
}
