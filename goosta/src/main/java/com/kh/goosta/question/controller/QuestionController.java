package com.kh.goosta.question.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Properties;

import javax.annotation.Resource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.goosta.question.service.QuestionService;
import com.kh.goosta.question.vo.QuestionVo;

@Controller
public class QuestionController {
	@Resource(name="questionService")
	private QuestionService questionService;
	
	//1:1문의 화면 가기
	@RequestMapping("viewquestion.do")
	public String viewQuestion(){
		return "customer/qna/qnaWrite";
	}
	
	//1:1 문의 등록
	@RequestMapping("writeQna.do")
	public String writeQna(QuestionVo qna){
		System.out.println(qna);
		int result = questionService.writeQna(qna);
		return "redirect:viewCustomer.do";
	}
	
	//qna 관리자 화면
		@RequestMapping("qnaManager.do")
		public ModelAndView qnaManager(ModelAndView mv){
			List<QuestionVo> list = questionService.selectQnaList();
			mv.addObject("qnaList", list);
			mv.setViewName("customer/qna/qnaList");
			return mv;
		}
		
		//qna 리스트 정렬 방법
		@RequestMapping("qnaManagerType.do")
		public ModelAndView qnaManagerType(ModelAndView mv, String qnatype){
			System.out.println(qnatype);
			List<QuestionVo> list = questionService.qnaManagerType(qnatype);
			mv.addObject("qnaList", list);
			mv.setViewName("customer/qna/qnaList");
			return mv;
		}
		
			//qna 상세보기
			@RequestMapping("qnaDetail.do")
			public ModelAndView qnaDetail(ModelAndView mv, int questionno){
				QuestionVo qna = questionService.qnaDetail(questionno);
				mv.addObject("qna", qna);
				mv.setViewName("customer/qna/qnaDetail");
				return mv;
			}
			
			//qna 답변메일 보내기 창
			@RequestMapping("writeQnaEmail.do")
			public ModelAndView qnaDetail(ModelAndView mv, String questionemail, String memberid, int questionno){
				mv.addObject("questionemail", questionemail);
				mv.addObject("memberid", memberid);
				mv.addObject("questionno", questionno);
				mv.setViewName("customer/qna/sendQnaEmail");
				return mv;
			}
			
			//ajax 로 메일에 보낼값 받아오기
			@RequestMapping("sendQnaEmail.do")
			@ResponseBody
			public String sendQnaEmail(@RequestParam String email, @RequestParam String title, @RequestParam String content, @RequestParam int questionno){
				//메일 보내는 메소드 실행
				sendQnaEmail1(email, title, content, questionno);
				String result = " ";
				return result;
			}
			
			//메일 보내기
			private void sendQnaEmail1(String email, String title, String content, int questionno){
				String host = "smtp.gmail.com"; //smtp 서버
				String subject = title;
				String fromName = "Goosta 관리자";
				String from = "gattwe@gmail.com";
				String to1 = email;
				
				String sendcontent = content;
				
				
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
					
					//답변여부 상태 변경 
					int result = questionService.updateQnaStatus(questionno);
					
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (MessagingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			//나의 1:1 문의내역 조회
			@RequestMapping("viewMyQnaList.do")
			public ModelAndView viewMyQnaList(ModelAndView mv, String memberid){
				List<QuestionVo> list = questionService.viewMyQnaList(memberid);
				mv.addObject("qna", list);
				mv.setViewName("mypage/myQuestionList");
				return mv;
			}
}
