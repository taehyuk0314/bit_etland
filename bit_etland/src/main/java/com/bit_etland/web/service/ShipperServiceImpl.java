package com.bit_etland.web.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit_etland.web.domain.ShipperDTO;
@Repository
public class ShipperServiceImpl implements ShipperService{

	@Override
	public void registShipper(ShipperDTO shi) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ShipperDTO> bringShippers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ShipperDTO> retrieveShipperByNames(String ShipperName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ShipperDTO retrieveShipperByID(String ShipperID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countShipper() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean existShipper(String ShipperID) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void modifyShipper(ShipperDTO shi) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeShipper(ShipperDTO shi) {
		// TODO Auto-generated method stub
		
	}

}
