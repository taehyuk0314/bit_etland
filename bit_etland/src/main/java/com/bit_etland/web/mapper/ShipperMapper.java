package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit_etland.web.domain.ShipperDTO;
@Repository
public interface ShipperMapper {
	public void insertShipper(ShipperDTO shi);
	public List<ShipperDTO> selectShippers();
	public List<ShipperDTO> selectShipperByNames(String ShipperName);
	public ShipperDTO selectShipperByID(String ShipperID);
	public int countShipper();
	public boolean existShipper(String ShipperID);
	public void updateShipper(ShipperDTO shi);
	public void deleteShipper(ShipperDTO shi);
}
