package org.yo.travelbbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.yo.travelbbs.vo.TravelbbsVO;

public interface TravelbbsMapper {

	@Select("select sysdate from dual")
	public String getTime();
	
	public List<TravelbbsVO> getList(int page);
	
}
