package du.area.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import du.area.domain.AreaVO;
import du.area.service.AreaService;

@Controller
public class AreaController {
	@Autowired
	private AreaService areaService;
	
	@RequestMapping("/areaPage.do")
	public ModelAndView areaPage() {
		ModelAndView mav = new ModelAndView("area/areaList.jsp");
		List<AreaVO> area = areaService.selectAreaList();
		mav.addObject("area", area);
		return mav;
	}
	
	@RequestMapping("/areaInsertPage.do")
	public String areaInsertPage() {
		return "area/areaInsert.jsp";
	}
	
	@RequestMapping("/areaInsert.do")
	public String areaInsert(AreaVO area) {
		areaService.insertArea(area);
		return "redirect:/areaPage.do";
	}
	
	@RequestMapping("/deleteArea.do")
	public String deleteArea(String areaCd) {
		areaService.deleteArea(areaCd);
		return "redirect:/areaPage.do";
	}
}