package com.bit_etland.web.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.ShipperDTO;
@Component
public interface ShipperService {
	public void registShipper(ShipperDTO shi);
	public List<ShipperDTO> bringShippers();
	public List<ShipperDTO> retrieveShipperByNames(String ShipperName);
	public ShipperDTO retrieveShipperByID(String ShipperID);
	public int countShipper();
	public boolean existShipper(String ShipperID);
	public void modifyShipper(ShipperDTO shi);
	public void removeShipper(ShipperDTO shi);
}
