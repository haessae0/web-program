package du.area.service;

import java.util.List;

import du.area.domain.AreaVO;

public interface AreaService {
	public List<AreaVO> selectAreaList();
	public void insertArea(AreaVO area);
	public void deleteArea(String areaCd);
}