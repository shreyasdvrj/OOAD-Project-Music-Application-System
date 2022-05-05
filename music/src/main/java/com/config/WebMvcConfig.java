package com.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import com.dao.UserDao;
import com.dao.UserDaoImpl;

@Configuration
@EnableWebMvc
@ComponentScan("com")
public class WebMvcConfig {
	@Bean
	InternalResourceViewResolver viewResolver() {

		InternalResourceViewResolver vr = new InternalResourceViewResolver();

		vr.setPrefix("/");
		vr.setSuffix(".jsp");
		return vr;

	}

	@Bean
	DriverManagerDataSource getDataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/music");
		ds.setUsername("root");
		ds.setPassword("united1878");

		return ds;

	}

	@Bean
	public UserDao getUserDao() {
		return new UserDaoImpl(getDataSource());
	}
}
