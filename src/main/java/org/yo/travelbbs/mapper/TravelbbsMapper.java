package org.yo.travelbbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.yo.travelbbs.vo.TravelbbsVO;

public interface TravelbbsMapper {

	@Select("select sysdate from dual")
	public String getTime();
	
	public List<TravelbbsVO> getList(Integer page);
	
	public void create(TravelbbsVO vo);
	
	public TravelbbsVO read(int no);
	
	@Update("update tbl_travelbbs set title=#{title}, content=#{content}, startdate=to_date(${startdate},'YY/MM/DD'), enddate=to_date(${enddate},'YY/MM/DD')"
			+ " , teammember=#{teammember}, cost=#{cost}, transport=#{transport}, memo=#{memo}, region=#{region}, userid=#{userid} where no = 91")
	public void update(TravelbbsVO vo);
	
	@Delete("delete from tbl_travelbbs where no=#{no}")
	public void delete(int no);
}
