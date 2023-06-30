package com.abc.cars.portal.test;



import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.abc.cars.portal.daos.BidRepository;
import com.abc.cars.portal.daos.CarRepository;
import com.abc.cars.portal.daos.UserRepository;
import com.abc.cars.portal.entities.Car;
import com.abc.cars.portal.entities.CarBidding;
import com.abc.cars.portal.entities.User;
import com.abc.cars.portal.services.BidService;
import com.abc.cars.portal.services.CarService;
import com.abc.cars.portal.services.UserService;



@SpringBootTest
class SpringbootCarPortalDemoApplicationTests {

	@Autowired
	UserService userService;
	@Autowired
	UserRepository userepo;
	@Autowired
	CarService carservice;
	@Autowired
	CarRepository carrepo;
	@Autowired
	BidRepository bidrepo;
	@Autowired
	BidService bidservice;
	
	@Test
	void contextLoads() {
	}

	@Test
	void save() {
		User us = new User();
		us.setName("Somasiri");
		us.setUserName("soma");
		us.setPassword("12345");
		userService.save(us);
		System.out.println(us);
	}
	
	@Test
	void saveCar() {
		Car us = new Car();
		us.setMake("German");
		us.setModel("Vios");
		us.setRegisteration("kn-0098");
		us.setPrice("178600/-");
		carservice.saveCar(us);
		System.out.println(us);
	}
	
	@Test
	void bid() {
		CarBidding us = new CarBidding();
		us.setBidderPrice("1900000/-");
		bidservice.save(us);
		System.out.println(us);
		
		
	}
	/*@Test
	void carSearch() {
		Car actualresult = (Car) carrepo.search("tesla");
		assertThat(actualresult).isNotNull();
		
	}*/
}
