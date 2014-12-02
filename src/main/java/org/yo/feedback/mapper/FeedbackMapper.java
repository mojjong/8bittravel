package org.yo.feedback.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.yo.feedback.vo.FeedbackVO;


public interface FeedbackMapper {

	@Select(" select sysdate from dual")
	public String getTime();
	
//	@Select(" select rownum rn, no, userid, title, content, rating, regdate, guideid from tbl_feedback where no = 3")
	public List<FeedbackVO> list(int page);
	
	@Insert(" insert into tbl_feedback(no, title, content, rating, regdate) "
			+ "values (seq_feedback.nextval,#{title},#{content},#{rating},sysdate)" )
	public void create(FeedbackVO vo);


	@Select(" select no, title, content, rating, regdate, userid, guideid from tbl_feedback where no=#{no}")
	public FeedbackVO read(int no);
	
	@Update(" update tbl_feedback set title=#{title}, content=#{content} where no=#{no} ")
	public void update(FeedbackVO vo);

	@Delete(" delete from tbl_feedback where no=#{no} ")
	public void delete(int no);


}