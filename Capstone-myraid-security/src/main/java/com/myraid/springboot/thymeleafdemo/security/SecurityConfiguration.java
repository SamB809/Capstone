package com.myraid.springboot.thymeleafdemo.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;

@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/webjars/**", "/img/**", "/css/**", "/js/**").addResourceLocations(
				"classpath:/META-INF/resources/webjars/", "classpath:/static/img/", "classpath:/static/css/",
				"classpath:/static/js/");
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().passwordEncoder(passwordEncoder).withUser("sam@mycapstone.com")
				.password("$2a$10$NLF0u1fOfWf73gQPV5l.wuvU8dh2cNtmqNznv59EIlG4oLBw5Ptx.").roles("USER", "ADMIN");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests().antMatchers("/admin/**").hasAnyRole("ADMIN").anyRequest()
				.hasAnyRole("USER").and().formLogin().loginPage("/login")
				.defaultSuccessUrl("http://localhost:8081/Capstone-MVC/car/admin_page").permitAll();
	}
}