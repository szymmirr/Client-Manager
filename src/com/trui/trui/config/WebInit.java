package com.trui.trui.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class WebInit implements WebApplicationInitializer {

	public void onStartup(ServletContext servletContext) throws ServletException {
		AnnotationConfigWebApplicationContext aplContext = new AnnotationConfigWebApplicationContext();
		aplContext.register(webMVCconfig.class);

		ServletRegistration.Dynamic despachador = servletContext.addServlet("SpringDispachador",
				new DispatcherServlet(aplContext));
		despachador.setLoadOnStartup(1);
		despachador.addMapping("/");
	}

}
