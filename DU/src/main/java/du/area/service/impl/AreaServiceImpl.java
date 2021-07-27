package du.area.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import du.area.dao.AreaDAO;
import du.area.domain.AreaVO;
import du.area.service.AreaService;

@Service
public class AreaServiceImpl implements AreaService{
	@Autowired
	private AreaDAO areaDAO;
	
	@Override
	public List<AreaVO> selectAreaList() {
		return areaDAO.selectAreaList();
	}

	@Override
	public void insertArea(AreaVO area) {
		areaDAO.insertArea(area);
	}

	@Override
	public void deleteArea(String areaCd) {
		areaDAO.deleteArea(areaCd);
	}

}