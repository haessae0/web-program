package du.board.dao;

import java.util.HashMap;
import java.util.List;

import du.board.domain.BoardAttFileVO;
import du.board.domain.BoardVO;

public interface BoardDAO {

	public List<BoardVO> selectBoardList(String title);
	
	public int selectBoardListCnt(String title);
	
	public BoardVO selectBoard(long idx);
	
	public void insertBoard(BoardVO board);
	
	public void deleteBoard(long idx);
	
	public void updateBoard(BoardVO board);
	
	public void insertBoardAttFile(BoardAttFileVO attFileVO) throws Exception;
	
	public BoardAttFileVO selectBoardAttFile(BoardAttFileVO criteria);
	
	public void deleteBoardAttFile(BoardAttFileVO criteria);
	
	public List<BoardVO> selectBoardAreaList(HashMap<String, Object> map);
	
	public int selectBoardAreaListCnt(HashMap<String, Object> map);
	
}
