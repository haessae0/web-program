package du.area.dao;

import java.util.List;

import du.area.domain.AreaVO;

public interface AreaDAO {
	public List<AreaVO> selectAreaList();
	public void insertArea(AreaVO area);
	public void deleteArea(String areaCd);
}