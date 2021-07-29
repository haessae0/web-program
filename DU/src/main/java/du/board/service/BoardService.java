package du.board.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import du.board.domain.BoardAttFileVO;
import du.board.domain.BoardVO;

public interface BoardService {

	public List<BoardVO> selectBoardList(String title);

	public int selectBoardListCnt(String title);

	public BoardVO selectBoard(long idx);

	public void insertBoard(BoardVO board, HttpSession session) throws Exception;

	public void deleteBoard(BoardVO board);

	public void updateBoard(BoardVO board, HttpSession session) throws Exception;

	public BoardAttFileVO findBoardAttFile(BoardAttFileVO criteria);

	public void deleteBoardAttFile(BoardAttFileVO criteria) throws Exception;

	public List<BoardVO> selectBoardAreaList(HttpSession session, String title);

	public int selectBoardAreaListCnt(HttpSession session, String title);

	public List<BoardVO> selectBoardMyList( HttpSession session, String title);

	public int selectBoardMyListCnt(HttpSession session, String title);

	public List<BoardVO> selectBoardTodayList(String title);

	public int selectBoardTodayListCnt(String title);
	
	public List<BoardVO> selectBoardCountryList(String title, String areacd);

}