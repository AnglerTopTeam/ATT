package com.gmail.lkj161226;

import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



/**
 * Handles requests for the application home page.
 */

	@Controller
	public class HomeController {
		
		
		private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String home(Locale locale, Model model) {
			return "home";
		}
		@RequestMapping(value = "/main", method = RequestMethod.GET)
		public String main(Locale locale, Model model) {
			return "home";
		}
		@RequestMapping(value = "/memberInsert", method = RequestMethod.GET)
		public String memberInsert(Locale locale, Model model) {
			return "member/member_insert";
		}
		
		@RequestMapping(value = "/Select", method = RequestMethod.GET)
		public String Select(Locale locale, Model model) {
			return "member/selest_member";
		}
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public String login(Locale locale, Model model) {
			return "login/login";
		}
		
	}
