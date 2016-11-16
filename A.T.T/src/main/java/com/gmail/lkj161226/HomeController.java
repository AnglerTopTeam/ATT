package com.gmail.lkj161226;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gmail.lkj161226.entities.Member;
import com.gmail.lkj161226.service.MemberDao;



/**
 * Handles requests for the application home page.
 */

	@Controller
	public class HomeController {
		@Autowired
		private SqlSession sqlSession; //DB connect
		@Autowired
		private Member member;	
		
		private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
		
		@RequestMapping(value = "/", method = RequestMethod.GET)
		public String home(Locale locale, Model model) {
			return "home";
		}
		
		@RequestMapping(value = "/index", method = RequestMethod.GET)
		public String index(Locale locale, Model model) {
			
			return "home";
		}
		
		@RequestMapping(value = "/main", method = RequestMethod.GET)
		public String main(Locale locale, Model model) {
			return "home";
		}
		@RequestMapping(value = "/memberInsertForm", method = RequestMethod.GET)
		public String memberInsertForm() {
			
			return "member/member_insert";
		}
		
		@RequestMapping(value = "/memberInsert", method = RequestMethod.POST)
		public ModelAndView memberInsert(@ModelAttribute("member") Member member ) {
			ModelAndView mav = new ModelAndView("member/member_result");
			MemberDao dao = sqlSession.getMapper(MemberDao.class);
			SimpleDateFormat simple = 
		            new SimpleDateFormat("yyyy.MM.dd HH:mm:ss",Locale.KOREA);
		      Date currentdate = new Date();
		      String inputdate = simple.format(currentdate);
		      
		      member.setMemberlevel(1);
		      member.setInputdate(inputdate);

			String msg = "";
			int result = dao.insertRow(member);
			if(result == 1){
				msg="success! Insert your Info.";
			} else {
				msg="failed! your Info.";
			}
			mav.addObject("result", "ok" );
			mav.addObject("msg",msg);
			System.out.println("---->>>>");
			System.out.println("---->>>>");
			System.out.println("---->>>>");
			return mav;
		}
		@RequestMapping(value = "/member_result", method = RequestMethod.GET)
		public String member_result() {
			return "member/member_result";
		}
		
		
		@RequestMapping(value = "/memberUpdateForm", method = RequestMethod.GET)
		   public ModelAndView memberUpdateForm(@RequestParam String id )
		         throws Exception{
		      MemberDao dao = sqlSession.getMapper(MemberDao.class);
		      Member member = dao.selectOne(id);
		      ModelAndView mav = new ModelAndView("member/member_update_form");
		      mav.addObject("member",member);
//		       String path = request.getContextPath();
		         
		         return mav;
		      }
		
		@RequestMapping(value = "/memberUpdate", method = RequestMethod.POST)
		public ModelAndView memberUpdate(@ModelAttribute("member") Member member ) {
			ModelAndView mav = new ModelAndView("member/member_result");
			MemberDao dao = sqlSession.getMapper(MemberDao.class);
			
			String msg = "";
			int result = dao.updateRow(member);
			if(result == 1){
				msg="success! Update your Info.";
			} else {
				msg="failed! your Info.";
			}
			mav.addObject("result", "ok" );
			mav.addObject("msg",msg);
			return mav;
		}
		
		@RequestMapping(value = "/memberList", method = RequestMethod.GET)
		public ModelAndView member_list(Locale locale, Model model) {
			MemberDao dao = sqlSession.getMapper(MemberDao.class);
			ArrayList<Member> members = dao.selectAll();
			ModelAndView mav = new ModelAndView("member/member_list");
			mav.addObject("members",members);
			return mav;
		}
		@RequestMapping(value = "/idconfirm", method = RequestMethod.POST)
		@ResponseBody
		public int idconfirm(@RequestParam String id ) {
			int count = 0;
			int find = 0;
			try {
				MemberDao dao = sqlSession.getMapper(MemberDao.class); 
				count = dao.selectCount(id); 
			} catch (Exception e) {
			}
			if ( count > 0){
				find = 1;
			} else {
				find = 0;
			}
			return find;
		}
		@RequestMapping(value = "/nickconfirm", method = RequestMethod.POST)
		@ResponseBody
		public int nicconfirm(@RequestParam String nickname ) {
			int count = 0;
			int find = 0;
			try {
				MemberDao dao = sqlSession.getMapper(MemberDao.class);  
				count = dao.sCount(nickname); 
			} catch (Exception e) {
			}
			if ( count > 0){
				find = 1;
			} else {
				find = 0;
			}
			return find;
		}
		
		@RequestMapping(value = "/loginup", method = RequestMethod.POST)
	      public String loginup(@ModelAttribute("member") Member member, HttpSession session) {
	         MemberDao dao = sqlSession.getMapper(MemberDao.class);
	         Member data = dao.selectLogin(member);
	         if ( data == null ) {
	            return "redirect:/loginfail";
	         }else {
	            session.setAttribute("sessionid", data.getId());
	            session.setAttribute("sessionpassword", data.getPassword());
	            session.setAttribute("sessionname", data.getName());
	            session.setAttribute("sessionnickname", data.getNickname());
	            session.setAttribute("sessionemail", data.getEmail());
	            return "redirect:/index"; 
	         }
	         
	      }
	      
	      @RequestMapping(value = "/loginfail", method = RequestMethod.GET)
	      public String loginfail(HttpServletRequest request) {
	         return "login/login_fail";
	      }
	      
	      @RequestMapping(value = "/logout", method = RequestMethod.GET)
	      public String logout(HttpServletRequest request) {
	         HttpSession session=request.getSession();
	         session.invalidate();
	         return "redirect:/main";
	      }
		
	}
