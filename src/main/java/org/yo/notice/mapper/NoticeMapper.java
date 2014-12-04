package org.yo.notice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.yo.notice.vo.Criteria;
import org.yo.notice.vo.NoticeVO;

public interface NoticeMapper {

	
	public List<NoticeVO> list(Criteria cri);

	@Insert(" insert into tbl_notice(no, title, content, regdate) "
			+ "values (seq_notice.nextval,#{title},#{content},sysdate)" )
	public void create(NoticeVO vo);


	@Select(" select no, title, content, regdate from tbl_notice where no=#{no}")
	public NoticeVO read(int no);
	
	@Update(" update tbl_notice set title=#{title}, content=#{content} where no=#{no} ")
	public void update(NoticeVO vo);

	@Delete(" delete from tbl_notice where no=#{no} ")
	public void delete(int no);
	
}
