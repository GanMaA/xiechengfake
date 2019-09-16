package org.lanqiao;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;

public class test {
    public static void main(String[] args) throws IOException {
        ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring-mybatis.xml");
        applicationContext.start();
        System.out.println("service started !");
        System.in.read();
    }
}