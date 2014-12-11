package org.yo.googleearth.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.yo.googleearth.vo.GoogleEarthVO;

public interface GoogleEarthMapper {

	@Select("select lat, lng, to_char(time,'yyyy-mm-dd hh24:mi:ss') time from tbl_history")
	public List<GoogleEarthVO> getTime();
}
