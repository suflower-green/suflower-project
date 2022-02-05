package com.suflower.mapper;


import org.assertj.core.api.Assertions;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@Log4j
@ContextConfiguration(classes= {com.suflower.config.RootConfig.class})
public class CartMapperTests {

	@Setter(onMethod_= {@Autowired})
	private CartMapper mapper;
	
	@Test
	public void testList() {
		mapper.getList("jaek1997");
		
	}
	
//	@Test
//	public void testInsert() {
//		
//		CartDTO cart = new CartDTO();
//		
//		cart.setMemberId("jaek1997");
//		cart.setQuantity(4);
//		cart.setProductId(3L);
//	
//		
//		mapper.insert(cart);
//		
//		Assertions.assertThat(cart.getProductId()).isEqualTo(3L);
//	}
	
//	@Test
//	public void testSumMoney() {
//		
//		Assertions.assertThat(mapper.sumMoney("jaek1997")).isNotNull();
//		
//	}
	
//	@Test
//	public void testCartMoney() {
//		
//		Assertions.assertThat(mapper.cartMoney()).isNotNull();
//	}
	
	
}