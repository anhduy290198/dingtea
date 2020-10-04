package com.devpro.java08blog.conf;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.devpro.java08blog.controller.HomeController;

@ControllerAdvice
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "com.devpro" })
public class MvcConf implements WebMvcConfigurer {

	private static final org.slf4j.Logger LOGGER = org.slf4j.LoggerFactory.getLogger(HomeController.class);
	
	@Bean
	public ViewResolver viewResolver() {
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		bean.setViewClass(JstlView.class);
		bean.setPrefix("/WEB-INF/views/");
		bean.setSuffix(".jsp");
		return bean;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("classpath:/META-INF/css/");
		registry.addResourceHandler("/js/**").addResourceLocations("classpath:/META-INF/js/");
		registry.addResourceHandler("/images/**").addResourceLocations("classpath:/META-INF/images/");

		registry.addResourceHandler("/bootstrap/**").addResourceLocations("classpath:/META-INF/bootstrap/");
		registry.addResourceHandler("/plugins/**").addResourceLocations("classpath:/META-INF/plugins/");
		registry.addResourceHandler("/less/**").addResourceLocations("classpath:/META-INF/less/");
		registry.addResourceHandler("/admin/**").addResourceLocations("classpath:/META-INF/admin/");
		registry.addResourceHandler("/summernote/**").addResourceLocations("classpath:/META-INF/summernote/");
		registry.addResourceHandler("/vendor/**").addResourceLocations("classpath:/META-INF/vendor/");
		registry.addResourceHandler("/fonts/**").addResourceLocations("classpath:/META-INF/fonts/");
		registry.addResourceHandler("/favicon.ico/**").addResourceLocations("classpath:/META-INF/favicon.ico/");
		registry.addResourceHandler("/files/**").addResourceLocations("file:F:/eclipse/java08blog/upload/");
		
		
	}
	
	
	@ExceptionHandler(value = Exception.class)
	public ModelAndView defaultErrorHandler(HttpServletRequest req, Exception e) throws Exception {
		// If the exception is annotated with @ResponseStatus rethrow it and let
		// the framework handle it - like the OrderNotFoundException example
		// at the start of this post.
		// AnnotationUtils is a Spring Framework utility class.
//		if (AnnotationUtils.findAnnotation(e.getClass(), ResponseStatus.class) != null)
//			throw e;
		
		LOGGER.error(e.getMessage(),e);

		if(e instanceof org.springframework.web.servlet.NoHandlerFoundException) { // 404
			// Otherwise setup and send the user to a default error-view.
			ModelAndView mav = new ModelAndView();
			mav.addObject("exception", e);
			mav.addObject("url", req.getRequestURL());
			mav.setViewName("errors/404");
			return mav;
		} else {
			// Otherwise setup and send the user to a default error-view.
			ModelAndView mav = new ModelAndView();
			mav.addObject("exception", e);
			mav.addObject("url", req.getRequestURL());
			mav.setViewName("errors/common");
			return mav;
		}
		
	}
	
}
