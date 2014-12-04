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
	
	//��� ����Ʈ �����ֱ�
	/*@Select(" select  place, msg from tbl_guideregion where gpno=#{gpno} order by no asc; ")*/
	public List<GuideBbsVO> glist(Integer gpno);
	
	@Select(" select no, guideid from tbl_guidebbs where travelno=#{travelno}")
	public List<GuideBbsVO> gulist(GuideBbsVO vo);
	
	//��� �߰��Ҷ����� insert
	@Insert(" insert into tbl_guideregion (no,gpno,place, lng, lat,msg) "
			+ "values(seq_guideregion.nextval, #{gpno},#{place},#{lng},#{lat},#{msg})")
	public void placeAdd(GuideBbsVO vo);
	
	//��� modify
	@Update(" update tbl_guideregion set place =#{place} ,msg= #{msg} where no=#{no}")
	public void placeModi(GuideBbsVO vo);
	
	//��� delete
	@Delete(" delete from tbl_guideregion where no=#{no}")
	public void placeDel(Integer no);
	
	//GuideBbs Insert
	@Insert(" insert into tbl_guidebbs (no, guideid, travelno, cost, pay, regdate) "
			+ "values (seq_guidebbs.nextval, #{guideid},#{travelno},#{cost},#{pay},sysdate)")
	public void guideBbsInsert( GuideBbsVO vo);
}
