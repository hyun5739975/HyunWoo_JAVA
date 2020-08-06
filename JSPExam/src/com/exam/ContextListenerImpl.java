package com.exam;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
@WebListener
public class ContextListenerImpl implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		//어플리케이션 제거
		System.out.println("웹 어플리케이션 제거...");
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		//어플리케이션 초기화
		System.out.println("웹 어플리케이션 초기화...");
	}

}
