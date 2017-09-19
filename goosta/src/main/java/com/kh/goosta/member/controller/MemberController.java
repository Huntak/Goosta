package com.kh.goosta.member.controller;

import static org.hamcrest.CoreMatchers.instanceOf;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Random;

import javax.annotation.Resource;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.member.Service.MemberService;
import com.kh.goosta.member.vo.Member;

@Controller
public class MemberController {
	
	@Resource(name="MemberService")
	private MemberService ms;
	
	
	
	@RequestMapping(value = "enroll.do")
	public String enroll(){
		
		return "member/enroll";
	}
	
	@RequestMapping(value = "findid1.do")
	public String findid(){
		
		return "member/findid";
	}
	
	@RequestMapping(value = "findpwd.do")
	public String findpwd(){
		
		return "member/findpwd";
	}
	@RequestMapping("login.do")
	public String login(){
		
		return "member/login";
	}
	@RequestMapping("enroll2.do")
	public String enroll2(Member m){
		int result = 0;
		
		System.out.println(m);
		result = ms.enroll2(m);
		return "common/main";	
	}
	
	@RequestMapping("emailAuth.do")
	@ResponseBody
	public Map<String,String> EmailAuth(HttpServletResponse response, HttpServletRequest request){
			String email = request.getParameter("email");
			String authNum = "";
			Map<String,String> map = new HashMap<String,String>();
			authNum = RandomNum();
			System.out.println(email + authNum);
			sendEmail(email, authNum);
			System.out.println(authNum);
			map.put("authNum", authNum);
			map.put("email", email);
			
			
			
		return map;
		
}
	
	private void sendEmail(String email, String authNum){
		String host = "smtp.gmail.com"; //smtp 서버
		String subject = "Goosta 회원가입 인증번호 요청";
		String fromName = "Goosta 관리자";
		String from = "gattwe@gmail.com";
		String to1 = email;
		
		String content = "인증번호 [" + authNum + "] 를 입력하세요";
		
		
		try {
			Properties props = new Properties();
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", host);
			props.setProperty("mail.smtp.soketFactory.class", "javax.net.ssl.SSLSoketFactory");
			props.put("mail.smtp.post", "587");
			props.put("mail.smtp.user", from);
			props.put("mail.smtp.auth", "true");
			
			Session mailSession = Session.getInstance(props,new javax.mail.Authenticator(){
				protected javax.mail.PasswordAuthentication getPasswordAuthentication(){
					return new javax.mail.PasswordAuthentication("gattwe@gmail.com","qorrl3435!");
				}			
			});
			Message msg = new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName, "UTF-8", "B")));
			
			InternetAddress[] address1 = { new InternetAddress(to1)};
			msg.setRecipients(Message.RecipientType.TO, address1);
			msg.setSubject(subject);
			msg.setSentDate(new java.util.Date());
			msg.setContent(content, "text/html;charset=UTF-8");
			
			Transport.send(msg);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	private void sendEmail2(String email, String authNum){
		String host = "smtp.gmail.com"; //smtp 서버
		String subject = "Goosta 임시비밀번호가 발급되었습니다.";
		String fromName = "Goosta 관리자";
		String from = "gattwe@gmail.com";
		String to1 = email;
		
		String content = "임시비밀번호는  [" + authNum + "] 입니다.";
		
		
		try {
			Properties props = new Properties();
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", host);
			props.setProperty("mail.smtp.soketFactory.class", "javax.net.ssl.SSLSoketFactory");
			props.put("mail.smtp.post", "865");
			props.put("mail.smtp.user", from);
			props.put("mail.smtp.auth", "true");
			
			Session mailSession = Session.getInstance(props,new javax.mail.Authenticator(){
				protected javax.mail.PasswordAuthentication getPasswordAuthentication(){
					return new javax.mail.PasswordAuthentication("gattwe@gmail.com","qorrl3435!");
				}			
			});
			Message msg = new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName, "UTF-8", "B")));
			
			InternetAddress[] address1 = { new InternetAddress(to1)};
			msg.setRecipients(Message.RecipientType.TO, address1);
			msg.setSubject(subject);
			msg.setSentDate(new java.util.Date());
			msg.setContent(content, "text/html;charset=UTF-8");
			
			Transport.send(msg);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public String RandomNum(){
		StringBuffer buffer = new StringBuffer();
		for(int i = 0; i <=6; i++){
			int n = (int)(Math.random()*10);
			buffer.append(n);
		}
		return buffer.toString();
	}
	
	@RequestMapping("idcheck.do")
	@ResponseBody
	public Map<String, Integer> idcheck(HttpServletRequest request){
		String memberid = request.getParameter("memberid");
		System.out.println("컨트롤러 = " + memberid);
		Map<String,Integer> map = new HashMap<String,Integer>();
		int result = ms.idcheck(memberid);
		map.put("result", result);
		return map;
	}
	
	@RequestMapping("emailcheck2.do")
	@ResponseBody
	public Map<String,Integer> emailcheck2(HttpServletRequest request){
		String email = request.getParameter("email");
		System.out.println("이메일 중복체크 컨트롤러 오나요" + email);
		Map<String,Integer> map = new HashMap<String,Integer>();
		
		int result = ms.emailcheck(email);
		System.out.println(result);
		map.put("result", result);
		return map;
	}
	
	@RequestMapping("login2.do")
	public ModelAndView login2(HttpSession session, Member m, HttpServletRequest request, ModelAndView mv){
		m = ms.login2(m);
		String status = "";
		if(m !=null){
			status = m.getMemberstatus();
		System.out.println(m);
		System.out.println(status);
		System.out.println(status.equals("y"));
		if(m != null && status.trim().equals("y") ){			
			session.setAttribute("loginUser", m);
			mv.setViewName("common/main");
			System.out.println("로그인 성공으로 안오니?" + m.getMemberstatus());
			/*&&m.getMemberstatus().equals("y")*/
		}else{
			mv.addObject("error_message", "아이디 또는 비밀번호가 잘못됬습니다.");
			mv.setViewName("member/login");
		}		
		}else{
			mv.addObject("error_message", "아이디 또는 비밀번호가 잘못됬습니다.");
			mv.setViewName("member/login");
		}
		return mv;
	}
	@RequestMapping("logout.do")
	public String logout(HttpSession session){
		System.out.println(session.getAttribute("loginUser"));
		session.setAttribute("loginUser", null);
		
		return "common/main";
	}

	@RequestMapping("findidnameemailcheck.do")
	public ModelAndView nemaemailcheck(Member m, ModelAndView mv){
		int result = ms.findidcheck(m);
		if(result == 1){
		m = ms.findid(m);
		mv.addObject("m", m);
		mv.setViewName("member/successfindid");
		}else{
			mv.addObject("error_message", "일치하는 정보가 없습니다.");
			mv.setViewName("member/findid");
		}
		return mv;
	}
	
	@RequestMapping("findpwdcheck.do")
	public ModelAndView findpwdcheck (Member m, ModelAndView mv, Map<String, String> map){
		int result = ms.findpwdcheck(m);
		
		if(result == 1){
			String authNum =temporaryPassword(12);
			String email = m.getMemberemail();
			sendEmail2(email,authNum);
			map.put("authNum", authNum);			
			map.put("memberid", m.getMemberid());
			System.out.println((String)map.get("authNum") + (String)map.get("memberid"));
			ms.updateauthNum(map);
			mv.setViewName("member/successfindpwd");
		}else{
			mv.addObject("error_message", "일치하는 정보가 없습니다.");
			mv.setViewName("member/findpwd");
		}
		
		return mv;
	}
	
	public static String temporaryPassword(int size) {
		StringBuffer buffer = new StringBuffer();
		Random random = new Random();
				
		String chars[] = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,1,2,3,4,5,6,7,8,9".split(",");
				
		for (int i = 0; i < size; i++) {
		buffer.append(chars[random.nextInt(chars.length)]);
		}
		return buffer.toString();
		}

/*	@RequestMapping("updateenroll.do")
	public String updateenroll(Member m){
		int result = ms.updateenroll(m);
		return "mypage/mypage";
	}*/
	
	
	
	
	
}
