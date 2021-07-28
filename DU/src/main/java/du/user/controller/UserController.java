package du.user.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import du.area.domain.AreaVO;
import du.area.service.AreaService;
import du.user.domain.UserVO;
import du.user.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private AreaService areaService;
	
	@RequestMapping("/userInfoConfirmPage.do")
	public String userInfoConfirmPage() {
		return "user/userInfoConfirm.jsp";
	}
	
	@RequestMapping("/userInfoConfirm.do")
	public ModelAndView userInfoConfirm(UserVO user) {
		if(userService.selectPwd(user.getUserId(), user.getPwd())) {
			ModelAndView mav = new ModelAndView("user/userInfo.jsp");
			List<AreaVO> area = areaService.selectAreaList();
			mav.addObject("area", area);
			return mav;
		} else {
			ModelAndView mav = new ModelAndView("main.jsp");
			return mav;
		}
	}
	
	@RequestMapping("/signUpPage.do")
	public ModelAndView signUpPage() {
		ModelAndView mav = new ModelAndView("user/signUp.jsp");
		List<AreaVO> area = areaService.selectAreaList();
		mav.addObject("area", area);
		return mav;
	}
	
	@RequestMapping("/signUp.do")
	public String signUp(UserVO user) {
		userService.insertUser(user);
		return "redirect:/loginPage.do";
	}
	
	@RequestMapping("/userModify.do")
	public String userModify(UserVO user) {
		userService.updateUser(user);
		return "redirect:/logout.do";
	}
	
	@RequestMapping("/userDelete.do")
	public String userDelete(HttpSession session) {
//		userService.deleteUser(userId);
		userService.deleteUser(session);
		return "redirect:/loginPage.do";
	}
	
	@RequestMapping(value="/findId.do", method = RequestMethod.POST)
	public String finId(HttpServletResponse response, @RequestParam("email") String email, Model md) throws Exception{
		md.addAttribute("id", userService.findId(response, email));
		return "user/findId.jsp";
	}
	
	@RequestMapping(value = "/findPw.do", method = RequestMethod.POST)
	public void findPw(@ModelAttribute UserVO user, HttpServletResponse response) throws Exception{
		userService.findPw(response, user);
	}
	
}