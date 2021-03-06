package du.board.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;

import du.board.domain.BoardAttFileVO;
import du.board.domain.BoardVO;
import du.board.domain.ReplyVO;
import du.board.service.BoardService;
import du.board.service.ReplyService;
import du.common.DownloadView;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;

	@Autowired
	private ReplyService replyService;

	@RequestMapping("/boardListPage.do")
	public ModelAndView boardListPage(@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range,
			@RequestParam(required = false, defaultValue = "") String title) {
		ModelAndView mav = new ModelAndView("board/boardList.jsp");

//		int listCnt = boardService.selectBoardListCnt(title);
//
//		Pagination pagination = new Pagination();
//		pagination.pageInfo(page, range, listCnt);
//		mav.addObject("pagination", pagination);

		List<BoardVO> boardList = boardService.selectBoardList(title);
		mav.addObject("boardList", boardList);

		mav.addObject("title", title);

		return mav;
	}

	@RequestMapping("/boardAreaPage.do")
	public ModelAndView boardAreaPage(@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range, HttpSession session,
			@RequestParam(required = false, defaultValue = "") String title) {
		ModelAndView mav = new ModelAndView("board/boardList.jsp");

//		int listCnt = boardService.selectBoardAreaListCnt(session, title);
//
//		Pagination pagination = new Pagination();
//		pagination.pageInfo(page, range, listCnt);
//		mav.addObject("pagination", pagination);

		List<BoardVO> AreaList = boardService.selectBoardAreaList(session, title);
		mav.addObject("boardList", AreaList);

		mav.addObject("title", title);

		mav.addObject("url", "boardAreaPage.do");

		return mav;
	}

	@RequestMapping("/boardCountryPage.do")
	public ModelAndView boardCountryPage(@RequestParam(required = false, defaultValue = "") String title,
			@RequestParam String areacd) {
		ModelAndView mav = new ModelAndView("board/boardList.jsp");

		List<BoardVO> AreaList = boardService.selectBoardCountryList(title, areacd);
		mav.addObject("boardList", AreaList);

		mav.addObject("title", title);

		return mav;
	}

	@RequestMapping("/boardMyPage.do")
	public ModelAndView boardMyPage(@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range, HttpSession session,
			@RequestParam(required = false, defaultValue = "") String title) {
		ModelAndView mav = new ModelAndView("board/boardList.jsp");

//		int listCnt = boardService.selectBoardMyListCnt(session, title);
//
//		Pagination pagination = new Pagination();
//		pagination.pageInfo(page, range, listCnt);
//		mav.addObject("pagination", pagination);

		List<BoardVO> AreaList = boardService.selectBoardMyList(session, title);
		mav.addObject("boardList", AreaList);

		mav.addObject("title", title);

		return mav;
	}

	@RequestMapping("/boardTodayPage.do")
	public ModelAndView boardTodayPage(@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range,
			@RequestParam(required = false, defaultValue = "") String title) {
		ModelAndView mav = new ModelAndView("board/boardList.jsp");

//		int listCnt = boardService.selectBoardTodayListCnt(title);
//
//		Pagination pagination = new Pagination();
//		pagination.pageInfo(page, range, listCnt);
//		mav.addObject("pagination", pagination);

		List<BoardVO> AreaList = boardService.selectBoardTodayList(title);
		mav.addObject("boardList", AreaList);

		mav.addObject("title", title);

		return mav;
	}

	@RequestMapping("/boardWritePage.do")
	public String boardWritePage() {
		return "board/boardWrite.jsp";
	}

	@RequestMapping("/boardWrite.do")
	public String boardWrite(HttpSession session, @ModelAttribute BoardVO board) throws Exception {
		boardService.insertBoard(board, session);

		return "redirect:/boardListPage.do";
	}

	@RequestMapping("/boardInfoPage/{idx}.do")
	public ModelAndView boardInfoPage(@PathVariable("idx") long idx) {
		ModelAndView mav = new ModelAndView("board/boardInfo.jsp");

		BoardVO board = boardService.selectBoard(idx);
		mav.addObject("board", board);

		List<ReplyVO> replyList = replyService.selectReplyList(idx);
		mav.addObject("replyList", replyList);

		return mav;
	}

	@RequestMapping("/boardDelete.do")
	public String boardDelete(BoardVO boardVO) {
		boardService.deleteBoard(boardVO);

		return "redirect:/boardListPage.do";
	}

	@RequestMapping("/boardModifyPage.do")
	public ModelAndView boardModifyPage(long idx) {
		ModelAndView mav = new ModelAndView("board/boardModify.jsp");

		BoardVO board = boardService.selectBoard(idx);
		mav.addObject("board", board);

		return mav;
	}

	@RequestMapping(value = "/boardModify.do", method = RequestMethod.POST)
	public String boardModify(@ModelAttribute BoardVO board, HttpSession session) throws Exception {

		boardService.updateBoard(board, session);

		return String.format("redirect:/boardInfoPage/%d.do", board.getIdx());
		// return "redirect:/boardInfoPage/"+Long.toString(board.getIdx())+".do";
	}

	@RequestMapping(value = "/download/boardAttFile.do", method = RequestMethod.POST)
	public View downloadBoardAttFile(BoardAttFileVO criteria, Model model) throws Exception {
		BoardAttFileVO attFileVO = boardService.findBoardAttFile(criteria);
		File file = new File(attFileVO.getFullAttFilePath());

		model.addAttribute("downloadFile", file);
		model.addAttribute("downloadFilename", attFileVO.getOldFilename());

		return new DownloadView();
	}
}