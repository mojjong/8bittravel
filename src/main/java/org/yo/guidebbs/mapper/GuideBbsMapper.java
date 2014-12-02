package org.yo.guidebbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.yo.guidebbs.vo.GuideBbsVO;

public interface GuideBbsMapper {

	@Select(" select sysdate from dual")
	public String getTime();
	
/*	@Select(" select no, userid, cost, pay, regdate from tbl_guidebbs ")*/
	public List<GuideBbsVO> glist( );
	
	@Insert("insert into tbl_guideregion (no,gpno,place, lng, lat,msg) "
			+ "values(seq_guideregion.nextval, #{gpno},#{place},#{lng},#{lat},#{msg})")
	public void placeAdd(GuideBbsVO vo);
	
}
