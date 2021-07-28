package du.user.service.impl;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import du.user.dao.UserDAO;
import du.user.domain.UserVO;
import du.user.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Override
	public Boolean selectPwd(String id, String password) {
		if (password.equals(userDAO.selectPwd(id))) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public UserVO selectUserInfo(String id) {
		return userDAO.selectUserInfo(id);
	}

	@Override
	public Boolean loginProcess(HttpServletRequest request, UserVO user) {

		if (selectPwd(user.getUserId(), user.getPwd())) {
			setSession(request, user);
			return true;
		}
		return false;
	}

	// 세션 설정
	public void setSession(HttpServletRequest request, UserVO user) {

		UserVO userInfo = selectUserInfo(user.getUserId());
		if (userInfo != null) {

			HttpSession httpSession = request.getSession(true);

			httpSession.setAttribute("USER", userInfo);
		}
	}

	@Override
	public void insertUser(UserVO user) {
		userDAO.insertUser(user);
	}

	@Override
	public void updateUser(UserVO user) {
		if (user.getPwd().isEmpty()) {
			user.setPwd(userDAO.selectPwd(user.getUserId()));
		}
		userDAO.updateUser(user);
	}

	@Override
	public void deleteUser(HttpSession session) {
		UserVO user = (UserVO) session.getAttribute("USER");
		userDAO.deleteUser(user.getUserId());

	}

	@Override
	public String findId(HttpServletResponse response, String email) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = userDAO.findId(email);

		if (id == null) {
			out.println("<script>");
			out.println("alert('가입된 아이디가 없습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return null;
		} else {
			return id;
		}
	}

//	// 이메일 발송
//		@Override
//		public void send_mail(UserVO user, String div) throws Exception {
//			// Mail Server 설정
//			String charSet = "utf-8";
//			String hostSMTP = "smtp.gmail.com"; //네이버 이용시 smtp.naver.com
//			String hostSMTPid = "haessae0";
//			String hostSMTPpwd = "!aa01071263642";
//
//			// 보내는 사람 EMail, 제목, 내용
//			String fromEmail = "haessae0@gmail.com";
//			String fromName = "보노 마켓 비밀번호 변경";
//			String subject = "asd";
//			String msg = "";
//
//			if(div.equals("findpw")) {
//				subject = "보노 마켓 임시 비밀번호 입니다.";
//				msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
//				msg += "<h3 style='color: blue;'>";
//				msg += user.getUserId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
//				msg += "<p>임시 비밀번호 : ";
//				msg += user.getPwd() + "</p></div>";
//			}
//
//			// 받는 사람 E-Mail 주소
//			String mail = user.getEmail();
//			try {
//				HtmlEmail email = new HtmlEmail();
//				email.setDebug(true);
//				email.setCharset(charSet);
//				email.setSSL(true);
//				email.setHostName(hostSMTP);
//				email.setSmtpPort(465); //네이버 이용시 587
//
//				email.setAuthentication(hostSMTPid, hostSMTPpwd);
//				email.setTLS(true);
//				email.addTo(mail, charSet);
//				email.setFrom(fromEmail, fromName, charSet);
//				email.setSubject(subject);
//				email.setHtmlMsg(msg);
//				email.send();
//			} catch (Exception e) {
//				System.out.println("메일발송 실패 : " + e);
//			}
//		}

	@Override
	public void findPw(HttpServletResponse response, UserVO user) throws Exception {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// 아이디가 없으면
		if (user.getUserId() != null) {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			user.setPwd(pw);
			// 비밀번호 변경
			userDAO.updatePw(user);
			// 비밀번호 변경 메일 발송
//				send_mail(user, "findPw");

			out.print(user.getPwd());
			out.close();
		}
	}

}