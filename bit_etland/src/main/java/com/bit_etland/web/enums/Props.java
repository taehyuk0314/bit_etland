package com.bit_etland.web.enums;
import java.io.File;
public enum Props {
	ORA_DRIVER("oracle.jdbc.OracleDriver"), 
	DB_USER("oracle"),
	DB_PASS("password"),
	DB_URL("jdbc:oracle:thin:@localhost:1521:xe"),
	IMAGE("C:"
			+File.separator+"Users"
			+File.separator+"1027"
			+File.separator+"git"
			+File.separator+"repository"
			+File.separator+"BitRetailCompany"
			+File.separator+"WebContent"
			+File.separator+"resources"
			+File.separator+"img"
			+File.separator);
	private String value;
	
	private Props(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}
}
