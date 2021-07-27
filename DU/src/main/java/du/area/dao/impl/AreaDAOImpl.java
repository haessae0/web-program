package du.area.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import du.area.dao.AreaDAO;
import du.area.domain.AreaVO;
import egovframework.rte.psl.dataaccess.EgovAbstractMapper;

@Repository
public class AreaDAOImpl extends EgovAbstractMapper implements AreaDAO {

	@Override
	public List<AreaVO> selectAreaList() {
		return selectList("Area.selectAreaList");
	}

	@Override
	public void insertArea(AreaVO area) {
		insert("Area.insertArea", area);
		
	}

	@Override
	public void deleteArea(String areaCd) {
		delete("Area.deleteArea", areaCd);
	}

}