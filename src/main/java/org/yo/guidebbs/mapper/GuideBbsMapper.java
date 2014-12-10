package org.yo.guidebbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.yo.guidebbs.vo.GuideBbsVO;
import org.yo.region.vo.R_photoVO;
import org.yo.region.vo.RegionVO;

public interface GuideBbsMapper {
	
	
	@Select(" select sysdate from dual")
	public String getTime();
	
	//가이드가 일차별로 보는 view
	/*@Select(" select no, place, msg from tbl_guideregion where gpno=#{gpno} order by no asc; ")*/
	public List<GuideBbsVO> glist(Integer gpno);
	
	//사용자가 글을 클릭했을때 보는 view
	@Select(" select no guideno, travelno, cost, pay, guideid from tbl_guidebbs where travelno=#{travelno}")
	public List<GuideBbsVO> gulist(GuideBbsVO vo);
	
	//가이드 region 리스트!!!
	public List<GuideBbsVO> grList(GuideBbsVO vo);
	
	//day별로 장소 보여주는 list
	public List<GuideBbsVO> daylist(GuideBbsVO vo);
	
	//Guidebbs 들어갔을때 그 장소에 대한 설명 ... 
	public GuideBbsVO guideplan(GuideBbsVO vo);
		
	//guide 지역 가져오기
	@Select("select do, sigun from tbl_region where no = #{rno}")
	public RegionVO region(GuideBbsVO vo);
	
	//guide 지역 사진 가져오기
	@Select("select dir, content from tbl_r_photo where rno = #{rno}")
	public R_photoVO r_photo(GuideBbsVO vo);
	
	//탭클릭시 plan 테이블 insert
	public void gplan(GuideBbsVO vo);
	
	
	//장소 insert
	@Insert(" insert into tbl_guideregion (no, gpno, place, lng, lat,msg) "
			+ "values(seq_guideregion.NEXTVAL, #{gpno},#{place},#{lng},#{lat},#{msg})")
	public void placeAdd(GuideBbsVO vo);
	
	//장소 modify
	@Update(" update tbl_guideregion set place =#{place} ,msg= #{msg} ,lat=#{lat}, lng=#{lng} where no=#{no}")
	public void placeModi(GuideBbsVO vo);
	
	//장소 delete
	@Delete(" delete from tbl_guideregion where no=#{grno}")
	public void placeDel(Integer grno);
	
	//GuideBbs Insert
	@Insert(" insert into tbl_guidebbs (no, guideid, travelno, cost, pay, regdate) "
			+ "values (seq_guidebbs.nextval, #{guideid},#{travelno},#{cost},#{pay},sysdate)")
	public void guideBbsInsert( GuideBbsVO vo);
	
	
	
	
}
