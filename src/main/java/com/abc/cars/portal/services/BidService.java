package com.abc.cars.portal.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.abc.cars.portal.daos.BidRepository;
import com.abc.cars.portal.entities.Car;
import com.abc.cars.portal.entities.CarBidding;


@Service
@Transactional
public class BidService {
	@Autowired
	BidRepository repo;

	@Autowired
    private BidRepository bidRepository;

	public CarBidding save(CarBidding carBiding) {		
        return repo.save(carBiding);	
	}

	public List<CarBidding> listAll() {
		return (List<CarBidding>) repo.findAll();
	}

	public List<CarBidding> listBidInfo(Car car) {
		return (List<CarBidding>) repo.findByCarid(car);
	}

}
