package org.yo.guidebbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.yo.guidebbs.vo.GuideBbsVO;

public interface GuideBbsMapper {
	
	
	@Select(" select sysdate from dual")
	public String getTime();
	
	//장소 리스트 보여주기
	/*@Select(" select  place, msg from tbl_guideregion where gpno=#{gpno} order by no asc; ")*/
	public List<GuideBbsVO> glist(Integer gpno);
	
	//장소 추가할때마다 insert
	@Insert(" insert into tbl_guideregion (no,gpno,place, lng, lat,msg) "
			+ "values(seq_guideregion.nextval, #{gpno},#{place},#{lng},#{lat},#{msg})")
	public void placeAdd(GuideBbsVO vo);
	
	//장소 modify
	@Update(" update tbl_guideregion set place =#{place} ,msg= #{msg} where no=#{no}")
	public void placeModi(GuideBbsVO vo);
	
	//장소 delete
	@Delete(" delete from tbl_guideregion where no=#{no}")
	public void placeDel(Integer no);
}
