package com.suflower.config;

import javax.servlet.ServletRegistration;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		
		return new Class[] {RootConfig.class, SecurityConfig.class};
	}//getRootConfigClasses

	@Override
	protected Class<?>[] getServletConfigClasses() {
		
		return new Class[] {ServletConfig.class};
	}//getServletConfigClasses

	@Override
	protected String[] getServletMappings() {
		
		return new String[] {"/"};
	}//getServletMappings

	@Override
	protected void customizeRegistration(ServletRegistration.Dynamic registration) {
		

		registration.setInitParameter("throwExceptionIfNoHandlerFound", "true");
	}//customizeRegistration
	
	
	
}//WebConfig
