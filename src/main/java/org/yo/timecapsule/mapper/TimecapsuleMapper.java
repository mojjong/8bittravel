package org.yo.timecapsule.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.yo.timecapsule.vo.TimecapsuleVO;
import org.yo.web.util.TimecapsuleCriteria;

public interface TimecapsuleMapper {


	/*SELECT NO, ID, CONTENT, ISFILE, REGDATE, FILENAME, SUFFIX
	FROM TBL_TIMECAPSULE T, TBL_CAPSULEFILE F
	WHERE T.NO = F.TIMECAPSULENO AND T.GR_NO = 8
	ORDER BY T.NO DESC;)*/
	
	
	
	

	
/*	@Select("select no, id, content, isfile, regdate, filename, suffix from tbl_timecapsule t, tbl_capsulefile f where t.no = f.timecapsuleno and t.gr_no = 8 order by t.no desc")*/
	public List<TimecapsuleVO> list(TimecapsuleCriteria cri);

	
	//@Insert("insert into tbl_timecapsule (no, content, id) values(timecapsule_seq.nextval, #{content},#{id})")
	public void create(TimecapsuleVO vo);
	
	public void fileOneInsert(TimecapsuleVO vo);
	
	@Delete("delete from tbl_timecapsule where no=#{no} ")
	public void delete(TimecapsuleVO no);

}
