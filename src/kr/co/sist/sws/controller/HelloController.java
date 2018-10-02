package kr.co.sist.sws.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET; 
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;; 

@Controller
public class HelloController {
	
	@RequestMapping(value="index.do", method=GET)
	public String hello() {
		return "login/login";
	}//hello

	@RequestMapping(value="admin/loginCheck.do", method={GET,POST})
	public String get(HttpServletRequest request) throws ServletException, IOException  {
		
		return "get";
	}//get
	
	@RequestMapping(value="post.do", method=POST)
	public String post() {
		return "day0917/post";
	}//post
	
	//�������� ��û����� �� ���� ó���Ϸ��� {}�� �ִ´�.
	@RequestMapping(value="get_post.do", method={GET, POST})
	public String getPost() {
		return "day0917/get_post";
	}//getPost
	
	//���� ��ο����� ��û : Controller�� ��� �ֵ� ��� ����, value������
	//�������ָ� �ȴ�.
	@RequestMapping(value="day0917/sub_dir.do", method=GET)
	public String subDir() {
		return "sub_dir";
	}//getPost
	
	
	
}//class
