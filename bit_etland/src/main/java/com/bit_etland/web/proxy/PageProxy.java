package com.bit_etland.web.proxy;

public class PageProxy implements Proxy{
	private Pagination page;
	@Override
	public void carryOut(Object o) {
		setPage((Pagination) o);
	}
	public Pagination getPage() {
		return page;
	}
	public void setPage(Pagination page) {
		this.page = page;
	}
	
}
