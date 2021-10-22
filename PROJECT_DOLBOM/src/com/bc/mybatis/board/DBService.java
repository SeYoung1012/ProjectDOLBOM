package com.bc.mybatis.board;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// MyBatis 사용해서 작업할 SqlSession 을 만들어 줄
// SqlSessionFactory 객체 생성을 위한 클래스
public class DBService {
	private static SqlSessionFactory factory;
	
	//static 초기화문
	static {
		try {
			factory = new SqlSessionFactoryBuilder()
					.build(Resources.getResourceAsReader("com/bc/mybatis/board/config.xml"));
			System.out.println("Mybatis 설정 파일 가져옴!!");
		} catch (IOException e) {
			System.out.println("Mybatis 설정 파일 가져오는 중 문제 발생!!");
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getFactory() {
		return factory;
	}
}
