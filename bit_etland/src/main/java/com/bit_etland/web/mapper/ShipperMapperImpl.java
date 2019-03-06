package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit_etland.web.domain.ShipperDTO;
@Repository
public class ShipperMapperImpl implements ShipperMapper{

	@Override
	public void insertShipper(ShipperDTO shi) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ShipperDTO> selectShippers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ShipperDTO> selectShipperByNames(String ShipperName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ShipperDTO selectShipperByID(String ShipperID) {
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
	public void updateShipper(ShipperDTO shi) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteShipper(ShipperDTO shi) {
		// TODO Auto-generated method stub
		
	}

}
